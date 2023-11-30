<?php
include 'functions.php';
include 'mysqli_connect.php';

$_SESSION['username']='';
session_destroy();
header("location:login.html");

?>