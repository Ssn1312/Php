<?php
require_once "database.php";
$query = "SELECT * FROM  product 
          JOIN image_product    
          ON product.Product_id=image_product.Product_id 
          WHERE product.activity=1 AND
          product.category_id=3";
$result =  $connect->query($query);
?>
<!DOCTYPE>
<html lang="rus">
<head>
    <meta charset="UTF-8" >
    <link   rel="stylesheet" href="main.css">
    <title>Ботинки</title>
</head>
<body>
<?php
while($row=$result->fetch_assoc()){
    echo'<div class="product-item">
    <img alt="'.$row["Alt"].'" src="'.$row["Way_img"].'" >
    <div class="product-list">
        <h3>'.$row["Product_name"].'</h3>
        <p style="opacity: 0.4"><s>'.$row["price"].' Р</s></p><p style="opacity: 0.5">'.$row["sale_price"].' Р</p><p><strong>'.$row["promo_price"].' Р</strong> - с промокодом</p>
        <p>'.$row["Description"].'</p>
        <a href="" class="button">В корзину</a>
        </div>
    </div>';
}?>
</body>
</html>

