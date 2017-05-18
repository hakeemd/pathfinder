<?php
//if (isset($_POST['a2']) === true && empty($_POST['a2']) === false) {
  //$_POST['name'];
  $con = mysqli_connect("localhost","root","root","pathfinderdb");

  // Check connection
  if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

  $result = mysqli_query($con,"SELECT answer4 FROM result
    WHERE iww='{$_POST['iww']}' AND aoi='{$_POST['aoi']}' AND dm='{$_POST['dm']}' AND org='{$_POST['org']}'");

  $row=mysqli_fetch_assoc($result);
  echo (mysqli_num_rows($result)!==0)?$row[answer4]:"Name not found";
  /*if ($result === null && json_last_error() !== JSON_ERROR_NONE) {
   echo "data not found";
 }*/

  mysqli_close($con);

//}
 ?>
