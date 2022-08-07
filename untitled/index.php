<?php
require_once "database.php";
$query = "SELECT * FROM  category";
$result =  $connect->query($query);


?>
<!DOCTYPE>
<html lang="rus">
<head>
<meta charset="UTF-8" >
<link   rel="stylesheet" href="main.css">
    <title >Каталог товаров</title>
</head>
<body>
<h1 class="title">Lamoda</h1>
<div class="category">Категории товаров</div>
<div class="pos">
    <?php
    while($row=$result->fetch_assoc()){
        echo'<div class="product-inner">
    <div class="product-wrap">
    <a href="'.$row["way"].'">
        <img alt="'.$row["Description"].'" src="'.$row["img"].'"></a>
    </div>
    <div class="product-info">
        <h3 class="product-title">'.$row["Category_title"].'</h3>
    </div>';
    }?>
</div>

</div>
</body>

</html>
