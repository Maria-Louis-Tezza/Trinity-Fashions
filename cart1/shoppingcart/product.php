<?php
// Check to make sure the id parameter is specified in the URL
if (isset($_GET['id'])) {
    // Prepare statement and execute, prevents SQL injection
    $stmt = $pdo->prepare('SELECT * FROM products WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    // Fetch the product from the database and return the result as an Array
    $product = $stmt->fetch(PDO::FETCH_ASSOC);
    // Check if the product exists (array is not empty)
    if (!$product) {
        // Simple error to display if the id for the product doesn't exists (array is empty)
        exit('Product does not exist!');
    }
} else {
    // Simple error to display if the id wasn't specified
    exit('Product does not exist!');
}
?>

<?=template_header('Product')?>

<div class="product1 content-wrapperpdt">
    
    <div class="slideshow-container">

        <div class="mySlides fade">
        <div class="numbertext">1 / 4</div>
        <img src="imgs/<?=$product['img1']?>" width='320' height='340' alt='<?=$product?>' class='product-thumb'style="width:100%">
        <div class="text">picture 1</div>
        </div>

        <div class="mySlides fade">
        <div class="numbertext">2 / 4</div>
        <img src="imgs/<?=$product['img2']?>" width='320' height='340' alt='<?=$product?>' class='product-thumb'style="width:100%">
        <div class="text">picture 2</div>
        </div>

        <div class="mySlides fade">
        <div class="numbertext">3 / 4</div>
        <img src="imgs/<?=$product['img3']?>" width='320' height='340' alt='<?=$product?>' class='product-thumb'style="width:100%">
        <div class="text">picture 3</div>
        </div>

        <div class="mySlides fade">
        <div class="numbertext">4 / 4</div>
        <img src="imgs/<?=$product['img4']?>" width='320' height='340' alt='<?=$product?>' class='product-thumb'style="width:100%">
        <div class="text">picture 4</div>
        </div>

        </div>

        <div class="product-con">
        <h1 class="name"><?=$product['name']?></h1>
        <span class="price">
            Rs.<?=$product['reducedprice']?>
            <?php if ($product['markedprice'] > 0): ?>
            <span class="rrp">Rs.<?=$product['markedprice']?></span>
            <?php endif; ?>
        </span>


        <div class="details">
            <p class="product-sub-heading">select size</p>
    
            <input type="radio" name="size" value="s" checked hidden id="s-size">
            <label for="s-size" class="size-radio-btn check">s</label>
            <input type="radio" name="size" value="m" hidden id="m-size">
            <label for="m-size" class="size-radio-btn">m</label>
            <input type="radio" name="size" value="l" hidden id="l-size">
            <label for="l-size" class="size-radio-btn">l</label>
            <input type="radio" name="size" value="xl" hidden id="xl-size">
            <label for="xl-size" class="size-radio-btn">xl</label>
            <input type="radio" name="size" value="xxl" hidden id="xxl-size">
            <label for="xxl-size" class="size-radio-btn">xxl</label>
    
        </div>

        <br>

        <div style="text-align:center" class="dots">
        <span class="dot"></span> 
        <span class="dot"></span> 
        <span class="dot"></span>
        <span class="dot"></span> 
        </div>

    
        <form action="index.php?page=cart" method="post">
            <input type="number" name="quantity" value="1" min="1" max="<?=$product['quantity']?>" placeholder="Quantity" required>
            <input type="hidden" name="product_id" value="<?=$product['id']?>">
            <input type="submit" value="Add To Cart">
        </form>
        <div class="description">
            <p><?=$product['descr']?></p>
        </div>
    </div>
</div>

<script src="js/product.js"></script>



<?=template_footer()?>

