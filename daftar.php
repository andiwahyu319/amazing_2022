<?php
session_start();
if (isset($_SESSION["user"])) {
	header("Location: user.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Daftar - TTS</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="bg-info">
	<nav class="navbar navbar-primary bg-primary shadow p-3">
		<div class="container-fluid">
			<span class="navbar-brand mx-auto h1 fw-bold">Teka Teki Susah</span>
		</div>
	</nav>
	<div class="container mt-5">
		<div class=" row g-4 mx-auto">
			<div class="col-5">
				<div class="card shadow p-3 bg-body rounded">
					<a href="index.php" class="btn-close"></a>
					<div class="card-body">
						<h3 class="card-title text-center">Daftar</h3>
						<form action="daftar.php" method="POST">
							<div class="mb-3">
								<label for="username" class="form-label">Username</label>
								<input type="text" class="form-control" id="username" name="username" maxlength="20" oninput="ncek(value)">
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label>
								<input type="password" class="form-control" id="password" name="password" maxlength="20" oninput="cek(value)">
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Ulangi Password</label>
								<input type="password" class="form-control" id="upassword" oninput="ucek(value)">
							</div>
							<div class="d-grid gap-2">
								<button class="btn btn-primary" id="submit" name="submit" disabled>Daftar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-7">
				<div class="alert alert-danger" role="alert" id="ceknama">
					Username harus terisi!
				</div>
				<div class="alert alert-danger" role="alert" id="cekjumlah">
					Minimal password terdiri dari 8 huruf dan angka!
				</div>
				<div class="alert alert-danger" role="alert" id="cekangka">
					Setidaknya password memiiki 1 angka!
				</div>
				<div class="alert alert-success" role="alert" id="ceksama">
					Password dan Ulangi Password harus sama!
				</div>
				<div class="alert alert-warning" role="alert" id="ceksama">
					Setelah Mendaftar harap login ulang dulu
				</div>
				<script type="text/javascript">
					nama = false;
					jumlah = false;
					angka = false;
					sama = false;
					function ncek(txt) {
						if (txt.length > 0) {
							nama = true;
							document.getElementById("ceknama").className = "alert alert-success";
						} else {
							nama = false;
							document.getElementById("ceknama").className = "alert alert-danger";
						}
						btnnn();
					}
					function cek(txt) {
						if (txt.length >= 8) {
							jumlah = true;
							document.getElementById("cekjumlah").className = "alert alert-success";
						} else {
							jumlah = false;
							document.getElementById("cekjumlah").className = "alert alert-danger";
						}
						if (txt.match(/[0-9]/i)) {
							angka = true;
							document.getElementById("cekangka").className = "alert alert-success";
						} else {
							angka = false;
							document.getElementById("cekangka").className = "alert alert-danger";
						}
						if (txt == document.getElementById("upassword").value) {
							sama = true;
							document.getElementById("ceksama").className = "alert alert-success";
						} else {
							sama = false;
							document.getElementById("ceksama").className = "alert alert-danger";
						}
						btnnn();
					}
					function ucek(txt) {
						if (txt == document.getElementById("password").value) {
							sama = true;
							document.getElementById("ceksama").className = "alert alert-success";
						} else {
							sama = false;
							document.getElementById("ceksama").className = "alert alert-danger";
						}
						btnnn();
					}
					function btnnn() {
						if (nama && jumlah && angka && sama) {
							document.getElementById("submit").disabled = false;
						} else {
							document.getElementById("submit").disabled = true;
						}
					}
				</script>
				<?php
					if ($_SERVER["REQUEST_METHOD"] == "POST") {
						include_once("connect.php");
						$username = $_POST['username'];
						$password = $_POST['password'];
						$sql = "SELECT * FROM user WHERE nickname='$username'";
						$result = mysqli_query($conn, $sql);
						if (!$result->num_rows > 0) {
							$sql = "INSERT INTO user (nickname, password) VALUES ('$username', '$password')";
							$result = mysqli_query($conn, $sql);
							if ($result) {
								echo "<script type='text/javascript'>alert('selamat pendaftaran berhasil, selanjutnya silahkan login')</script>";
								echo "<script type='text/javascript'>window.location.href = 'index.php'</script>";
							} else {
								echo "<script type='text/javascript'>alert('ups ada yg salah :(')</script>";
							}
						} else {
							echo "<script type='text/javascript'>alert('Username telah digunakan')</script>";
						}
					}
				?>
			</div>
		</div>
	</div>
</body>
</html>