<?php
require 'vendor/autoload.php';

$app = new \atk4\ui\App('National library of Latvia');
$app->initLayout('Centered');

$header=$app->add(['Header',$place['name']]);

$image=$app->add(['Image',$place['image']]);

$text=$app->add(['Text',$place['description']]);



$button=$app->add(['Button','Add to favourites']);
$button->link('favorit.php');
