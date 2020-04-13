<?php 
session_start();
include('config.php');
$id = $_GET['id'];
$name = $_GET['cat'];


$url= $_SERVER['REQUEST_URI'];   

        // $sql = "select * from product where cat_id = $id";
        // $result = mysqli_query($conn,$sql);
        // while($row = mysqli_fetch_assoc($result))
        // {
        //     echo '<a href="product.php?id='.$row["id"].'"><img style="height:100px;width:100px;" src="'.$row["image1"].'"></a>';
        //     echo $row['name'];
        //     echo $row['mrp'];
        //     echo $row['new_price'];
        //     echo "<br><br>";

        //     echo '<form action="wishlist.php" method="post">
        //             <input type="hidden" name="product_id" value="'.$row['id'].'" />
        //             <input type="hidden" name="user_id" value="1" />
        //             <input type="hidden" name="url" value="'.$url.'" />
        //             <button type="submit">Add to wishlist</button>
        //         </form>';
        // }



        // $sql1 = "select * from wishlist where user_id= 1";
        // $result1 = mysqli_query($conn,$sql1);
        // while($row = mysqli_fetch_assoc($result1))
        // {
        //     echo 'user id '.$row['user_id'];
        //     echo 'product id'.$row['product_id'];
        //     echo '<br>';
        // }
        // ?>

<html>
    <head>
        <?php include('header.php'); ?>
    </head>
    <body>
        <?php include('navbar.php');?>
        
        
        <div class="container-fluid text-center pt-5 pb-5">
            <h1><?php echo $name;?></h1>
            <h3>Best Product for your related search</h3>
            <div class="row mt-5 justify-content-center">
                <?php
                $sql1 = "select * from product where cat_id = $id";
                $result1 = mysqli_query($conn,$sql1);
                while($row1 = mysqli_fetch_assoc($result1))
                {
                    // echo '<a href="product.php?id='.$row["id"].'"><img style="height:100px;width:100px;" src="'.$row["image1"].'"></a>';
                    // echo $row['name'];
                    // echo $row['mrp'];
                    // echo $row['new_price'];
                    // echo "<br><br>";
                    

                    echo '<div class="col-sm-3">
                            <div class="card mt-2 mb-2">
                                
                                <div class="card-body text-center">
                                    <img style="height:100px;width:100px;z-index:10;" src="'.$row1["image1"].'">
                                </div> 
                                <div class="card-footer text-left pt-5">
                                    <h4><a href="product.php?id='.$row1["id"].'">'.$row1["name"].'</a></h4>
                                    <h4><s>'.$row1["mrp"].'</s> &nbsp;|&nbsp;'.$row1["new_price"].' </h4>
                                </div>
                            </div>
                        </div>';
                
                    // echo '<form action="wishlist.php" method="post">
                    //         <input type="hidden" name="product_id" value="'.$row['id'].'" />
                    //         <input type="hidden" name="user_id" value="1" />
                    //         <input type="hidden" name="url" value="'.$url.'" />
                    //         <button type="submit">Add to wishlist</button>
                    //       </form>';
                }
                
                ?>
               
            </div>
        </div>        
        <?php include('footer.php');?>

    </body>
    
</html>