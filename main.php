<?php
require 'vendor/autoload.php';
require 'app.php';
require 'connection.php';

session_start();


//$_SESSION['city']=$_GET['city'];

//$app = new \atk4\ui\App($_SESSION['city']);
$app = new App('public');

$city = new Cities ($db);
$city->load($_SESSION['city_id']);
$places = $city->ref('Places');


/*foreach ($places as $a) {
  $img = $app->add(['Image',$a['image'], 'small']);
//  $img->link(['place']);
  $img->on('click',function($img)use($a){
    return new \atk4\ui\jsExpression('document.location="place.php?id={$a->id}"');
  });
}*/

$img = 'https://www.lnb.lv/sites/default/files/field/image/img_0173_foto-anete-krumina.jpg';
$image = $app->add(['Image',$img,'small']);

$link='document.location="lnb.php"';
$image->on('click',function($image)use ($link,$app){
  //return new \atk4\ui\jsExpression($link);
  return $app->jsRedirect('https://translate.google.com');
});
