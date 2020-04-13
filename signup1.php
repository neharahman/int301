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