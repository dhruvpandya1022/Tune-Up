<?php
	
	session_start();

	include("connection.php");

	$aid = $_REQUEST['id'];
	$uid = $_SESSION['uid'];
	echo $uid;	


	$cmt = $_POST['cmt'];
	echo $cmt;

	$q = "INSERT INTO comment(description,user_id) VALUES ('$cmt','$uid')";
	$result = $con->query($q);

	header("Location:single.php?id=$aid");
?>