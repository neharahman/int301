<nav class="navbar navbar-expand-lg navbar-dark primary-color">
    <a class="navbar-brand" href="#">Bikera</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
        aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="basicExampleNav">
        <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
            <a class="nav-link" href="home.php">Home &nbsp;
            <span class="sr-only">(current)</span>
            </a>
        </li>
        <?php 
        if($_SESSION['user_id'])
        {
            echo '<li class="nav-item">
            <a class="nav-link" href="wishlist.php">Wishlist&nbsp;</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout.php">Log out</a>
            </li>';
        }
        else
        {
            echo '<li class="nav-item">
            <a class="nav-link" href="login1.php">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="signup1.php">SignUp</a>
            </li>';

        }
        ?>
        
    </div>
</nav>