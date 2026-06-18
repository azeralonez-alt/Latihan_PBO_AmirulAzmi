<?php
// Include semua file koneksi dan class yang dibutuhkan
require_once 'koneksi/database.php';
require_once 'PendaftaranReguler.php';
require_once 'PendaftaranPrestasi.php';
require_once 'PendaftaranKedinasan.php';

// Inisialisasi koneksi database
$database = new Database();
$db = $database->getConnection();

// 1. Ambil data secara dinamis menggunakan Metode Query Spesifik (Tahap 4)
$daftarReguler = PendaftaranReguler::getDaftarReguler($db);
$daftarPrestasi = PendaftaranPrestasi::getDaftarPrestasi($db);
$daftarKedinasan = PendaftaranKedinasan::getDaftarKedinasan($db);
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PMB PNC - Penerimaan Mahasiswa Baru</title>
    <style>
        /* Desain UI Berdasarkan Referensi Gambar & Request Warna Anda */
        :root {
            --primary-blue: #61B0DF;
            --neutral-gray: #C5C4BF;
            --accent-orange: #EF9C10;
            --dark-text: #2c3e50;
            --light-bg: #f8f9fa;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: var(--light-bg);
            color: var(--dark-text);
        }

        /* Top Bar & Header Ala Web PNC */
        .top-info-bar {
            background-color: var(--primary-blue);
            color: white;
            font-size: 13px;
            padding: 8px 5%;
            display: flex;
            justify-content: space-between;
        }

        header {
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            padding: 15px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .logo-area {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .logo-placeholder {
            background-color: var(--primary-blue);
            color: white;
            font-weight: bold;
            padding: 8px 12px;
            border-radius: 5px;
            font-size: 18px;
        }

        .brand-name {
            font-size: 20px;
            font-weight: 800;
            color: var(--dark-text);
        }

        .brand-name span {
            color: var(--primary-blue);
        }

        /* Hero Section */
        .hero-container {
            background-color: white;
            padding: 40px 5%;
            border-bottom: 2px solid var(--neutral-gray);
            margin-bottom: 30px;
        }

        .hero-title {
            font-size: 32px;
            font-weight: 700;
            line-height: 1.2;
            margin-bottom: 10px;
        }

        .hero-title span {
            color: var(--primary-blue);
            display: block;
        }

        /* Main Content & Tables Styling */
        .main-content {
            padding: 0 5% 50px 5%;
        }

        .section-category {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            padding: 25px;
            margin-bottom: 35px;
            border-left: 5px solid var(--accent-orange);
        }

        .section-title {
            font-size: 20px;
            font-weight: 700;
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .badge-count {
            background-color: var(--primary-blue);
            color: white;
            font-size: 14px;
            padding: 4px 10px;
            border-radius: 20px;
        }

        .table-responsive {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
            font-size: 15px;
        }

        th {
            background-color: var(--primary-blue);
            color: white;
            padding: 12px 15px;
            font-weight: 600;
        }

        td {
            padding: 12px 15px;
            border-bottom: 1px solid #e9ecef;
        }

        tr:hover {
            background-color: #f1f7fa;
        }

        .info-unik {
            font-size: 13px;
            color: #555;
            background-color: #f0f4f8;
            padding: 5px 10px;
            border-radius: 4px;
            display: inline-block;
        }

        .total-biaya {
            color: var(--accent-orange);
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="top-info-bar">
        <div>📧 pmb@pnc.ac.id | 📞 (0282) 533329</div>
        <div>📍 Jl. Dr. Soetomo No.1, Sidakaya, Cilacap</div>
    </div>

    <header>
        <div class="logo-area">
            <div class="logo-placeholder">PMB</div>
            <div class="brand-name">PNC <span>Sistem PBO</span></div>
        </div>
    </header>

    <div class="hero-container">
        <h1 class="hero-title">
            Dashboard Data Kontrol
            <span>Pendaftaran Jalur Seleksi</span>
        </h1>
        <p style="color: #666;">Data rekapitulasi pengelompokan pendaftar mahasiswa baru menggunakan visualisasi Objek Polimorfisme PHP.</p>
    </div>

    <div class="main-content">

        <div class="section-category">
            <div class="section-title">
                <span>📋 Data Pendaftar Jalur Reguler</span>
                <span class="badge-count"><?= count($daftarReguler); ?> Calon Mahasiswa</span>
            </div>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nama Calon</th>
                            <th>Asal Sekolah</th>
                            <th>Nilai Ujian</th>
                            <th>Biaya Dasar</th>
                            <th>Info Spesifik Jalur (Polimorfik)</th>
                            <th>Total Akhir Biaya</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($daftarReguler as $row): 
                            // 2. Instansiasi Objek untuk mengaktifkan Metode Polimorfik (Tahap 5)
                            // Catatan: Sesuaikan nama array key di bawah ini dengan nama kolom di tabel database Anda
                            $mhsReguler = new PendaftaranReguler(
                                $row['id_pendaftaran'],
                                $row['nama_calon'],
                                $row['asal_sekolah'],
                                $row['nilai_ujian'],
                                $row['biaya_pendaftaran_dasar'],
                                $row['pilihan_prodi'],
                                $row['lokasi_kampus']
                            );
                        ?>
                        <tr>
                            <td><?= $row['id_pendaftaran']; ?></td>
                            <td><strong><?= $row['nama_calon']; ?></strong></td>
                            <td><?= $row['asal_sekolah']; ?></td>
                            <td><?= $row['nilai_ujian']; ?></td>
                            <td>Rp <?= number_format($row['biaya_pendaftaran_dasar'], 0, ',', '.'); ?></td>
                            <td><span class="info-unik"><?= $mhsReguler->tampilkanInfoJalur(); ?></span></td>
                            <td><span class="total-biaya">Rp <?= number_format($mhsReguler->hitungTotalBiaya(), 0, ',', '.'); ?></span></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="section-category">
            <div class="section-title">
                <span>🏆 Data Pendaftar Jalur Prestasi</span>
                <span class="badge-count"><?= count($daftarPrestasi); ?> Calon Mahasiswa</span>
            </div>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nama Calon</th>
                            <th>Asal Sekolah</th>
                            <th>Nilai Ujian</th>
                            <th>Biaya Dasar (Potongan)</th>
                            <th>Info Spesifik Jalur (Polimorfik)</th>
                            <th>Total Akhir Biaya</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($daftarPrestasi as $row): 
                            // Instansiasi Objek Jalur Prestasi
                            $mhsPrestasi = new PendaftaranPrestasi(
                                $row['id_pendaftaran'],
                                $row['nama_calon'],
                                $row['asal_sekolah'],
                                $row['nilai_ujian'],
                                $row['biaya_pendaftaran_dasar'],
                                $row['jenis_prestasi'],
                                $row['tingkat_prestasi']
                            );
                        ?>
                        <tr>
                            <td><?= $row['id_pendaftaran']; ?></td>
                            <td><strong><?= $row['nama_calon']; ?></strong></td>
                            <td><?= $row['asal_sekolah']; ?></td>
                            <td><?= $row['nilai_ujian']; ?></td>
                            <td>Rp <?= number_format($row['biaya_pendaftaran_dasar'], 0, ',', '.'); ?> (<span style="color: green;">-50k</span>)</td>
                            <td><span class="info-unik"><?= $mhsPrestasi->tampilkanInfoJalur(); ?></span></td>
                            <td><span class="total-biaya">Rp <?= number_format($mhsPrestasi->hitungTotalBiaya(), 0, ',', '.'); ?></span></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="section-category" style="margin-bottom: 0;">
            <div class="section-title">
                <span>🏢 Data Pendaftar Jalur Kedinasan</span>
                <span class="badge-count"><?= count($daftarKedinasan); ?> Calon Mahasiswa</span>
            </div>
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nama Calon</th>
                            <th>Asal Sekolah</th>
                            <th>Nilai Ujian</th>
                            <th>Biaya Dasar (+Surcharge)</th>
                            <th>Info Spesifik Jalur (Polimorfik)</th>
                            <th>Total Akhir Biaya</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($daftarKedinasan as $row): 
                            // Instansiasi Objek Jalur Kedinasan
                            $mhsKedinasan = new PendaftaranKedinasan(
                                $row['id_pendaftaran'],
                                $row['nama_calon'],
                                $row['asal_sekolah'],
                                $row['nilai_ujian'],
                                $row['biaya_pendaftaran_dasar'],
                                $row['sk_ikatan_dinas'],
                                $row['instansi_sponsor']
                            );
                        ?>
                        <tr>
                            <td><?= $row['id_pendaftaran']; ?></td>
                            <td><strong><?= $row['nama_calon']; ?></strong></td>
                            <td><?= $row['asal_sekolah']; ?></td>
                            <td><?= $row['nilai_ujian']; ?></td>
                            <td>Rp <?= number_format($row['biaya_pendaftaran_dasar'], 0, ',', '.'); ?> (<span style="color: red;">+25%</span>)</td>
                            <td><span class="info-unik"><?= $mhsKedinasan->tampilkanInfoJalur(); ?></span></td>
                            <td><span class="total-biaya">Rp <?= number_format($mhsKedinasan->hitungTotalBiaya(), 0, ',', '.'); ?></span></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</body>
</html>