<?php
include('config.php');

$sql = "select * from category";
$result = mysqli_query($conn,$sql);
while($row = mysqli_fetch_assoc($result))
{
    echo '<a href="products.php?id='.$row["id"].'"><img style="height:100px;width:100px;" src="'.$row["image"].'"></a>';
}

?>
<html>
    <head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="row justify-content-center mt-5">
            <div class="col-md-6 text-center pt2">
                <div class="card">
                        <br>
                        <br>
                        <h1 class="text-muted h1">User Login </h1> 
                        <br>
                        <div class="row">
                            <div class="col-sm-2">

                            </div>
                            <div class="col-sm-8">
                                <form action="login.php" method="POST">
                                    <div class="form-group">
                                        <input class="form-control form-style" type="text" name="email1" placeholder="Enter Email">
                                        <br>
                                        <input class="form-control form-style" type="password" name="pass" placeholder="Enter Password">
                                        <br>
                                        <button class="btn btn-info" type="submit">Submit</button>
                                    </div>
                                </form>
                                <br>
                                <h3 class="text-muted">Don't Have A Account ? Create One <a href="signup.php">Sign Up</a></h3>
                            </div>
                        </div>

                </div>
                
                
            </div>
        </div>


        <div class="row justify-content-center mt-5">
                <div class="col-md-6 text-center pt2">
                    <div class="card">
                            <br>
                            <br>
                            <h1 class="text-muted h1">User Signup </h1> 
                            <br>
                            <div class="row">
                                <div class="col-sm-2">

                                </div>
                                <div class="col-sm-8">
                                    <form action="signup.php" method="POST">
                                        <div class="form-group">
                                            <input class="form-control form-style" type="text" name="name1" placeholder="Enter Name">
                                            <br>
                                            <input class="form-control form-style" type="text" name="email1" placeholder="Enter Email">
                                            <br>
                                            <input class="form-control form-style" type="password" name="pass" placeholder="Enter Password">
                                            <br>
                                            <button class="btn btn-info" type="submit">Submit</button>
                                        </div>
                                    </form>
                                    <br>
                                    <h3 class="text-muted">Already Have A Account ?  <a href="login1.html">Login</a></h3>
                                </div>
                            </div>

                    </div>
                    
                    
                </div>
            </div>
    </body>
    
</html>