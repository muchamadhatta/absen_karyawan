# Aplikasi Absensi Karyawan

Aplikasi absensi karyawan adalah sebuah sistem yang digunakan untuk mencatat dan mengelola data absensi karyawan di suatu perusahaan. Aplikasi ini bisa diakses secara online, sehingga karyawan dapat melakukan absensi secara remote atau dari manapun yang mereka inginkan. Aplikasi ini juga menyediakan fitur-fitur seperti pengajuan cuti, pengajuan izin, dan laporan absensi yang dapat digunakan oleh HRD dan manajemen perusahaan. Dengan menggunakan aplikasi absensi karyawan, perusahaan dapat mengelola data absensi dengan lebih efisien dan mengurangi terjadinya kesalahan dalam pencatatan absensi.

## Tech Stack

**Language:** PHP Version: 8.0.25

**Framework:** Codeigniter

**Desain:** Bootstraps

**Database:** Mysql

**Web Server:** Xampp

**Server version:** 10.4.27-MariaDB

## Installation

Clone Absensi Karyawan

```bash
 https://github.com/muchamadhatta/absen_karyawan.git
```

Create Database

```bash
CREATE DATABASE absen_karyawanDB;
```

Create Table

```bash
CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL,
  `id_user` int(11) NOT NULL
)

CREATE TABLE `divisi` (
  `id_divisi` smallint(3) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL
)

CREATE TABLE `jam` (
  `id_jam` tinyint(1) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL
)

CREATE TABLE `users` (
  `id_user` smallint(5) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(20) DEFAULT 'no-foto.png',
  `divisi` smallint(5) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` enum('Manager','Karyawan') NOT NULL DEFAULT 'Karyawan'
)
```

running Absensi Karyawan and have fun

## Authors

- [@muchamadhatta](https://www.github.com/muchamadhatta)
