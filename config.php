<?php
error_reporting(0);
$servername ='localhost';
$database = 'vehicle';
$password = '';
$username='root';

$conn = mysqli_connect($servername,$username,$password,$database);
if($conn)
{
    // echo 'connected';
}
else
{
    echo 'not connected';
}
?>