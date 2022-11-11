<?php
	session_start();
	$user_id = $_SESSION["user"];
	include_once("connect.php");
	mysqli_query($conn, "DELETE FROM user WHERE user_id=$user_id");
	session_destroy();
	header("Location: index.php");
?>