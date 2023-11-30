<?php

session_start();

$host="localhost";
$dbusername = "root";
$dbpassword="";
$dbname="minorprg";

$name= $_POST['username'];
$password= $_POST['password'];


//create connection

$conn= new mysqli($host,$dbusername,$dbpassword,$dbname);

if(mysqli_connect_error()){
    die('Connect Error('.mysqli_connect_errno().')'.mysqli_connect_error());
}
else{
    $s="select * from details where uname='$name' && password='$password'";
    $result= mysqli_query($conn,$s);
    $num= mysqli_num_rows($result);

    if ($num == 1){
        $_SESSION['username']=$name;
        $_SESSION['phno']=
        header("location:index.php?page=home");
    } else{
        header("location:login.html");
    }
}
?>