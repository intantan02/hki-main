<?php
session_start();

if (!isset($_SESSION['user_id'])) {
    header('Location: ../Frontend/login.php?m=nfound');
    exit();
}

include 'koneksi.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Simpan data ke session
    $_SESSION['input_awal'] = [
        'judul' => $_POST['judul'] ?? '',
        'jenis_permohonan' => $_POST['jenis_permohonan'] ?? '',
        'jenis_ciptaan' => $_POST['jenis_ciptaan'] ?? '',
        'uraian_singkat' => $_POST['uraian_singkat'] ?? '',
        'tanggal_pertama_kali_diumumkan' => $_POST['tanggal_pertama_kali_diumumkan'] ?? '',
        'kota_pertama_kali_diumumkan' => $_POST['kota_pertama_kali_diumumkan'] ?? '',
        'jenis_pendanaan' => $_POST['jenis_hibah'] ?? '',
        'nama_pendanaan' => $_POST['nama_pendanaan'] ?? ''
    ];

    // Validasi input
    if (empty($_POST['judul']) || empty($_POST['jenis_ciptaan']) || empty($_POST['kota_pertama_kali_diumumkan'])) {
        header('Location: ../frontend/inputawal.php?m=empty');
        exit();
    }

    // Simpan ke database
    $sql = "INSERT INTO detail_permohonan (jenis_permohonan, jenis_ciptaan, judul, uraian_singkat, tanggal_pertama_kali_diumumkan, kota_pertama_kali_diumumkan, jenis_pendanaan, jenis_hibah)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssssss",
        $_POST['jenis_permohonan'],
        $_POST['jenis_ciptaan'],
        $_POST['judul'],
        $_POST['uraian_singkat'],
        $_POST['tanggal_pertama_kali_diumumkan'],
        $_POST['kota_pertama_kali_diumumkan'],
        $_POST['jenis_hibah'],
        $_POST['nama_pendanaan']
    );

    if ($stmt->execute()) {
        // Redirect ke halaman input selanjutnya
        header('Location: ../frontend/input.php');
        exit();
    } else {
        die("Error: " . $conn->error);
    }
} else {
    // Jika bukan POST, tetap bawa data session
    header('Location: ../frontend/inputawal.php');
    exit();
}
?>
