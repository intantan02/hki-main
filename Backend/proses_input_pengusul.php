<?php
session_start();

// Validasi login
if (!isset($_SESSION['user_id'])) {
    header('Location: ../Frontend/login.php?m=nfound');
    exit();
}

// Simpan data pengusul ke session
$_SESSION['data_pengusul'] = $_SESSION['data_pengusul'] ?? [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $dataid = $_POST['dataid'] ?? '';
    $role = $_POST['role'] ?? '';
    $nama = $_POST['nama'] ?? '';
    $alamat = $_POST['alamat'] ?? '';
    $kode_pos = $_POST['kode_pos'] ?? '';
    $nomor_telepon = $_POST['nomor_telepon'] ?? '';
    $email = $_POST['email'] ?? '';
    $fakultas = $_POST['fakultas'] ?? '';

    // Validasi input
    if (empty($dataid) || empty($role) || empty($nama) || empty($alamat) || empty($kode_pos) || empty($nomor_telepon) || empty($email) || empty($fakultas)) {
        header('Location: ../Frontend/input.php?dataid=' . urlencode($dataid) . '&error=Data tidak lengkap');
        exit();
    }

    // Simpan data ke session
    $_SESSION['data_pengusul'][] = [
        'id' => uniqid(),
        'dataid' => $dataid,
        'role' => $role,
        'nama' => $nama,
        'alamat' => $alamat,
        'kode_pos' => $kode_pos,
        'nomor_telepon' => $nomor_telepon,
        'email' => $email,
        'fakultas' => $fakultas
    ];

    // Redirect kembali ke halaman input
    header('Location: ../Frontend/input.php?dataid=' . urlencode($dataid));
    exit();
}
?>
