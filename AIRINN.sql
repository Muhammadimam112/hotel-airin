-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2022 pada 15.42
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `jenis`, `deskripsi`, `gambar`) VALUES
(1, 'Kolam Renang', 'Bar kolam renang dengan penataan unik untuk melewatkan hari dengan secangkir teh atau kopi atau segelas koktail. Memiliki pemandangan laut dan kolam renang yang fantasitis', 'kolam renang.jpg'),
(2, 'Restoran', 'Dengan pemandangan kolam renang dan laut yang indah, Atlantis menyajikan sarapan, makan siang, makan malam dan cemilan lezat menggunakan bahan paling segar untuk pengalaman bersantap yang paling orisinil dan menyenangkan.', 'restoran.jpg'),
(3, 'Gym', 'Bagi anda yang suka berolahraga, Kami manajemen Hotel Mercure juga Menyediakan fasilitas olahraga dan gym, sehingga client juga bisa berolahraga di hotel tanpa harus capek pergi keluar sekedar mencari tempat GYM, dan juga berolahraga di GYM hotel mercure juga sangat menyenangkan karena sambil berolahraga juga bisa sambil menikmati sunset di Penghujung senja.', 'gym.jpg'),
(4, 'Ruang Temu Bisnis', 'Menyediakan Ruang temu yang sangat mewah, dan bisa di desain juga, ruang ini berguna sebagai tampat mengadakan acara rapat bisnis yang di lakukan oleh pengusaha - pengusaha besar, dan sebagai acara lainnya juga. sehingga tidak rugi deh bagi para pebisnis atau pengusaha melakukan rapat penting mereka di Hotel Mercure.', 'rtemu.jpg'),
(5, 'Spa', 'Hotel imperial Menyediakan fasilitas SPA bagi para perempuan yang ingin tampil lebih cantik dan memanjakan diri mereka, selain itu petugas SPA juga sangat ramah serta produk yang pakai di SPA Hotel imperial edi bawah perlindungan dokter kecantikan, jadi di jamin aman untuk kulit client.', 'spa1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `No_Kamar` int(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `No_Kamar`, `gambar`, `kategori`) VALUES
(1, 1, 'img_1.jpg', ''),
(2, 2, 'img_2.jpg', ''),
(3, 3, 'img_3.jpg', ''),
(4, 4, 'img_4.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri2`
--

CREATE TABLE `galeri2` (
  `id_galeri2` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri2`
--

INSERT INTO `galeri2` (`id_galeri2`, `nama`, `gambar`) VALUES
(1, 'Gambar 1', 'balrom1.jpg'),
(2, 'Gambar 2', 'b1.jpg'),
(3, 'Gambar 3', 'kmr.jpeg'),
(4, 'Gambar 4', 'kmr1.jpg'),
(5, 'Gambar 5', 'kmr2.jpg'),
(6, 'Gambar 6', 'kmr3.jpg'),
(7, 'Gambar 7', 'balrom3.jpg'),
(8, 'Gambar 8', 'bar.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `No_Kamar` char(15) NOT NULL,
  `id_galeri` int(50) NOT NULL,
  `Jenis` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Tarif` double DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`No_Kamar`, `id_galeri`, `Jenis`, `Type`, `Tarif`, `deskripsi`) VALUES
('001', 1, 'Super Presidents', 'Single', 1500000, 'Biasanya, kamar tipe ini dibanderol dengan harga yang relatif murah. Fasilitas yang ditawarkan pun standar seperti kasur ukuran king size atau dua queen size. Namun, penawaran yang diberikan tergantung pada masing-masing hotel. Standard room hotel bintang 1 dan bintang 5 tentu berbeda\r\n'),
('002', 2, 'VIP', 'Single', 2500000, 'Perbedaannya dapat berupa dari fasilitas yang diberikan, interior kamar, atau pemandangan dari kamar.'),
('003', 3, 'Super VIP', 'Single', 1000000, 'Dari namanya saja, sudah bisa ditebak bahwa tipe kamar hotel ini memiliki dua tempat tidur ukuran single yang terpisah.\r\n\r\nTipe kamar hotel ini cocok digunakan untuk suami istri atau menginap bersama teman dengan jumlah orang 2-3 orang.'),
('004', 4, 'Deluxe VIP', 'Single', 3000000, 'Tipe kamar hotel ini biasanya memiliki ukuran kasur yang besar seperti king size. Double room ini cocok banget buat pasangan suami istri yang ingin berbulan madu.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL,
  `id_pelanggan` int(50) NOT NULL,
  `jumlah_transfer` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_konfirmasi`, `id_pelanggan`, `jumlah_transfer`, `bank`, `gambar`, `status`) VALUES
(6, 1, 2500000, 'BRI', '462846-blonde-Charlotte_anime-Kurobane_Yusa-748x472.jpg', 'Y'),
(7, 1, 3000000, 'BNI', 'cute-anime-wallpaper-high-definition-For-desktop-Wallpaper.jpg', 'Y'),
(8, 1, 3000000, 'MANDIRI', '0f562609e78d953de0fc403c5b185342.jpg', 'Y'),
(9, 2, 2000000, 'MANDIRI', '44e2716a97aa6f4072859756717015e8.jpg', 'Y'),
(10, 7, 3000000, 'bri', 'gambar2.jpeg', 'T'),
(11, 8, 300000, 'mandiri', 'gambar2.jpeg', 'T');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `No Id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`No Id`, `nama`, `username`, `password`, `no_hp`, `jk`, `alamat`, `email`) VALUES
(1, 'afri yulianti', 'afri', 'afri', '082389132606', 'wanita', 'jkhhjghvghb', 'shellyasali@gmail.com'),
(2, 'Ridho Agustin', 'ridho', '12345', '08221702170', 'pria', 'Padang', 'shellyasali@gmail.com'),
(3, 'IMAM', 'imam', '12345', '089264748', 'pria', 'jsqjsisjiqdjxqidjqi', 'muhamadimam5@gmail.com'),
(4, 'deri', 'deri', 'deri1', '12322133', 'pria', '', 'derigilang@gmail.com'),
(5, 'deri', 'deri', '12345', '322344', 'pria', 't4tgg', 'etegggdse'),
(6, 'deri', 'deri', '12345', '322344', 'pria', 't4tgg', 'etegggdse'),
(7, 'deri gilang ', 'deri', '123', '083144034127', 'pria', 'kjdasjeffcbejhiwdubjhwe', 'deri@gmail.com'),
(8, 'radit', 'radit', '12345', '0895647523', 'pria', 'cimahi', 'radit@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saran`
--

INSERT INTO `saran` (`id_saran`, `gambar`, `nama`, `email`, `phone`, `pesan`) VALUES
(1, 'saran.png', 'shelly Asali', 'shelly@gmail.com', '082389132270', 'Selamat Pagi, Hotel yang yang sangat menarik'),
(2, 'saran.png', 'Yonaldo', 'yonaldo@gmail.com', '082389132456', 'Pelayanan Yang luar biasa dari para Satff hotel.'),
(3, 'saran.png', 'Rido Ilham', 'ridoilham@gmail.com', '082389132567', 'Menyuguhkan pemandangan yang sangat luar biasa dan bisa melihat sunset dengan jelas'),
(4, 'saran.png', 'Adly Prasetia Utama', 'adlyprasetyauta@gmail.com', '082389136789', 'Tingkatkan pelayanan agar lebih bagus lagi'),
(5, 'saran.png', 'Afri Yulianti', 'afriyulianti@gmail.com', '082389132606', 'pelayanan yang sangat bagus!!!'),
(11, 'saran.png', 'deri', 'derigilang@gmail.com', '3233242', 'dscdcccdwccccc'),
(12, 'saran.png', 'deri', 'deri@gmil.com', '083144034127', 'kamarnya ada tikus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi1` varchar(50) NOT NULL,
  `deskripsi2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `gambar`, `deskripsi1`, `deskripsi2`) VALUES
(1, 'bg1.jpg', ' Airinn Hotel', 'Kualitas Tinggi'),
(2, 'bg.JPG', 'Hotel Yang Sangat Dapat Percaya', 'Ayo Daftar'),
(3, 'bg.JPG', 'Hotel Modern ', 'Segera Gabung!!!!!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `nama` varchar(25) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id_staff`, `gambar`, `nama`, `deskripsi`) VALUES
(1, 'staff.jpg', 'Feri Supriana', 'Menjabat sebagai Financial Controller, Berperanan langsung terhadap urusan keuangan dan persiapan analisa operasional perusahaan, termasuk laporan keuangan dan interim terjadwal.\r\n\r\n\r\n'),
(2, 'staff.jpg', 'Arthur Suhendra', 'Menjabat Direktur Hotel imperial'),
(3, 'staff.jpg', 'Yohanes Soni Haliman', 'staff husus Bagian IT Hotel imperial'),
(4, 'staff.jpg', 'Siti Nurhaliza', 'menjabat sebagai Resepsionis\r\n'),
(5, 'staff.jpg', 'Celine Saputri', 'kepala chef Hotel imperial'),
(6, 'staff.jpg', 'Josephine Nayla Veronica', 'Menjabat Sebagai manajer dapur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `id_pelanggan` char(15) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Alamat` char(15) DEFAULT NULL,
  `Asal` varchar(100) DEFAULT NULL,
  `NoTlp` char(15) DEFAULT NULL,
  `jk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`id_pelanggan`, `Nama`, `Alamat`, `Asal`, `NoTlp`, `jk`) VALUES
('002', 'Shelly Asali', 'Jakarta pusat', 'Jakarta', '082389132607', 'perempuan'),
('003', 'Yonaldo', 'bukittinggi', 'Jakarta', '082389132608', 'Laki Laki'),
('004', 'Rido', 'padang', 'Solok', '082389132609', 'Laki Laki'),
('005', 'ihsan', 'jakarta', 'jakarta', '08665732561', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `No_Faktur` varchar(50) NOT NULL,
  `No_Kamar` char(15) NOT NULL,
  `id_pelanggan` varchar(11) NOT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `lama_menginap` int(11) NOT NULL,
  `Tarif` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Telpon` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`No_Faktur`, `No_Kamar`, `id_pelanggan`, `tgl_masuk`, `tgl_keluar`, `lama_menginap`, `Tarif`, `Nama`, `Telpon`, `Email`, `pesan`) VALUES
('5cdd13d92b4a7', '004', '1', '2019-05-17', '2019-05-18', 1, '100000', 'afri yulianti', '098765476', 'css@gmail.com', 'saya booking dulu!!'),
('5cdd1ce0d68cc', '003', '2', '2019-05-16', '2019-05-20', 4, '100000', 'Ridho Agustin', '082378667534', 'vendry7@gmail.com', 'ok'),
('5cdfa5079e0dd', '002', '1', '2019-05-19', '2019-05-20', 1, '200000', 'afri yulianti', '082389132606', 'shellyasali@gmail.com', 'nnnn'),
('5ce373aa0109d', '003', '1', '2019-05-22', '2019-05-23', 1, '100000', 'afri yulianti', '082389132606', 'shellyasali@gmail.com', 'boking!!'),
('5ce507d042687', '003', '2', '2019-05-23', '2019-05-24', 1, '100000', 'Ridho Agustin', '08221702170', 'shellyasali@gmail.com', 'boking!!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'muhammad imam', 'imam', 'imam123', 'pimpinan'),
(2, 'deri gilang kusumah', 'deri', 'deri12345', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `No_Kamar` (`No_Kamar`);

--
-- Indeks untuk tabel `galeri2`
--
ALTER TABLE `galeri2`
  ADD PRIMARY KEY (`id_galeri2`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`No_Kamar`),
  ADD KEY `id_galeri` (`id_galeri`),
  ADD KEY `id_galeri_2` (`id_galeri`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`No Id`);

--
-- Indeks untuk tabel `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`No_Faktur`),
  ADD KEY `No_Kamar` (`No_Kamar`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `galeri2`
--
ALTER TABLE `galeri2`
  MODIFY `id_galeri2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `No Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
