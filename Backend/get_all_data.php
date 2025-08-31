<?php
session_start();
ini_set('display_errors', '1');
error_reporting(E_ALL);
header('Content-Type: application/json; charset=utf-8');

// capture accidental output
ob_start();

if (!isset($_SESSION['user_id'])) {
    ob_end_clean();
    http_response_code(401);
    echo json_encode(['error' => 'Unauthorized']);
    exit();
}

require_once __DIR__ . '/koneksi.php';

// discard include output
$maybe_output = ob_get_clean();
if (!empty($maybe_output)) {
    error_log("get_all_data extra output: " . substr($maybe_output, 0, 2000));
}

if (!isset($conn) || !$conn) {
    http_response_code(500);
    $err = isset($conn) ? 'Invalid $conn' : 'DB connection failed';
    error_log("get_all_data DB error: " . $err);
    echo json_encode(['error' => $err]);
    exit();
}

/**
 * Handle admin status update (POST action=update_status)
 */
if ($_SERVER['REQUEST_METHOD'] === 'POST' && (isset($_POST['action']) && $_POST['action'] === 'update_status')) {
    if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'admin') {
        http_response_code(403);
        echo json_encode(['success' => false, 'message' => 'Forbidden']);
        exit();
    }

    $id = isset($_POST['id']) ? (int)$_POST['id'] : 0; // detail_permohonan.id
    $status = isset($_POST['status']) ? trim($_POST['status']) : '';

    if ($id <= 0 || $status === '') {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Invalid parameters']);
        exit();
    }

    // whitelist allowed statuses
    $allowed = ['Diajukan','Revisi','Terdaftar','Ditolak'];
    if (!in_array($status, $allowed, true)) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Invalid status value']);
        exit();
    }

    $upd = $conn->prepare("UPDATE detail_permohonan SET status = ? WHERE id = ?");
    if ($upd === false) {
        http_response_code(500);
        echo json_encode(['success' => false, 'message' => 'DB prepare failed (update)']);
        exit();
    }
    $upd->bind_param('si', $status, $id);
    if (!$upd->execute()) {
        $err = $upd->error;
        $upd->close();
        http_response_code(500);
        echo json_encode(['success' => false, 'message' => 'DB execute failed', 'detail' => $err]);
        exit();
    }
    $affected = $upd->affected_rows;
    $upd->close();

    echo json_encode(['success' => true, 'message' => 'Status updated', 'affected' => $affected, 'status' => $status]);
    exit();
}

/**
 * Read / list data (GET)
 */
try {
    $page = max(1, (int)($_GET['page'] ?? 1));
    $perPage = max(1, (int)($_GET['per_page'] ?? 25));
    $search = trim($_GET['search'] ?? '');

    // base where and params
    $where = '1=1';
    $params = [];
    $types = '';

    if ($search !== '') {
        // use uploads then users join and proper aliases (no stray alias 'r')
        $where .= ' AND (d.judul LIKE ? OR d.uraian_singkat LIKE ? OR EXISTS(
            SELECT 1 FROM uploads up JOIN users u ON up.user_id = u.id
            WHERE up.dataid = d.dataid AND u.username LIKE ?
        ))';
        $like = '%' . $search . '%';
        $params[] = $like;
        $params[] = $like;
        $params[] = $like;
        $types .= 'sss';
    }

    // count total
    $countSql = "SELECT COUNT(*) AS cnt FROM detail_permohonan d WHERE $where";
    $stmt = $conn->prepare($countSql);
    if ($stmt === false) {
        throw new Exception('Prepare failed (count): ' . $conn->error);
    }
    if ($types !== '') {
        $stmt->bind_param($types, ...$params);
    }
    if (!$stmt->execute()) {
        throw new Exception('Execute failed (count): ' . $stmt->error);
    }
    $res = $stmt->get_result();
    $totalRows = ($r = $res->fetch_assoc()) ? (int)$r['cnt'] : 0;
    $stmt->close();

    $totalPages = (int)ceil($totalRows / $perPage);
    $offset = ($page - 1) * $perPage;

    // main select: read status from detail_permohonan (as requested)
    $sql = "
    SELECT
      d.id,
      d.dataid,
      d.jenis_permohonan,
      d.jenis_ciptaan,
      d.sub_jenis_ciptaan,
      d.judul,
      d.uraian_singkat,
      d.tanggal_pertama_kali_diumumkan,
      d.negara_pertama_kali_diumumkan,
      d.jenis_pendanaan,
      d.jenis_hibah,
      d.status,
      d.created_at,
      (SELECT u.file_contoh_karya FROM uploads u WHERE u.dataid = d.dataid ORDER BY u.id DESC LIMIT 1) AS file_contoh_karya,
      (SELECT u.file_ktp FROM uploads u WHERE u.dataid = d.dataid ORDER BY u.id DESC LIMIT 1) AS file_ktp,
      (SELECT u.file_sp FROM uploads u WHERE u.dataid = d.dataid ORDER BY u.id DESC LIMIT 1) AS file_sp,
      (SELECT u.file_sph FROM uploads u WHERE u.dataid = d.dataid ORDER BY u.id DESC LIMIT 1) AS file_sph,
      (SELECT u.file_bukti_pembayaran FROM uploads u WHERE u.dataid = d.dataid ORDER BY u.id DESC LIMIT 1) AS file_bukti_pembayaran
    FROM detail_permohonan d
    WHERE $where
    ORDER BY d.id DESC
    LIMIT ? OFFSET ?
    ";

    $stmt = $conn->prepare($sql);
    if ($stmt === false) {
        throw new Exception('Prepare failed (select): ' . $conn->error);
    }

    // bind params: either (types + ii) or just ii
    if ($types === '') {
        $stmt->bind_param('ii', $perPage, $offset);
    } else {
        // merge types and params with limit/offset
        $bindTypes = $types . 'ii';
        $bindParams = $params;
        $bindParams[] = $perPage;
        $bindParams[] = $offset;
        $stmt->bind_param($bindTypes, ...$bindParams);
    }

    if (!$stmt->execute()) {
        throw new Exception('Execute failed (select): ' . $stmt->error);
    }

    $result = $stmt->get_result();
    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = [
            'id' => isset($row['id']) ? (int)$row['id'] : null,
            'dataid' => $row['dataid'] ?? null,
            'jenis_permohonan' => $row['jenis_permohonan'] ?? null,
            'jenis_ciptaan' => $row['jenis_ciptaan'] ?? null,
            'sub_jenis_ciptaan' => $row['sub_jenis_ciptaan'] ?? null,
            'judul' => $row['judul'] ?? null,
            'uraian_singkat' => $row['uraian_singkat'] ?? null,
            'tanggal_pertama_kali_diumumkan' => $row['tanggal_pertama_kali_diumumkan'] ?? null,
            'negara_pertama_kali_diumumkan' => $row['negara_pertama_kali_diumumkan'] ?? null,
            'jenis_pendanaan' => $row['jenis_pendanaan'] ?? null,
            'jenis_hibah' => $row['jenis_hibah'] ?? null,
            'status' => $row['status'] ?? 'Diajukan',
            'file_contoh_karya' => $row['file_contoh_karya'] ?? null,
            'file_ktp' => $row['file_ktp'] ?? null,
            'file_sp' => $row['file_sp'] ?? null,
            'file_sph' => $row['file_sph'] ?? null,
            'file_bukti_pembayaran' => $row['file_bukti_pembayaran'] ?? null,
            'created_at' => $row['created_at'] ?? null
        ];
    }
    $stmt->close();
    $conn->close();

    echo json_encode([
        'data' => $data,
        'currentPage' => $page,
        'totalPages' => $totalPages,
        'totalRows' => $totalRows
    ], JSON_UNESCAPED_UNICODE);
    exit();

} catch (Exception $e) {
    error_log('get_all_data exception: ' . $e->getMessage());
    http_response_code(500);
    echo json_encode(['error' => 'Server error', 'detail' => $e->getMessage()]);
    exit();
}
?>