<?php

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$uname = $_POST['uname'];
$mail = $_POST['mail'];
$phno = $_POST['phno'];
$password = $_POST['password'];
$repassword=$_POST['repassword'];

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
        $SELECT = "SELECT mail From details Where mail = ? Limit 1";
        $INSERT = "INSERT Into details (fname,lname,uname,mail,phno,password)values(?,?,?,?,?,?)";

    //Prepare statement
        $stmt = $conn->prepare($SELECT);
        $stmt->bind_param("s", $mail);
        $stmt->execute();
        $stmt->bind_result($mail);
        $stmt->store_result();
        $rnum = $stmt->num_rows;


        if($password === $repassword){
            //checking username
            if ($rnum==0) {
            $stmt->close();
            $stmt = $conn->prepare($INSERT);
            $stmt->bind_param("ssssis", $fname,$lname,$uname,$mail,$phno,$password);
            $stmt->execute();
            header("location:login.html");
        ?>
            <script type="text/javascript">
            alert("USER REGISTRATION COMPLETED SUCCESSFULLY !!! ");
            </script>
        
        <?php    
            } else {
                
                header("location:registration.html");
        ?>
                <script type='text/javascript'>alert('THE MAIL ID HAS ALREADY BEEN USED !!!')</script>
        <?php
            }
            $stmt->close();
            $conn->close();
        }else{
            
            header("location:registration.html");
        ?>
            <script>alert('Passwords do not match !!!')</script>
        <?php
        }
    }    
    die();
}



catch (Exception){
    echo"<script>
    alert('EXCEPTION OCCURED');
</script>";
}

?>