<?php

$host="localhost";
$dbusername = "root";
$dbpassword="";
$dbname="minorprg";

$pname = $_POST['name'];
$cat = $_POST['category'];
$desc = $_POST['desc'];
$rp = $_POST['reducedprice'];
$mrp = $_POST['markedprice'];
$quantity = $_POST['quantity'];

$img1 = $_POST['img1'];
$img2 = $_POST['img2'];
$img3 = $_POST['img3'];
$img4 = $_POST['img4'];
$date = $_POST['date_added'];

//create connection
try{
    $conn= new mysqli($host,$dbusername,$dbpassword,$dbname);

    if(mysqli_connect_error()){
        die('Connect Error('.mysqli_connect_errno().')'.mysqli_connect_error());

    }
    else{
    $INSERT1 = 'INSERT Into products (name,category,descr,reducedprice,markedprice,quantity,img1,img2,img3,img4,date_added)values(?,?,?,?,?,?,?,?,?,?,?)';

    //Prepare statement
        $stmt1 = $conn->prepare($INSERT1);
        $stmt1->bind_param("sssiiisssss", $pname,$cat,$desc,$rp,$mrp,$quantity,$img1,$img2,$img3,$img4,$date);
        $stmt1->execute();


        $stmt1->close();
        
        header("location:entry.html");
        echo"<script>
        alert('RECORD ENTERED SUCCESSFULLY');
        </script>";

    }
}

    catch (Exception $a){
        echo"<script>
        alert('EXCEPTION OCCURED');
    </script>";
    echo $a;
    }
    
    die();
?>