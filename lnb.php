<?php
require 'vendor/autoload.php';
require 'app.php';
require 'connection.php';
$app = new App('public');

$place = new Places($db);
$place->load(1);
$header=$app->add(['Header',$place['name']]);

$image=$app->add(['Image',$place['image']]);

$text=$app->add(['Text',$place['description']]);

$button=$app->add(['Button','Add to favourites']);
$button->on('click',function($button) use ($place){
$place['is_favourite']=true;
});
