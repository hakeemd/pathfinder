<?php
	session_start();

	
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$age = $_POST['age'];
	$hometown = $_POST['hometown'];	
	$job = $_POST['job'];
	$email = $_POST['email'];
	$pwd = $_POST['pwd'];


	$servername = "localhost";
	$port = "3306";
	$username = "root";
	$password = "root";
	$dbname = "pathfinderdb";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname,$port);
	// Check connection
	if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
	}

	$sql = "INSERT INTO user (FirstName, LastName, Age, Hometown, Job, Email, Password) VALUES ('$fname', '$lname', '$age', '$hometown', '$job', '$email', '$pwd')";

if ($conn->query($sql) === TRUE) {
    echo "Success!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>