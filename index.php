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
	<title>Teka Teki Susah</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="bg-info">
	<nav class="navbar navbar-primary bg-primary shadow p-3">
		<div class="container-fluid">
			<span class="navbar-brand mx-auto h1 fw-bold">Teka Teki Susah</span>
		</div>
	</nav>
	<div class="container mt-5">
		<div class=" row g-4">
			<div class="col-8">
				<div class="card shadow p-3 bg-body rounded">
					<div class="card-body text-center">
						<h3 class="card-title">Top Player</h3>
						<table class="table table-hover table-info table-striped">
							<thead>
								<tr>
									<th scope="col">Rank</th>
									<th scope="col">Nama</th>
									<th scope="col">Liga</th>
									<th scope="col">Score</th>
								</tr>
							</thead>
							<tbody>
								<?php
									include_once("connect.php");
									$orang5 = mysqli_query($conn, "SELECT nickname, liga, score FROM user ORDER BY score DESC LIMIT 5;");
									$rank = 1;
									while ($orang = mysqli_fetch_array($orang5)) {
										echo "<tr>";
										echo "<th scope='row'>#$rank</th>";
										echo "<td>" . $orang["nickname"] . "</td>";
										echo "<td>" . $orang["liga"] . "</td>";
										echo "<td>" . $orang["score"] . "</td>";
										echo "</tr>";
										$rank++;
									}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card shadow p-3 bg-body rounded">
					<div class="card-body">
						<h3 class="card-title text-center">Login</h3>
						<form method="POST" action="index.php">
							<div class="mb-3">
								<label for="username" class="form-label">Username</label>
								<input type="text" class="form-control" id="username" name="username" oninput="cek()">
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label>
								<input type="password" class="form-control" id="password" name="password" oninput="cek()">
							</div>
							<div class="d-grid gap-2">
								<button class="btn btn-primary" id="submit" name="submit" disabled>Login</button>
							</div>
						</form>
						<script type="text/javascript">
							function cek() {
								user = document.getElementById("username").value;
								pw = document.getElementById("password").value;
								if (user != "" && pw != "") {
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
								$result = mysqli_query($conn, "SELECT * FROM user WHERE nickname='$username' AND password='$password'");
								if ($result->num_rows > 0) {
									$row = mysqli_fetch_assoc($result);
									$_SESSION["user"] = $row["user_id"];
									echo "<script type='text/javascript'>window.location.href = 'user.php'</script>";
								} else {
									echo "<script type='text/javascript'>alert('Password Salah')</script>";
								}
							}
						?>
						<hr>
						<p>belum punya akun?</p>
						<div class="d-grid gap-2">
							<a class="btn btn-primary" href="daftar.php">Daftar</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>