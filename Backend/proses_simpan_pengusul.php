<?php
session_start();

// Validasi login
if (!isset($_SESSION['user_id'])) {
    header('Location: ../Frontend/login.php?m=nfound');
    exit();
}

// Koneksi database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hki";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Ambil data dari session
$data_pengusul = $_SESSION['data_pengusul'] ?? [];
$dataid = $_GET['dataid'] ?? ''; // Ambil dataid dari URL

foreach ($data_pengusul as $pengusul) {
    $id_pengusul = $pengusul['id'] ?? ''; // ID unik per pengusul
    $nama = $pengusul['nama'] ?? '';
    $alamat = $pengusul['alamat'] ?? '';
    $kode_pos = $pengusul['kode_pos'] ?? '';
    $nomor_telepon = $pengusul['nomor_telepon'] ?? '';
    $email = $pengusul['email'] ?? '';
    $fakultas = $pengusul['fakultas'] ?? '';
    $role = $pengusul['role'] ?? '';

    if (empty($dataid) || empty($id_pengusul) || empty($nama) || empty($alamat) || empty($kode_pos) || empty($nomor_telepon) || empty($email) || empty($fakultas) || empty($role)) {
        continue;
    }

    if ($role === 'Dosen') {
        $sql = "INSERT INTO data_pribadi_dosen (dataid, nama, alamat, kode_pos, nomor_telepon, email, fakultas, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    } else {
        $sql = "INSERT INTO data_pribadi_mahasiswa (dataid, nama, alamat, kode_pos, nomor_telepon, email, fakultas, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    }

    $stmt = $conn->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("sssssssi", $dataid, $nama, $alamat, $kode_pos, $nomor_telepon, $email, $fakultas, $_SESSION['user_id']);
        $stmt->execute();
        $stmt->close();
    }
}

// Hapus data dari session setelah disimpan
unset($_SESSION['data_pengusul']);

header('Location: ../Frontend/input.php?dataid=' . urlencode($dataid) . '&success=Data berhasil disimpan ke database');
exit();
?>
