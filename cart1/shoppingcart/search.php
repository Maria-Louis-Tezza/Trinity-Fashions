<?php
    $ele= $_POST['searchele'];
?>

<?php
    include_once 'functions.php';
    include_once 'mysqli_connect.php';
$stmt1 ="SELECT * FROM products WHERE name='$ele'";
$result = mysqli_query($conn,$stmt1);
$search = $result -> fetch_all(MYSQLI_ASSOC);

template_header('search');
?>

<section>
<div class="recentlyadded content-wrapper-search">

    <h2 class="product-category">SEARCH RESULTS :</h2>
        
            <div class="product-container-kids">
            <?php foreach ($search as $product2): ?>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag">50% off</span>
                        <a href="index.php?page=product&id=<?=$product2['id']?>" class="product1"> 
                            <img src="imgs/<?=$product2['img1']?>" width='320' height="350" alt="<?=$product2['name']?>" class="product-thumb">
                        </a>
                        <?php var_dump($product2['img1']); ?>
                        <button class="card-btn"><?=$product2['descr']?></button>
                    </div>
                    <div class="product-info">
                        <?php
                            $cat=$product2['category'];
                        ?>
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


            <?php
                $stmt2 ="SELECT * FROM products WHERE category='$cat'";
                $result = mysqli_query($conn,$stmt2);
                $similar = $result -> fetch_all(MYSQLI_ASSOC);

            ?>

        
            <div class="recentlyadded content-wrapper-similar">
             <h2 class="product-category">SIMILAR PRODUCTS:</h2>
                
                
                <div class="product-container-kids">
                <?php foreach ($similar as $product2): ?>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag">50% off</span>
                            <a href="index.php?page=product&id=<?=$product2['id']?>" class="product1"> 
                                <img src="imgs/<?=$product2['img1']?>" width='320' height="350" alt="<?=$product2['name']?>" class="product-thumb">
                            </a>
                            <?php var_dump($product2['img1']); ?>
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

<?=template_footer()?>