<?php
    session_start();
    include ("db.php");
    $email=$_POST['email'];
    $password=$_POST['password'];
    $conn = connect();
    
    $sql = "SELECT * FROM user where email='".$email."'";
    $result = $conn->query($sql);
       
    if($result->num_rows>0){
        $temp=array();
        
        while($row=$result->fetch_assoc()){
            
            $temp['id']=$row['id'];
            $temp['firstname']=$row['FirstName'];
            $temp['lastname']=$row['LastName'];
            $temp['age']=$row['Age'];
            $temp['hometown']=$row['Hometown'];
            $temp['job']=$row['Job'];
            $temp['email']=$row['Email'];
            $temp['password']=$row['Password'];
            $temp['salt']=$row['salt'];

            
        }

        $conn->close();
        $options = [
            'cost'=>12,
            'salt'=> $temp['salt']
        ];
        $hashed = password_hash($password,PASSWORD_BCRYPT,$options);
        if($hashed == $temp['password']){
            $_SESSION['firstname']=$temp['firstname'];
            header('Location: index.php');
        }else{
            $_SESSION['error']='Authentication Failed! Check your username and password!';
            
            header('Location: login.php');
            // print_r($temp);
            // print_r($hashed);
        }
        
        
    }else{
        $conn->close();
        
    }
?>