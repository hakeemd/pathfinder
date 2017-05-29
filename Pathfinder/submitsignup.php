<?php
	session_start();
	include ("db.php");

	$firstname = $_POST["firstname"];
	$lastname = $_POST["lastname"];
	$age = $_POST["age"];
	$hometown = $_POST["hometown"];
	$job = $_POST["job"];
	$email = $_POST["email"];
	$password = $_POST["password"];

	$cistrong = true;
    $salt = bin2hex(openssl_random_pseudo_bytes(40,$cistrong));
    $conn = connect();
    $options = [
        'cost'=>12,
        'salt'=> $salt
    ];
    $hashed = password_hash($password,PASSWORD_BCRYPT,$options);

    $sql = "INSERT INTO user (FirstName, LastName, Age, Hometown, Job, Email, Password, salt) VALUES (?,?,?,?,?,?,?,?)";

    if($stmt=$conn->prepare($sql)){
        $stmt->bind_param('ssisssss', $firstname, $lastname, $age, $hometown, $job, $email, $hashed, $salt);
        $stmt->execute();
        $conn->close();
        $_SESSION['firstname'] = $firstname;
        header("location: index.php");
    }else{
        $conn->close();
        return false;
    }

?>