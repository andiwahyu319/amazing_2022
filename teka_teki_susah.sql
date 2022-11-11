-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 12:24 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teka_teki_susah`
--

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `jawab_id` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL,
  `soal_id` int(11) NOT NULL,
  `jawab` varchar(20) NOT NULL,
  `cek` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`jawab_id`, `waktu`, `user_id`, `soal_id`, `jawab`, `cek`) VALUES
(10, '2022-03-14 19:37:33', 1, 77, 'sambal', 0),
(11, '2022-03-14 19:37:47', 1, 15, 'takut', 1),
(12, '2022-03-14 19:39:29', 1, 46, 'kekirim', 1),
(13, '2022-03-14 19:39:45', 1, 86, 'batuk', 1),
(14, '2022-03-14 19:40:24', 1, 99, 'minggat', 1),
(15, '2022-03-14 19:40:46', 1, 53, 'tidur', 1),
(16, '2022-03-14 19:43:47', 1, 80, 'emosi', 0),
(17, '2022-03-14 19:44:33', 1, 74, 'mampu', 1),
(18, '2022-03-14 19:45:42', 1, 44, 'pemainya', 1),
(19, '2022-03-14 19:46:24', 1, 92, 'bedabeda', 0),
(20, '2022-03-14 19:47:37', 1, 64, 'keluarga', 1),
(21, '2022-03-14 19:49:42', 1, 91, 'pemilik', 1),
(22, '2022-03-14 19:50:44', 1, 34, 'bukangue', 1),
(23, '2022-03-14 19:51:39', 1, 87, 'sendiri', 1),
(24, '2022-03-14 19:53:45', 1, 57, 'komodo', 1),
(25, '2022-03-14 19:54:09', 1, 87, 'sendiri', 1),
(26, '2022-03-14 19:56:12', 1, 75, 'merem', 0),
(27, '2022-03-14 19:56:55', 1, 59, 'ringan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tts_soal`
--

CREATE TABLE `tts_soal` (
  `soal_id` int(11) NOT NULL,
  `soal` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `input` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `jawaban` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `alasan` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tts_soal`
--

INSERT INTO `tts_soal` (`soal_id`, `soal`, `input`, `jawaban`, `alasan`) VALUES
(1, 'Menjadi komandan upacara 17-an, komandan upacara harus siap', '_ E _ _ _', 'serak', 'Harus siap serak, kan teriak-teriak'),
(2, 'Saat 17-an, selain lomba balap karung, masyarakat mengisinya dengan kegiatan panjat', '_ _ N _ _ _', 'kandoa', 'Sebelum kita mengikuti lomba 17-an, biasanya kita panjatKAN DOA supaya menang lombanya'),
(3, 'Dalam pertandingan bulu tangkis, nama tim indonesia sering disingkat', 'I _ _', 'iya', 'Nama Indonesia memang sering disingkat, iya kan?'),
(4, 'Saat perbaikan jalan, pengendara motor terjatuh karena', 'G _ L _ A _', 'galiat', 'Coba bayangin pengendara motor ga bisa liat jalan, pasti bisa jatuh'),
(5, 'Jalan bebas hambatan', 'T _ _', 'top', 'Jalan tol aja masih suka banyak hambatan, kalau ada jalan yang bener-bener bebas hambatan, itu baru top!'),
(6, 'Ekspresi ketika terkejut', 'A _ _ _ _ _ _', 'aduuuuh', 'Biasanya orang kalau terkejut itu bilang \'aduuuh\', kalau \'aduh\' aja itu tandanya kesakitan'),
(7, 'Yang menyebabkan orang haus saat ramadhan', '_ U _ _ _', 'cuaca', 'Wah apalagi kalau cuacanya terik banget, bikin haus'),
(8, 'Untuk menyalakan lampu, kita harus pencet...', 'S _ K _ _ _', 'sekali', 'Kalau dari posisi mati terus kita pencet dua kali saklarnya ya pasti mati lagi lampunya'),
(9, 'Tempat dimana kita bisa melihat es ditengahnya', 'K _ _ U _', 'kasur', 'Maksud es itu kalau dibaca jadi huruf \'s\', nah kita bisa melihat huruf \'s\' di tengah kata \'kasur\''),
(10, 'Burung adalah hewan yang bisa...', 'T E _ _ _ _ _', 'temenan', 'Burung adalah hewan yang juga bisa temenan dengan hewan lain'),
(11, 'Hewan yang suka membuka mulutnya lebar-lebar dan mandi di lumpur, hewan itu biasanya...', 'K _ _ A _ _', 'kenaflu', 'Tau ngga kenapa hewan itu membuka mulut lebar-lebar? Dia lagi kena flu, hidungnya mampet makanya buka mulut'),
(12, 'Kecoa, rayap, semut, lebah, kumbang, disebut...', '_ E _ _ _ _ _ A', 'bedabeda', 'Tadi kan disebutnya beda-beda, kalau disebutnya sama ya jadinya kecoa, kecoa, kecoa'),
(13, 'Supaya tampil maksimal, seorang penyanyi harus cek...', 'S _ _ _ _ ', 'saldo', 'Sebelum tampil biasanya penyanyi cek saldo dulu, apakah dp atau bayarannya sudah masuk atau belum, supaya tampil maksimal dong'),
(14, 'Selalu hadir di saat susah dan senang', '_ _ _ _ B _ T', 'lohebat', 'Lo termasuk teman yang hebat kalau selalu hadir saat susah maupun senang, lo hebat bro!'),
(15, 'Lawannya gemuk', '_ _ _ U _', 'takut', 'Ih, takut kalau lawannya gemuk'),
(16, 'Harimau mati meninggal kan', 'S _ _ _ _ _', 'setuju', 'Harimau mati meninggal kan? Setuju! Harimau yang mati pasti meninggal'),
(17, 'Koran disebut surat', '_ A _ _ _', 'salah', 'Masa koran disebut surat, salah dong'),
(18, 'Memasak tempe terlalu lama', 'G _ _ _ _ G', 'garing', 'Kalau gosong belum tentu, tapi kalau garing udah pasti'),
(19, 'Tembok besar yang dulu memisahkan negara Jerman, pasti tembok', '_ E _ I _ _', 'kering', 'Temboknya kan udah ada dari dulu ya pasti udah kering beton atau semennya, kalau masih basah bisa runtuh tuh temboknya'),
(20, 'Yang ditarik sebelum kapal laut berangkat', '_ A _ _ _ A _', 'bayaran', 'Sebelum berangkat biasanya penumpang itu ditarik bayaran dulu supaya bisa naik kapal laut, istilahnya ongkos'),
(21, 'Hewan buas yang suka melolong dan muncul di saat bulan purnama, pasti...', '_ _ R _ _ _ _ _', 'durmerem', 'Hewan apapun kalau pas tiDUR MEREM, kalau masih melek mungkin lagi begadang'),
(22, 'Yang biasa megang gitar di Sheila on 7', '_ R _ _', 'crew', 'Sebelum manggung yang megangin gitarnya itu crew, biasanya bantuin cek sound, nah Eros nanti tinggal mainin gitarnya aja'),
(23, 'Mamat dimarahi ibu guru, karena kemarin ... sekolah', 'B _ _ O _', 'bobol', 'Kalau bobol sekolah itu perbuatan yang keterlaluan makanya dimarahi ibu guru'),
(24, 'Sisi x sisi untuk menghitung luas...', 'K _ _ _ _', 'kosan', 'Selain untuk menghitung luas kotak, sisi x sisi juga bisa untuk menghitung luas kosan'),
(25, 'Orang yang mengatur lalu lintas', '_ O _ _ _ _', 'soktau', 'Kan di pertanyaan bukan polisi yang ngatur lalu lintas, tapi orang biasa, ya dia sok tau ngatur-ngatur lalu lintas'),
(26, 'Pedagang kaki lima bubar karena ada...', '_ A _ _ _', 'macan', 'Pedagang yang berjualan, pasti bubar kalau ada macan lepas'),
(27, 'Sebelum jadi katak, anak katak disebut', '_ E _ _ _ _', 'remaja', 'Nah proses sebelum menjadi dewasa yaitu menjadi katak, anak katak harus melalui masa-masa remaja dulu kan'),
(28, 'Vokalis yang manggung bersama band Wali namanya', '_ A _ _ _', 'ganti', 'Nama asli vokalisnya kan Farhan Zainal, tetapi kalau di band Wali namanya jadi Faank, nah itu artinya namanya ganti'),
(29, 'Hewan yang suka menyedot darah kita, pasti', '_ I _ _ A _', 'tiarap', 'Kamu pernah lihat lintah pas lagi nyedot darah kita posisinya berdiri? Lintah itu nyedotnya sambil tiarap'),
(30, 'Setelah berolahraga kita mengeluarkan', '_ _ R _ _ _ _ _', 'airminum', 'Setelah olahraga biasanya keringetan, nah untuk mengganti cairan tubuh kita butuh air minum'),
(31, 'Yang tersedia di rumah makan padang', '_ _ _ _ H _ _', 'recehan', 'Di rumah makan padang juga disediakan recehan untuk kembalian'),
(32, 'Kita bisa melihat bintang di...', '_ _ N _ _ _', 'pundak', 'Seragam kepolisian atau militer yang memiliki pangkat, pasti di pundaknya ada bintang'),
(33, 'Yang menangkap penjahat seorang diri di malam hari', '_ A _ _ _ _', 'bangga', 'Bangga dong, bisa menangkap penjahat seorang diri tengah malam'),
(34, 'Yang pertama kali menemukan benua Amerika', '_ _ _ _ _ _ U _', 'bukangue', 'Bukan gue tau yang pertama kali menemukan benua amerika, cari aja di buku'),
(35, 'Salah satu contoh hewan yang jalannya lambat', '_ _ _ _ _ _ _ A', 'serigala', 'Serigala kalau lagi jalan ya pelan-pelan, kalau lari baru cepet'),
(36, 'Bisa sedih, bisa riang, bisa marah, bisa sabar, dll', '_ _ R _ _ _ _ _', 'surahman', 'Orang yang namanya surahman itu bisa sedih, riang, marah, dan sabar kan, namanya juga manusia'),
(37, 'Tidak punya uang sepeserpun', 'K _ _ _', 'kera', 'Kera memang punya uang? Mau disimpan dimana coba'),
(38, 'Negara timur tengah yang mempunyai piramida, dan beribukota di Kairo sampai sekarang', '_ _ _ I _', 'masih', 'Sampai sekarang kan ibu kotanya masih di Kairo, masih belum ganti'),
(39, 'Dalam acara off air, Tulus sering menyanyikan lagu...', '_ _ J _ _', 'sejam', 'Biasanya tulus kalau menggelar konser, durasinya satu jam'),
(40, 'Sebelum bisa dibaca, surat harus di...', 'K _ _ _ _', 'kupas', 'Amplop surat itu harus dikupas dulu, supaya kita bisa baca isinya'),
(41, 'Untuk mengendarai mobil, kita harus membawa...', 'S _ _ _', 'stir', 'Kalau stir mobil ngga dibawa, gimana kita mau mengendarai mobil'),
(42, 'Yang dibacakan oleh hakim di akhir sidang perkara pasti', '_ U _ _ _ _ _', 'sudahok', 'Yang namanya di akhir persidangan berarti semuanya sudah ok, kalau belum ok berarti belum akhir persidangan'),
(43, 'Kota terbesar yang ada di Sumatera', '_ _ _ A _', 'lebar', 'Namanya juga kota terbesar pasti lebar, kalau sempit itu kota yang kecil'),
(44, 'Olahraga basket membutuhkan bola dan...', '_ _ _ A _ _ _ _', 'pemainya', 'Ini jelas sekali, yang namanya main basket harus ada pemainnya dulu masa bolanya main sendiri'),
(45, 'Yang sering dilakukan seorang pembalap di Sentul', '_ A _ _ _ _ N', 'manasin', 'Sebelum balapan biasanya pembalap manasin motornya dulu kan'),
(46, 'Kita terima gaji setelah...', '_ E _ _ _ _ _', 'kekirim', 'Kan sudah terima gaji, berarti sudah kekirim dari kantornya'),
(47, 'Halaman kosong bisa dijadikan tempat...', '_ A _ _ _ _', 'gambar', 'Maksud halaman disini adalah halaman buku, kalau ada yang kosong bisa dijadikan tempat gambar'),
(48, 'Valentino Rossi adalah nama pembalap yang berasal dari', 'I _ _ _ _ A', 'ibunya', 'Valentino Rossi bisa jadi pembalap karena dilahirkan dari ibunya'),
(49, 'Susah bangun karena sedang', 'S _ _ _ T', 'split', 'Dari posisi split itu susah banget untuk bangun, cobain aja'),
(50, 'Yang menyanyikan lagu gajah', '_ U _ _ _', 'sulit', 'gajah disuruh nyanyi pasti sulit banget'),
(51, 'Yang tulisannya susah dibaca', '_ _ _ T _ _', 'xkztrk', 'Coba \'xkztrk\' dibaca jadi apa? Susah kan'),
(52, 'Biasanya ada di restoran sunda, pake toge, pake kacang panjang, pake bumbu kacang, plus kerupuk, itu namanya...', '_ _ _ E _ _ _', 'memesan', 'Harus memesan dong, memangnya yang jualan itu peramal? Mikir!'),
(53, 'Iko Uwais dan Yayan Ruhiyan adalah aktor yang bisa', '_ I _ _ _', 'tidur', 'Iko Uwais dan Yayan Ruhiyan juga butuh tidur kali!'),
(54, 'Orang yang mengerjakan skripsi di kampus, untuk mendapatkan gelar sarjana namanya', 'M A _ _ _ _ _ _ _', 'maudatang', 'Kalau ngga mau datang ke kampus nanti ngga akan lulus, dan ngga bakal dapat gelar sarjana'),
(55, 'Supaya lebih cepat sampai di tujuan, orang biasanya memilih alternatif lewat jalan...', '_ _ _ U _', 'terus', 'Karena kalau ngga jalan terus ngga ketemu-ketemu jalan alternatif yang dicari'),
(56, 'Surfing dan Skateboard merupakan olahraga yang memerlukan...', '_ _ _ A _', 'modal', 'Kalau ngga ada modal gimana beli papannya?'),
(57, 'Kita merasa terganggu kalau di hidung ada...', 'K _ _ _ D _', 'komodo', 'Bayangin aja kalau ada komodo di hidung kamu!'),
(58, 'Bagian dari kelengkapan mobil', '_ _ _', 'mob', 'Kalau ngga ada \'mob\' ngga jadi \'mobil\', jadinya \'il\' doang'),
(59, 'Minuman yang kita masukkan ke kulkas, pasti...', '_ I _ _ _ N', 'ringan', 'Yang kita masukkan ke dalam kulkas pasti minuman yang ringan, memangnya seberat apa minuman yang dimasukkan ke dalam kulkas?'),
(60, 'Selain twitter, facebook, dan path, orang update status lewat...', '_ _ _ _ _ _ _ A _', 'kelurahan', 'Update status juga bisa di kelurahan lho, misalnya kalau bikin ktp atau merubah status dari lajang menjadi menikah'),
(61, 'Semut bahasa inggrisnya', 'A _ _', 'ada', 'Ada kan bahasa inggrisnya semut? Kalau ngga percaya coba aja buka kamus'),
(62, 'Halaman menjadi lebih indah kalau dikasih...', '_ U _ _ _', 'rumah', 'Ya percuma dong kalau halaman ngga ada rumahnya, itu disebutnya lahan kosong bukan halaman'),
(63, 'Hewan kalau belum makan, biasanya', '_ A _ _ _', 'galau', 'Perhatiin deh kalau hewan belum makan pasti suka galau nyari makan kemana-mana'),
(64, 'Anda tahu katak, anaknya disebut', '_ E _ _ _ _ _ _', 'keluarga', 'Namanya juga anak katak, itu termasuk keluarga dari katak'),
(65, 'Dalam pertandingan sepakbola, yang jaga gawang pasti', '_ I _ _ _', 'lihat', 'Kalau yang jaga gawang ngga lihat, bisa kebobolan'),
(66, 'Bila anak pulang larut malam, orang tua pasti...', '_ _ _ W _ _ _ _', 'tauwaktu', 'Orang tua jelas tau waktu, kan anaknya pulang pas larut malam'),
(67, 'Hewan yang memakan rumput, biasa dipotong dan dijadikan sate', 'K _ _ _ _ _ _', 'kasihan', 'Coba kamu bayangin hewan itu! Dipotong-potong, terus dijadiin sate, apa kamu ngga kasihan sama dia'),
(68, 'Orang menimba air di...', '_ U _ _ _', 'tuang', 'Setelah menimba air dari sumur itu biasanya dituang ke ember, masa dituang lagi ke sumur'),
(69, 'Orang yang memberikan kartu di lapangan hijau, pasti...', '_ _ _ I _', 'milih', 'Kan ada kartu merah dan kuning, wasit harus milih saat memberikan kartunya, kalau ngga nanti wasitnya bisa malu dong karena salah kasih kartu'),
(70, 'Tugas pokok pak satpam adalah menjaga...', '_ _ _ _ _ _ A _', 'semangat', 'Seorang satpam harus menjaga semangat karena tugasnya berat harus menjaga keamanan lingkungan'),
(71, 'Saat pergi ke Papua, kita mengunjungi tempat wisata yang terkenal, namanya...', '_ _ _ _ _ _ _ A _', 'berangkat', 'Namanya juga kita mengunjungi berarti kita berangkat, kalau belum berangkat berarti baru rencana'),
(72, 'Mobil kita tidak bisa dikendarai, karena habis...', '_ E _ _ _ _', 'kejual', 'Kalau mobil udah kejual ya ngga bisa kita kendarai, kan udah milik orang lain'),
(73, 'Bunglon adalah hewan yang suka mengubah-ubah warnanya, selain itu, dia juga disebut hewan...', '_ I _ _ _ _ _', 'bimbang', 'Bunglon suka bimbang mengubah-ubah warnanya, kadang hijau, kadang biru, kadang balik hijau lagi'),
(74, 'Di restoran, biasanya kita makan pakai sendok dan...', '_ _ _ _ U', 'mampu', 'Loe mampu gak bayar di restoran'),
(75, 'Orang yang tidur, kedua matanya harus...', '_ E _ _ _', 'dekat', 'Kalau berjauhan kedua matanya mana bisa tidur, yang ada matanya malah kebuka terus, jadi mata bagian atas dan bawah harus dekat supaya bisa nutup'),
(76, 'Kambing yang ditusuk-tusuk dan siap dibakar, jadi...', '_ A _ _', 'lari', 'Hewan itu pasti lari dong, dia kan ngga mau kalau dijadiin sate'),
(77, 'Rasanya pedas', 'S _ _ _ _ _', 'sshahh', 'Kalau kamu makan makanan pedas rasanya gimana? Pasti keluar bunyi \'sshahh\''),
(78, 'Sepasang kekasih yang sedang kasmaran di sebuah kafe terlihat...', 'M _ _ _ _', 'mesen', 'Sepasang kekasih itu di sebuah kafe terlihat sedang mesen makanan, kalau ngga mesen makanan nanti bisa diusir'),
(79, 'Alat transportasi di bawah laut adalah kapal...', '_ _ _ A _', 'tnial', 'Nah kapal yang ada di bawah laut atau kapal selam yang ada di perairan Indonesia itu pasti kapal TNI AL, kalau bukan pasti udah diincar sama TNI AL'),
(80, 'Orang bisa marah, karena...', 'E _ _ _ _', 'exztw', 'Kamu pasti marah kan kalau jawabannya \'extzw\', Padahal dari tadi kamu pasti susah jawabnya'),
(81, 'Selain motor, truk, bus, di jalan raya juga ada...', '_ _ _ I _', 'iiiii', 'Kalau kamu jeli, kamu pasti lihat kalau di jalan raya itu ada marka jalan yang garisnya putus-putus'),
(82, 'Yang dikeluarkan bebek', '_ _ L _ _', 'sulap', 'Kan yang dikeluarkannya itu adalah bebek, biasanya ada di dalam adegan sulap'),
(83, 'Anak-anak biasanya tidak mau makan...', 'S _ _ _ _ _ _', 'sebakul', 'Anak-anak dikasih makan 1 porsi aja udah susah dibujuknya, apalagi dikasih makan sebakul pasti ngga mau'),
(84, 'Berwarna dan nempel di kuku seorang wanita', '_ U _ _ _', 'kulit', 'Coba lihat di jari masing-masing, kulit nempel di kuku ngga? Kulit berwarna ngga? Mikir!'),
(85, 'Saat ban motor kita bocor di perjalanan harus di...', 'T _ _ _ _ _', 'tunggu', 'Mau ban bocor atau bensin habis, ya motornya harus ditunggu dong, kalau ditinggal nanti bisa hilang'),
(86, 'Penjara bisa heboh kalau semua napinya...', '_ _ _ U _', 'batuk', 'Penjara bisa heboh tuh kalau semua napi lagi batuk, apalagi kalau isi penjaranya ratusan'),
(87, 'Mahasiswa yang ingin meraih gelar sarjana harus menyelesaikan...', 'S _ _ _ _ _ _', 'sendiri', 'Masa kamu pas lagi sidang diwakilin, ngga bisa dong, harus diselesaikan sendiri'),
(88, 'Yang memadamkan api saat kebakaran pasti...', '_ E _ _ _ _ _', 'berisik', '\'kebakaran!\', \'Air... Air...\', \'Awas api!\', Pasti berisik kalau petugas lagi memadamkan api, ngga mungkin diem-dieman ntar malah ngga bisa komunikasi'),
(89, 'Kita bisa dengar suara motor lewat...', 'K _ _ _ _ _ _', 'kampung', 'Kalau ada motor lewat kita bisa dengar kan? Itu motor lagi lewat kampung rumah kita'),
(90, 'Banyak sampah dan barang bekas di sungai, bisa menyebabkan..', '_ _ _ _ I _', 'sempit', 'Sungai sebesar apapun kalau banyak sampah bakalan bikin sempit sungainya'),
(91, 'Orang yang mengambil barang diam-diam dan tanpa izin, berarti', '_ E _ _ _ _ _', 'pemilik', 'Kan pemilik barangnya, ya ngga apa-apa dong kalau ngambilnya diam-diam dan ngga minta izin'),
(92, 'Medan, padang, aceh, jambi, adalah nama-nama kota yang ada di...', '_ _ _ A _ _ _ _', 'pulaunya', 'Kota medan, padang, aceh, jambi itu kan nama kotanya ada di pulaunya, ngga mungkin ada di pulau yang lain'),
(93, 'Saat bikin kopi atau teh, supaya lebih enak, harus ada...', '_ U _ _', 'dulu', 'Kalau ngga ada kopi atau tehnya dulu gimana mau dibikin? Apalagi diminum, makanya harus ada dulu'),
(94, 'Lagu yang sempat trend, dan dipopulerkan oleh Luis Fonsi dan Daddy Yankee, dan berbahasa bahasa Spanyol', '_ _ _ _ A _ I _ _', 'laguasing', 'Jelas banget dari soal kalau lagi ini berbahasa Spanyol, otomatis lagu ini tuh lagu asing'),
(95, 'Gajah bisa menyemprotkan air karena punya...', '_ E _ _ _ A _', 'kemauan', 'Gajah nyemprotin air itu atas kemaunnya sendiri, ngga nyemprot gitu aja'),
(96, 'Yang ada di kendaraan, yang jumlahnya lebih dari dua', '_ A _', 'aaa', 'Yang ada di kata \'kendaraan\' dan jumlahnya lebih dari dua berarti \'aaa\', coba dihitung huruf yang lebih dari dua apa!'),
(97, 'Jalan diatas sungai untuk menghubungkan sisi sungai yang satu menuju sisi sungai lainnya, disebut', '_ E M _ _ _ _ _', 'sembrono', 'dah tau ngga ada jembatan tapi jalan di atas sungai, sembrono tuh'),
(98, 'Kura-kura adalah hewan yang memiliki...', 'T _ M _ _ _ _ _ _', 'temencewe', 'Kura-kura juga memiliki temen cewe, kan kura-kura ngga cowo semua, kalau cowo semua kasian pada jomblo nanti'),
(99, 'Lari jarak jauh disebut...', 'M _ _ _ _ _ _', 'minggat', 'Kalau larinya deket itu paling lagi ke warung, tapi kalau jauh hati-hati itu lagi minggat'),
(100, 'Orang batuk, dilarang minum...', '_ _ N _ _', 'bensin', 'Wah sangat tidak disarankan kalau lagi batuk minum bensin, bukan batuk aja yang makin parah tapi nyawa juga terancam, makanya dilarang'),
(101, 'Seorang matador, bisa terluka karena diseruduk...', 'B _ _ _ _ _ _', 'biskota', 'Sekuat-kuatnya matador kalau diseruduk bis kota ya bisa terluka juga, bukan sama banteng doang'),
(102, 'Valentino Rossi, Marquez, Pedrosa, biasanya salaman setelah...', '_ A _ _ _ _ N', 'kawinan', 'Mereka salaman tuh kalau acara kawinan udah beres, biasanya ngasih selamat'),
(103, 'Makanan yang hambar, biasanya kita beri...', '_ A _ A _', 'saran', 'Kasih saran dong supaya besok-besok kalau bikin makanan lagi rasanya ngga hambar'),
(104, 'Kota yang ada di Sumatera', 'M _ _ _ _', 'misah', 'Di sumatera kan kotanya banyak dan misah-misah juga');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `liga` varchar(10) NOT NULL DEFAULT 'Pemula',
  `score` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nickname`, `password`, `liga`, `score`) VALUES
(1, 'nuciferaz319', 'afgtkgs', 'Pro', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`jawab_id`),
  ADD KEY `penjawab` (`user_id`),
  ADD KEY `soalnya` (`soal_id`);

--
-- Indexes for table `tts_soal`
--
ALTER TABLE `tts_soal`
  ADD PRIMARY KEY (`soal_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `jawab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tts_soal`
--
ALTER TABLE `tts_soal`
  MODIFY `soal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawaban_ibfk_2` FOREIGN KEY (`soal_id`) REFERENCES `tts_soal` (`soal_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
