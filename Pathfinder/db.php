<?php
	function connect() {
		$conn = mysqli_connect('localhost', 'root', 'root', 'pathfinderdb');
		if($conn->connect_error){
			die('Connection failed: '.	$conn->connect_error);
		}
		return $conn;
	}
?>