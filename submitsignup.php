<?php
	session_start();
	
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$age = $_POST['age'];
	$hometown = $_POST['hometown'];	
	$job = $_POST['job'];
	$email = $_POST['email'];
	$pwd = $_POST['pwd'];


	$servername = "127.0.0.1";
	$port = "3306";
	$username = "root";
	$password = "";
	$dbname = "pathfinderdb";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname,$port);
	// Check connection
	if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
	}

	$sql = "INSERT INTO User (fname, lname, age, hometown, job, email, pwd)
VALUES ('$FirstName','$LastName','$Age','$Hometown','$Job', '$email', '$pwd');";

if ($conn->query($sql) === TRUE) {
    echo "";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>