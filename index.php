<?php
require 'vendor/autoload.php';

$app = new \atk4\ui\App('On a trip around Latvia');
$app->initLayout('Centered');

$menu = $app->add('Menu');
$attractions = $menu->addMenu('Attractions');

$county = $attractions->addMenu('County');
$kurzeme = $county->addItem('Kurzeme');


$vidzeme = $county->addItem('Vīdzeme');
$riga = $vidzeme->addItem('Rīga');
$jurmala = $vidzeme->addItem('Jūrmala');

$zemgale = $county->addItem('Zemgale');


$latgale = $county->addItem('Latgale');



$ventspils = $kurzeme->addItem('Ventspils');
$liepaja = $kurzeme->addItem('Ventspils');



$daugavpils = $zemgale->addItem('Daugavpils');
