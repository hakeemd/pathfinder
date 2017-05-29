<?php
	session_start();
	if(isset($_SESSION['secret'])){
		header('Location: index.php');
	}
?>


<!DOCTYPE html>
<html>
	<head>
		<title>Pathfinder</title>
		<link href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel = "stylesheet">
		<link href = "styles.css" rel = "stylesheet">
	</head>
	<body>
		<div id="box">
			<div id="title">
				<h1><a href = "index.html" id = "h1title">Pathfinder.</a></h1>
			    <h3>Discover your perfect job that suits you best.</h3>
			</div>
   			<br/>

		<form method="post" action="submitlogin.php">
			
			<?php
				if(isset($_SESSION['error'])){
					echo "<p class='red'>".$_SESSION['error'].'</p>';
				}
			?>

	        <div class = "logininfo">
			
			<?php
				if(isset($_SESSION['error'])){
					echo "<p class='red'>".$_SESSION['error'].'</p>';
				}
			?>

	            Email: <br>
	            <input class = "contact" type = "text" name = "email" placeholder = "insert your email-address"><br><br>

	            Password <br>
	            <input class = "contact" type = "password" name = "password" placeholder = "insert your password">
	        
	        </div>
	    	
	        <div id = "buttondiv">
	            <input type="submit" class = "btn btn-default" value="Login" name="login">
	        </div>
	        </form>

		<script type='text/javascript' src='js/jquery-3.2.0.min.js'></script>
		<script type="text/javascript" src="questions.json"></script>
		<script type="text/javascript" src="jsquiz.js"></script>
	</body>
</html>
