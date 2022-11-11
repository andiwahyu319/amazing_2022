<?php
session_start();
if (!isset($_SESSION["user"])) {
	header("Location: index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard - TTS</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="bg-info">
	<nav class="navbar sticky-top navbar-primary bg-primary shadow p-3">
		<div class="container-fluid">
			<span class="navbar-brand mx-auto h1 fw-bold">Teka Teki Susah</span>
		</div>
	</nav>
	<div class="container mt-5">
		<div class=" row g-4">
			<div class="col-3">
				<div class="card shadow p-3 bg-body rounded">
					<div class="card-body text-center">
						<?php
							include_once("connect.php");
							$user_id = $_SESSION["user"];
							$result = mysqli_query($conn, "SELECT * FROM user WHERE user_id=$user_id");
							if ($result->num_rows > 0) {
								$row = mysqli_fetch_assoc($result);
								$nama = $row["nickname"];
								$liga = $row["liga"];
								$score = $row["score"];
								echo "<h3 class='card-title'>$nama</h3>
									<hr>
									<p class='card-text'>
										<span class='fw-bolder'>Liga :</span> $liga
									</p>
									<hr>
									<p class='card-text'>
										<span class='fw-bolder'>Score :</span> $score
									</p>";
							} else {
								header("Location: index.php");
							}
						?>
						<hr>
						<div class="d-grid gap-2">
							<a class="btn btn-success" href="soal.php">Jawab Teka Teki</a>
						</div>
						<div class="d-grid gap-2 mt-3">
							<a class="btn btn-info" href="edit.php">Edit Akun</a>
						</div>
						<div class="d-grid gap-2 mt-3">
							<a class="btn btn-warning" href="logout.php">Logout</a>
						</div>
						<div class="d-grid gap-2 mt-3">
							<a class="btn btn-danger" href="hapus.php">Hapus Akun</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-9">
				<div class="card shadow p-3 bg-body rounded">
					<div class="card-body text-center">
						<h3 class="card-title">Riwayat soal</h3>
						<table class="table table-hover table-striped">
							<thead>
								<tr class="table-info">
									<th scope="col">Waktu</th>
									<th scope="col">Soal</th>
									<th scope="col">Jawab</th>
									<th scope="col">Alasan</th>
								</tr>
							</thead>
							<tbody>
								<?php
									include_once("connect.php");
									$user_id = $_SESSION["user"];
									$result = mysqli_query($conn, "SELECT jawaban.*, tts_soal.soal AS soal, tts_soal.alasan AS alasan
										FROM jawaban
										JOIN tts_soal ON jawaban.soal_id = tts_soal.soal_id
										WHERE jawaban.user_id=$user_id
										ORDER BY jawaban.waktu DESC");
									while ($jawaban = mysqli_fetch_array($result)) {
										if ($jawaban["cek"]) {
											echo "<tr class='table-success'>";
										} else {
											echo "<tr class='table-danger'>";
										}
										echo "<td>" . $jawaban["waktu"] . "</td>";
										echo "<td>" . $jawaban["soal"] . "</td>";
										echo "<td>" . $jawaban["jawab"] . "</td>";
										if ($jawaban["cek"]) {
											echo "<td>" . $jawaban["alasan"] . "</td>";
										} else {
											echo "<td> [ rahasia ] </td>";
										}
										echo "</tr>";
									}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>