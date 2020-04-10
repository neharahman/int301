<?php
session_start();

include('config.php');
$email = $_POST['email1'];
$pass = $_POST['pass'];
echo $email;
echo $pass;


$sql3="SELECT * FROM user WHERE email='$email' AND pass='$pass'";

$result1 =mysqli_query($conn,$sql3);
if(mysqli_num_rows($result1) > 0)
{
  while($row = mysqli_fetch_assoc($result1))
  {
    echo $row['id'];
    $_SESSION['id'] = $row['id'];
    

    echo "<script>
    alert('Successfully logged in');
    window.location.href='home.php';
    </script>";
  }



}
else
{
  echo "nopes dude";
}
  

?> 