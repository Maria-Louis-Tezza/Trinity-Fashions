<?php
session_start();

function connect_mysql() {
    // Update the details below with your MySQL details
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'minorprg';
    try {
    	return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
    	// If there is an error with the connection, stop the script and display the error.
    	exit('Failed to connect to database!');
    }
}



// Template header, feel free to customize this
function template_header($title) {
// Get the amount of items in the shopping cart, this will be displayed in the header.
$num_items_in_cart = isset($_SESSION['cart']) ? count($_SESSION['cart']) : 0;
echo <<<EOT
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>$title</title>

		<link href="css/reciept.css" rel="stylesheet" type="text/css">
        <link href="css/nav.css" rel="stylesheet" type="text/css">
        <link href="css/footer.css" rel="stylesheet" type="text/css">
        <link href="css/home.css" rel="stylesheet" type="text/css">
        <link href="css/product.css" rel="stylesheet" type="text/css">
        <link href="css/cart.css" rel="stylesheet" type="text/css">
        <link href="css/header.css" rel="stylesheet" type="text/css">
        <link href="css/collection.css" rel="stylesheet" type="text/css">

		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body>
        <header class="header-section">

            
                <nav>
                <div class="nav">
                <img src="imgs/tflogo.png" class="brand-logo" alt="">
                    <div class="nav-items">
                    <form method=post action='search.php'>
                        <div class="search">
                        
                            <input type="text" id="searchele" name="searchele" class="search-box" placeholder="search brand, product">
                            <button class="search-btn" type='submit'>search</button>
                       
                        </div>
                        </form>
                        <a href="login.html" target="_blank"><img src="imgs/user.png" alt="" title="LOGIN"></a>
                        <a href="index.php?page=Cart"><img src="imgs/cart.png" alt=""> <span class="link">$num_items_in_cart</span>  </a>
                        <a href="registration.html" target="_blank"><img src="imgs/registration.png" alt=""></a>
                        <a href="sellerlogin.html" target="_blank"><img src="imgs/seller.png" alt=""></a>
                        <a href="logout.php" target="_self"><img src="imgs/logout.png" alt=""></a>
                        <a href="index.php?page=cart"> </a>
                        
                    </div>
                </div>
                <ul class="links-container">
                    <li class="link-item"><a href="index.php" class="link">home</a></li>
            
                        
                    
                    <li class="link-item"><a href="women_collection.php" class="link">women</a></li>         
                    <li class="link-item"><a href="men_collection.php" class="link">men</a></li>
                    <li class="link-item"><a href="kids_collection.php" class="link">kids</a></li>
                    <li class="link-item"><a href="accessories_collection.php" class="link">accessories</a></li>
                </ul>
            
                
                
                
            
        </header>
        
EOT;
}


function template_headercard() {

    echo <<<EOT
    <section class="hero-section">
                    <img src="imgs/collection3.png" class="logo" alt="">
                        <p class="sub-heading">best fashion collection                   
                    </p>
                </section>

            
    EOT;
    }


// Template footer
function template_footer() {
$year = date('Y');
echo <<<EOT
<section class="footersec">
<div class="footer-content">
    <img src="imgs/tflogo1.png" class="logo" alt="">
</div>
<p class="footer-title">about company</p>
<p class="info">This section is a part where the description about the company which deals with various fashion products </p>
<p class="info">support emails - help@clothing.com, customersupport@clothing.com</p>
<p class="info">telephone - 998687773, 9944356677</p>
<div class="footer-social-container">
<div>
    <a href="#" class="social-link">terms & services</a>
    <a href="#" class="social-link">privacy page</a>
</div>
<div>
    <a href="#" class="social-link">instagram</a>
    <a href="#" class="social-link">facebook</a>
    <a href="#" class="social-link">twitter</a>
</div>
</div>
<p class="footer-credit">Clothing, Best apparels online store</p>
`;
</section>
EOT;
}

?>