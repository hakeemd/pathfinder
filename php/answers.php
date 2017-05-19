<?php
//if (isset($_POST['a2']) === true && empty($_POST['a2']) === false) {
  //$_POST['name'];
  $con = mysqli_connect("localhost","root","root","pathfinderdb");

  // Check connection
  if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

  $result = mysqli_query($con,"SELECT description, answer1, answer2, answer3, answer4, answer5 FROM result
    WHERE iww='{$_POST['iww']}' AND aoi='{$_POST['aoi']}' AND dm='{$_POST['dm']}' AND org='{$_POST['org']}'");

  $row=mysqli_fetch_assoc($result);
  echo (mysqli_num_rows($result)!==0)?json_encode($row):"Name not found";

  // Close connection
  mysqli_close($con);

//}
 ?>
