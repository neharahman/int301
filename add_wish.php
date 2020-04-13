<?php
session_start();
include('config.php');
$user_id = $_GET['user_id'];
$prod_id = $_GET['prod_id'];
$url= $_GET['url'];
$sql = "insert into wishlist(product_id,user_id) values('$prod_id','$user_id')";
$result = mysqli_query($conn,$sql);
if($result)
{
    echo "<script>
    window.location.href='".$url."';
    </script>";
}
else
{
    echo "not added";
}
?>