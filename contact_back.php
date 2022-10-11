<?php

	session_start();

	include("connection.php");

	$uid = $_SESSION['uid'];
	$questions = $_POST['questions']; 

	$q = "INSERT INTO about (questions,user_id) VALUES ('$questions','$uid')";

	$res = $con->query($q);

	header("Location: contact.php");
?>