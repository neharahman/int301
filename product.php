<?php 
session_start();
include('config.php');
$id = $_GET['id'];




$url= $_SERVER['REQUEST_URI'];   

?>       

<html>
    <head>
        <?php include('header.php'); ?>
    </head>
    <body>
        <?php include('navbar.php');?>
        
        <?php
                    
            $sql1 = "select * from product where id = $id";
            $result1 = mysqli_query($conn,$sql1);
            while($row1 = mysqli_fetch_assoc($result1))
            {
        ?>
        <div class="container-fluid">
		<div class="row mt-3">
			<div class="col-sm-6">
				<div class="card ">
                    <img class="img_card" src="<?php echo $row1['image1'];?>" >
				</div>
			</div>
			<div class="col-sm-5 pt-3">
				<h3><?php echo $row1['name'];?></h3>
				<h2 class="text-danger"><s><?php echo $row1['mrp'];?></s>&nbsp;&nbsp;<?php echo $row1['new_price'];?></h2>
				<h5>Brand : <?php echo $row1['brand'];?></h5>
                <h6>Avavbility: <?php echo $row1['availability'];?></h6>
                <?php
                $sql2 = "select * from wishlist where product_id = $id";
                $result2 = mysqli_query($conn,$sql2);
                if(mysqli_num_rows($result2)>0)
                {
                    echo '<button type="button" style="width:150px; background: blue;border:none !important;height: 40px;box-shadow: 2px 2px 5px 0.5px rgba(0,0,0,0.5);color:#fff;"><a style="color:#fff;" href="wishlist.php">view wishlist</a></button>';
                }
                else
                {
                    echo '<form action="add_wish.php" method="get">
                        <input type="hidden" name="user_id" value="'.$_SESSION["user_id"].'">
                        <input type="hidden" name="prod_id" value="'.$id.'">
                        <input type="hidden" name="url" value="'.$url.'">
                        <button type="submit" style="width:150px; background: blue;border:none !important;height: 40px;box-shadow: 2px 2px 5px 0.5px rgba(0,0,0,0.5);color:#fff;">Add to wishlist</button>
                    </form>';

                }
                ?>
				
				
				<button type="button" style="background: teal;border:none !important;height: 40px;box-shadow: 2px 2px 5px 0.5px rgba(0,0,0,0.5);color:#fff;"><a style="color:#fff;" href="https://wa.me/919501723345?text=I%20am%20intrested%20in%20this%20product%20%27localhost/neha_ca/product/php?id=<?php echo $id;?>">Enquire from whatsapp</a></button>
				
            </div>
            <div class="col-sm-12 ">
                <div class="card mt-2 pt-3">
                    <h1>Description</h1>
                    <h6><pre><?php echo $row1['description'];?></pre></h6>
                </div>
                
            </div>

        </div>
        <?php
            }
        ?>
	
	</div>       
        <?php include('footer.php');?>

    </body>
    
</html>
