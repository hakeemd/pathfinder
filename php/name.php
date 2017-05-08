<?php
if (isset($_POST['name']) === true && empty($_POST['name']) === false) {
  $con = mysqli_connect("localhost","root","root","pathfinderdb");

  // Check connection
  if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
  
  $result = mysqli_query($con,"SELECT location FROM names WHERE name = '{$_POST['name']}'");
  $row=mysqli_fetch_assoc($result);
  echo (mysqli_num_rows($result)!==0)?$row[location]:"Name not found";;
}
 ?>
