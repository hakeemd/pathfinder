<?php
	session_start();

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
	
	if(empty($email)){
	   $error = true;
	   $emailError = "Please enter your email address.";
	  } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
	   $error = true;
	   $emailError = "Please enter valid email address.";
	  }
	  
	  if(empty($pwd)){
	   $error = true;
	   $pwdError = "Please enter your password.";
	  }
	  
	  // if there's no error, continue to login
	  if (!$error) {
	   
	   $password = $pwd;
	  
	   $res=mysql_query("SELECT id, FirstName, LastName, Age, Hometown, Job, email, pwd FROM user WHERE email='$email'");
	   $row=mysql_fetch_array($res);
	   $count = mysql_num_rows($res); // if uname/pass correct it returns must be 1 row
	   
	   if( $count == 1 && $row['pwd']==$password ) {
	    $_SESSION['user'] = $row['email'];
	    header("Location: index.html");
	   } else {
	    $errMSG = "Incorrect Credentials, Try again...";
	   }
	    
	  }
	  
	}

	if ($conn->query($sql) === TRUE) {
	    echo "Success!";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();
?>

$conn->close();
?>