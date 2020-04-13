<?php
session_start();
include('config.php');
?>
<html>
    <head>
        <?php include('header.php'); ?>
    </head>
    <body>
        <?php include('navbar.php');?>
        <div class="container-fluid abc pb-5">
            <div class="row">
                <div class="col-sm-6 text-left pt-5 pl-5">
					<h1 class=" banner_h1 bold1">One stop solution <br />For Bike Spare Parts</h1>
					
					<h2 class=" banner_h2 bold">Find the most exciting<br /> Products that meets your demand</h2> <br />
					<button class="btn btn-primary pl-5 pr-5 btn-lg">Get Started</button><br />
					
				</div>
                <div class="col-sm-6 pt-4">
                    <img src="bike.jpeg" style="width:100%;height:55vh;border-radius:08px;">
                </div>
            </div>
        </div>
        <div class="container-fluid mt-5">
            <h1 class="text-center pt-3">Categories</h1>
            <div class="row justify-content-center">
                <?php 
                    $sql = "select * from category";
                    $result = mysqli_query($conn,$sql);
                    while($row = mysqli_fetch_assoc($result))
                    {
                        echo '<div class="col-md-3">
                                <div class="card mt-2 mb-2">
                                <a href="cat.php?id='.$row["id"].'&cat='.$row["name"].'"><img class="categ" src="'.$row["image"].'"></a>
                                </div>
                            </div>';
                       
                    }
                ?>

                
            </div>
        </div>
        <div class="container-fluid">
            <h1 class="text-center pt-5 mt-3">Top Products</h1>
            <div class="row">
                <?php
                $sql1 = "select * from product";
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
                                
                                <div class="card-body text-center" style="z-index:10;border-radius:06px;">
                                    <img style="height:100px;width:100px;" src="'.$row1["image1"].'">
                                </div> 
                                <div class="card-footer text-left pt-4">
                
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