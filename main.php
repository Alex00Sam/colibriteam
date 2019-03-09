<?php
require 'vendor/autoload.php';

$app = new \atk4\ui\App($_GET['city']);
$app->initLayout('Centered');


$img = 'https://upload.wikimedia.org/wikipedia/commons/a/ad/National_Library_of_Latvia.jpg';
$image = $app->add(['Image',$img]);
$image->link('lnb');
