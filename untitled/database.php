<?php
$host 	    = "localhost";
$user 	 	= "root";
$pass 	 	= "root";
$db_name 	= "mydb";
$connect = mysqli_connect($host, $user, $pass, $db_name);

/*if (mysqli_connect_errno()) {
    die("Data Base connection failed: " . mysqli_connect_error() . " (" . mysqli_connect_errno() . ")");
} else{
    echo "Connection = success!\n" . mysqli_get_host_info($connect) ;
}*/

mysqli_query($connect, "SET NAMES utf8");