<?php

    try{
        $conn = new mysqli('localhost', 'root', '', 'minorprg');

        if(mysqli_connect_error()){
            die('Connect Error('.mysqli_connect_errno().')'.mysqli_connect_error());
        }
       
    }
    catch(Exception $ex){

        echo "ERROR OCCURED!!!";
        echo $ex;
    }
?>


