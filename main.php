<?php
require 'vendor/autoload.php';
session_start();


//$_SESSION['city']=$_GET['city'];

//$app = new \atk4\ui\App($_SESSION['city']);
$app = new \atk4\ui\App('Rīga');
$app->initLayout('Centered');


$img = 'https://www.lnb.lv/sites/default/files/field/image/img_0173_foto-anete-krumina.jpg';
$image = $app->add(['Image',$img,'small']);
$image->on('click',function($image){
  return new \atk4\ui\jsExpression('document.location="lnb.php"');
});


$img2 = 'https://www.likealocalguide.com/media/cache/0c/07/0c071343953aed5a2c3f6fa47484482c.jpg';
$image2 = $app->add(['Image',$img2,'small']);
$image2->on('click',function($image2){
  return new \atk4\ui\jsExpression('document.location="oldriga1.php"');
});
