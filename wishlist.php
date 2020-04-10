<?php
include('config.php');

$user_id = $_POST['user_id'];
$product_id = $_POST['product_id'];
$url = $_POST['url'];

$sql ="insert into wishlist(product_id,user_id) values('$product_id','$user_id')";
$result =mysqli_query($conn,$sql);
if($result)
{
    
    echo "<script>
    alert('Sign Up Successfull please logged in');
    window.location.href='".$url."';
    </script>";

}
else
{
    echo mysqli_error($conn);
  
    // echo "<script>
    // alert('Some Error Occured please SignUp Again');
    // window.location.href='signup.php';
    // </script>";
}
  
