<?php
    include_once 'functions.php';
    include_once 'mysqli_connect.php';
$stmt1 ='SELECT * FROM products WHERE category="Men"';
$result = mysqli_query($conn,$stmt1);
$men_collection = $result -> fetch_all(MYSQLI_ASSOC);
// var_dump($result);

template_header('men_collection');
?>


<section>
<div class="men content-wrapper-men">

    <h2 class="product-category">MEN COLLECTIONS</h2>
            
            
            <div class="product-container-men">
            <?php foreach ($men_collection as $product2): ?>
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
