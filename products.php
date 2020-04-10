<?php 
include('config.php');
$id = $_GET['id'];
echo $id;
$url= $_SERVER['REQUEST_URI'];   
echo $url; 
$sql = "select * from product where cat_id = $id";
$result = mysqli_query($conn,$sql);
while($row = mysqli_fetch_assoc($result))
{
    echo '<a href="product.php?id='.$row["id"].'"><img style="height:100px;width:100px;" src="'.$row["image1"].'"></a>';
    echo $row['name'];
    echo $row['mrp'];
    echo $row['new_price'];
    echo "<br><br>";

    echo '<form action="wishlist.php" method="post">
            <input type="hidden" name="product_id" value="'.$row['id'].'" />
            <input type="hidden" name="user_id" value="1" />
            <input type="hidden" name="url" value="'.$url.'" />
            <button type="submit">Add to wishlist</button>
          </form>';
}



$sql1 = "select * from wishlist where user_id= 1";
$result1 = mysqli_query($conn,$sql1);
while($row = mysqli_fetch_assoc($result1))
{
    echo 'user id '.$row['user_id'];
    echo 'product id'.$row['product_id'];
    echo '<br>';
}
?>