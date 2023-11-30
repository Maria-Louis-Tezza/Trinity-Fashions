<?php

// include 'index.php';

// Get the 4 most recently added products
$stmt1 = $pdo->prepare('SELECT * FROM products ORDER BY date_added DESC LIMIT 9');
$stmt1->execute();
$recently_added_products = $stmt1->fetchAll(PDO::FETCH_ASSOC);
?>

<?=template_header('Home')?>
<?=template_headercard()?>



<section class="recentlyaddedsection">


<div class="recentlyadded content-wrapper-home1">

        <?php
            $name="";
            if(isset($_SESSION['username'])){
                $name=$_SESSION['username'];
                echo "<h1 class='unamesec'>Welcome,$name </h1> ";
                
            } else{
                echo " ";
            }
        
        ?>
    <h2 class="product-category">Recently Added Products</h2>
                   
                <button class="pre-btn"><img src="imgs/arrow.png" alt=""></button>
                <button class="nxt-btn"><img src="imgs/arrow.png" alt=""></button>
            <div class="product-container">
            <?php foreach ($recently_added_products as $product1): ?>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <a href="index.php?page=product&id=<?=$product1['id']?>" class="product1">
                            <img src="imgs/<?=$product1['img1']?>" width='320' height="340" alt="<?=$product1['name']?>" class="product-thumb">
                        </a>
                        <button class="card-btn"><?=$product1['descr']?></button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand"><?=$product1['name']?></h2>
                        
                        <span class="price">
                        Rs.<?=$product1['reducedprice']?>
                        <?php if ($product1['markedprice'] > 0): ?>
                        <span class="actual-price">Rs.<?=$product1['markedprice']?></span>
                        <?php endif; ?>
                        </span>
                        
                        </div>

            </div>
                <?php endforeach; ?>
                
            </div>
                


</section>  



    <section class="collection-container">
            <a href="#womencoll" class="collection">
                <img src="imgs/women-collection.png" alt="">
                <p class="collection-title">women <br> apparels</p>
            </a>
            <a href="#mencoll" class="collection">
                <img src="imgs/men-collection.png" alt="">
                <p class="collection-title">men <br> apparels</p>
            </a>
            <a href="#acccoll" class="collection">
                <img src="imgs/accessories-collection.png" alt="">
                <p class="collection-title">accessories</p>
            </a>
        </section>

<?php
// Get the 4 most recently added products
$stmt2 = $pdo->prepare('SELECT * FROM products WHERE category="Men"');
$stmt2->execute();
$men_collection = $stmt2->fetchAll(PDO::FETCH_ASSOC);
?>


<section id="mencoll">
    
<div class="recentlyadded content-wrapper-home2">

    <h2 class="product-category">MEN COLLECTIONS</h2>
            
            <button class="pre-btn"><img src="imgs/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="imgs/arrow.png" alt=""></button>
            <div class="product-container">
            <?php foreach ($men_collection as $product2): ?>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <a href="index.php?page=product&id=<?=$product2['id']?>" class="product1"> 
                            <img src="imgs/<?=$product2['img1']?>" width='320' height="350" alt="<?=$product2['name']?>" class="product-thumb">
                        </a>
                        <button class="card-btn"><?=$product2['descr']?></button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand"><?=$product2['name']?></h2>
                        
                        <span class="price">
                        Rs.<?=$product2['reducedprice']?>
                        <?php if ($product2['markedprice'] > 0): ?>
                        <span class="actual-price">Rs.<?=$product2['markedprice']?></span>
                        <?php endif; ?>
                        </span>
                        
                        </div>

            </div>
                <?php endforeach; ?>
            </div>
           
</section>  

<?php
// Get the 4 most recently added products
$stmt3 = $pdo->prepare('SELECT * FROM products WHERE category="Accessory"');
$stmt3->execute();
$accessory = $stmt3->fetchAll(PDO::FETCH_ASSOC);
?>


<section id="acccoll">
<div class="recentlyadded content-wrapper-home3">

    <h2 class="product-category">ACCESSORIES</h2>
            
            <button class="pre-btn"><img src="imgs/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="imgs/arrow.png" alt=""></button>
            <div class="product-container">
            <?php foreach ($accessory as $product3): ?>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <a href="index.php?page=product&id=<?=$product3['id']?>" class="product1"> 
                            <img src="imgs/<?=$product3['img1']?>" width='320' height="350" alt="<?=$product3['name']?>" class="product-thumb">
                        </a>
                        <button class="card-btn"><?=$product3['descr']?></button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand"><?=$product3['name']?></h2>
                        
                        <span class="price">
                        Rs.<?=$product3['reducedprice']?>
                        <?php if ($product3['markedprice'] > 0): ?>
                        <span class="actual-price">Rs.<?=$product3['markedprice']?></span>
                        <?php endif; ?>
                        </span>
                        
                        </div>

            </div>
                <?php endforeach; ?>
            </div>
           
</section>  


<?php
// Get the 4 most recently added products
$stmt4 = $pdo->prepare('SELECT * FROM products WHERE category="Women"');
$stmt4->execute();
$women_collection = $stmt4->fetchAll(PDO::FETCH_ASSOC);
?>


<section id="womencoll">
<div class="recentlyadded content-wrapper-home4">

    <h2 class="product-category">WOMEN COLLECTIONS</h2>
            
            <button class="pre-btn"><img src="imgs/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="imgs/arrow.png" alt=""></button>
            <div class="product-container">
            <?php foreach ($women_collection as $product4): ?>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <a href="index.php?page=product&id=<?=$product4['id']?>" class="product1"> 
                            <img src="imgs/<?=$product4['img1']?>" width='320' height="350" alt="<?=$product4['name']?>" class="product-thumb">
                        </a>
                        <button class="card-btn"><?=$product4['descr']?></button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand"><?=$product4['name']?></h2>
                        
                        <span class="price">
                        Rs.<?=$product4['reducedprice']?>
                        <?php if ($product4['markedprice'] > 0): ?>
                        <span class="actual-price">Rs.<?=$product4['markedprice']?></span>
                        <?php endif; ?>
                        </span>
                        
                        </div>

            </div>
                <?php endforeach; ?>
            </div>
           
</section>  

<?php
// Get the 4 most recently added products
$stmt5 = $pdo->prepare('SELECT * FROM products WHERE category="Kids"');
$stmt5->execute();
$kids_collection = $stmt5->fetchAll(PDO::FETCH_ASSOC);
?>


<section>
<div class="recentlyadded content-wrapper-home5">

    <h2 class="product-category">KIDS COLLECTIONS</h2>
            
            <button class="pre-btn"><img src="imgs/arrow.png" alt=""></button>
            <button class="nxt-btn"><img src="imgs/arrow.png" alt=""></button>
            <div class="product-container">
            <?php foreach ($kids_collection as $product5): ?>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <a href="index.php?page=product&id=<?=$product5['id']?>" class="product1"> 
                            <img src="imgs/<?=$product5['img1']?>" width='320' height="350" alt="<?=$product5['name']?>" class="product-thumb">
                        </a>
                        <button class="card-btn"><?=$product5['descr']?></button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand"><?=$product5['name']?></h2>
                        
                        <span class="price">
                        Rs.<?=$product5['reducedprice']?>
                        <?php if ($product5['markedprice'] > 0): ?>
                        <span class="actual-price">Rs.<?=$product5['markedprice']?></span>
                        <?php endif; ?>
                        </span>
                        
                        </div>

            </div>
                <?php endforeach; ?>
            </div>
           
</section>  


<script src="js/home.js"></script>

<?=template_footer()?>