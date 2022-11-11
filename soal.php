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
	<title>Soal - TTS</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<style type="text/css">
		.tts {
			text-align: center;
			text-transform: uppercase;
			margin: 0 1px 0 1px;
		}
	</style>
</head>
<body class="bg-info">
	<nav class="navbar navbar-primary bg-primary shadow p-3">
		<div class="container-fluid">
			<span class="navbar-brand mx-auto h1 fw-bold">Teka Teki Susah</span>
		</div>
	</nav>
	<div class="container mt-5">
		<div class=" row g-4">
			<div class="col-3"></div>
			<div class="col-6">
				<div class="card shadow p-3 bg-body rounded">
					<div class="card-body text-center">
						<?php
							include_once("connect.php");
							$user_id = $_SESSION["user"];
							$sql = "SELECT * FROM `tts_soal` ORDER BY RAND() LIMIT 1";
							$result = mysqli_query($conn, $sql);
							if ($result->num_rows > 0) {
								$row = mysqli_fetch_assoc($result);
								echo "<p class='card-text'>" . $row["soal"] ."</p>";
								$jumble = explode(" ", $row["input"]);
								for ($i=0; $i < count($jumble); $i++) {
									if ($jumble[$i] == "_") {
										echo "<input type='text' class='tts' size='1' maxlength='1' oninput='inn()'>";
									} else {
										$inputto = $jumble[$i];
										echo "<input type='text' class='tts' size='1' value='$inputto' disabled>";
									}
								}
								echo "<div class='alert alert-secondary mt-3' id='kunci' hidden>";
								echo "<strong>" . $row["jawaban"] . "</strong><br>";
								echo $row["alasan"] . "</div>";
								echo "<form action='' class='mt-3' method='POST'>";
								echo "<input type='text' id='jawab' name='jawab' hidden>";
								echo "<input type='text' name='soal' value='" . $row["soal_id"] . "' hidden>";
								echo "<input type='text' name='cek' value='" . $row["jawaban"] . "' hidden>";
								echo "<button class='btn btn-success' id='submit' name='submit'>Yakin</button></form>";
							}
						?>
					</div>
					<div class="card-footer">
						<div class="d-grid gap-2 d-md-flex justify-content-md-end">
							<a class="btn btn-primary" href="user.php">User</a>
							<button class="btn btn-danger" onclick="nyerah()">Nyerah</button>
						</div>
					</div>
				</div>
			</div>
			<div class="col-3">
				<script type="text/javascript">
					function inn() {
						intxt = document.getElementsByClassName("tts");
						jawab = "";
						for (var i = 0; i < intxt.length; i++) {
							jawab += intxt[i].value.toLowerCase();
						}
						document.getElementById("jawab").value = jawab;
					}
					function nyerah() {
						document.getElementById("kunci").hidden = false;
						document.getElementById("submit").hidden = true;
					}
				</script>
				<?php
					if (isset($_POST['submit'])) {
						include_once("connect.php");
						$jawab = $_POST['jawab'];
						$soal = $_POST['soal'];
						$benar = $_POST['cek'];
						$user_id = $_SESSION["user"];
						$cek = 0;
						if ($jawab == $benar) {
							$cek = 1;
						}
						$sql = "INSERT INTO jawaban (user_id, soal_id, jawab, cek) VALUES ('$user_id', '$soal', '$jawab', $cek)";
						$result = mysqli_query($conn, $sql);
						if ($jawab == $benar) {
							echo "<div class='alert alert-success'>Jawabanmu Benar</div>";
							$orang = mysqli_query($conn, "SELECT * FROM user WHERE user_id=$user_id");
							if ($orang->num_rows > 0) {
								$user = mysqli_fetch_assoc($orang);
								$score = $user["score"] + 1;
								$liga = $user["liga"];
								if ($score > 10) {
									$liga = "Pro";
								}
								mysqli_query($conn, "UPDATE user SET score=$score, liga='$liga' WHERE user_id=$user_id");
							}
						} else {
							echo "<div class='alert alert-danger'>Jawabanmu Salah</div>";
						}
					}
				?>
			</div>
		</div>
	</div>
</body>
</html>