<?php
include('config.php');
session_start();

$id = $_SESSION['user_id'];
?>
<html>
    <head>
        <?php include('header.php');?>
    </head>
    <body>
        <?php include('navbar.php');?>
        <div class="container-fluid mt-3 pb-5">
            <div class="row justify-content-center">
            <?php
            $sql = "select * from wishlist where user_id = $id";
            $result = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($result))
            {
                $prod_id = $row['product_id'];
                $sql1 = "select * from product where id = $prod_id";
                $result1 = mysqli_query($conn,$sql1);
                while($row1 = mysqli_fetch_assoc($result1))
                {
                    echo '<div class="col-sm-3">
                                <div class="card-body text-center">
                                <img style="height:100px;width:100px;" src="'.$row1["image1"].'">
                                </div> 
                                <div class="card-footer text-left">

                                    <h4><a href="product.php?id='.$row1["id"].'">'.$row1["name"].'</a></h4>
                                    <h4><s>'.$row1["mrp"].'</s> &nbsp;|&nbsp;'.$row1["new_price"].' </h4>
                                </div>
                        </div>';
                }
            }
            ?>
                
            </div>
        </div>
        <?php include('footer.php');?>
    </body>
</html>

