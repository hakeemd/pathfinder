<?php
	session_start();
	$firstname = $_SESSION['firstname'];
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Pathfinder</title>
		<link href = "bootstrap/css/bootstrap.min.css" rel = "stylesheet">
		<link href = "styles.css" rel = "stylesheet">
	</head>
	<body>
		<div id="title">
			<h1><a href="index.html" id = "h1title">Pathfinder.</a></h1>
			<h3 class = "desc">Discover your perfect job that suits you best.</h3>
			<?php if($firstname != null) { ?>
				<h4 class = "welcome">Welcome, <?php echo $firstname; ?> </h4><br>
			<?php } ?>
		</div>
		<br>
		<br/>
   		<div id="box">
   			<div id='quiz'></div>
	   			<div id = "description"></div>
	   			<div id = "answer1"></div>
	   			<div id = "answer2"></div>
	   			<div id = "answer3"></div>
	   			<div id = "answer4"></div>
	   			<div id = "answer5"></div>
  			<div id = "buttons">
	    		<div class = "btn btn-default" id='prev'><a class = "questionbtn" href='#'>Prev</a></div>
	    		<div class = "btn btn-default" id='next'><a class = "questionbtn" href='#'>Next</a></div>
	    		<div class = "btn btn-default" style = "margin-left:45%" id='start' onclick="refreshPage()"><a class = "questionbtn" href='#'>Start Over</a></div>
  			</div>
  			<br>
  			<div id = "account">
	  			<hr class = "line">
	  			<a class = "accountbtn" href ="signup.html">Sign Up</a>

	  			<?php if($firstname != null) { ?>
	  				<a class = "accountbtn" href = "logout.php">Logout</a>
	  			<?php } else { ?>
	  				<a class = "accountbtn" href = "login.php">Login</a>
	  			<?php } ?>
  			</div>
    	</div>

    	<script>
			function refreshPage() {
			    location.reload();
			}
		</script>

		<script type='text/javascript' src='js/jquery-3.2.0.min.js'></script>
 		<!--<script type="text/javascript" src="questions.json"></script>-->
		<script type="text/javascript" src="jsquiz.js"></script>
	</body>
</html>