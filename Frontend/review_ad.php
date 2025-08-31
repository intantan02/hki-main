<?php
include '../Backend/session_check.php';
checkRole('admin');
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar Permohonan</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="container my-4 mb-10">

    <div class="bg-light pt-3 pb-2 mb-2" style="z-index: 1020;">
        <div class="container justify-content">
        <h3 class="text-center mb-4">DAFTAR PERMOHONAN</h3>
        <input id="searchInput" class="form-control mb-3" placeholder="Cari Judul..." type="text"/>
    </div>
</div>


    <div class="table-responsive" style="max-height: 50vh;">
        <table class="table table-bordered table-striped table-hover align-middle mb-0">
            <thead class="table-light">
                <tr>
                    <th>Judul</th>
                    <th>Contoh Karya</th>
                    <th>KTP</th>
                    <th>SP</th>
                    <th>SPH</th>
                    <th>Bukti Pembayaran</th>
                    <th>Proses Status</th>
                    <th>Status</th>
                    <th>Sertifikat</th>
                </tr>
            </thead>
            <tbody id="permohonanTable">
                <!-- Data akan dimuat oleh JavaScript -->
            </tbody>
        </table>
    </div>

    <!-- Pagination -->
    <nav>
        <ul class="pagination justify-content-center mt-4" id="pagination"></ul>
    </nav>

    <div class="text-center mt-4">
        <a href="login.php" class="btn btn-success">SEBELUMNYA</a>
    </div>
</div>
    <script src="../js/review_ad.js"></script>
</body>
</html>