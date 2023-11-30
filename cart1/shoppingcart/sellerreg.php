<?php

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$uname = $_POST['uname'];
$mail = $_POST['mail'];
$phno = $_POST['phno'];
$password = $_POST['password'];

if(!empty($fname) || !empty($lname) || !empty($uname) || !empty($mail) || !empty($phno) || !empty($password)){
    $host="localhost";
    $dbusername = "root";
    $dbpassword="";
    $dbname="minorprg";

}

//create connection
try{
    $conn= new mysqli($host,$dbusername,$dbpassword,$dbname);

    if(mysqli_connect_error()){
        die('Connect Error('.mysqli_connect_errno().')'.mysqli_connect_error());

    }
    else{
        $SELECT = "SELECT mail From sellerdetails Where mail = ? Limit 1";
        $INSERT = "INSERT Into sellerdetails (fname,lname,uname,mail,phno,password)values(?,?,?,?,?,?)";

    //Prepare statement
        $stmt = $conn->prepare($SELECT);
        $stmt->bind_param("s", $mail);
        $stmt->execute();
        $stmt->bind_result($mail);
        $stmt->store_result();
        $rnum = $stmt->num_rows;

        //checking username
        if ($rnum==0) {
        $stmt->close();
        $stmt = $conn->prepare($INSERT);
        $stmt->bind_param("ssssis", $fname,$lname,$uname,$mail,$phno,$password);
        $stmt->execute();
        header("location:sellerlogin.html");
        $message='SELLER REGISTRATION COMPLETED SUCCESSFULLY !!! ';
    
        
        } else {
            $message='THE MAIL ID HAS ALREADY BEEN USED !!! ';
    
            echo '<script type="text/javascript">window.onload=function() {alert("THE MAIL ID HAS ALREADY BEEN USED !!!");}</script>';
        }
        $stmt->close();
        $conn->close();
    }
    echo "All field are required";
    die();


}


catch (Exception){
    echo"<script>
    alert('EXCEPTION OCCURED');
</script>";
}

?>