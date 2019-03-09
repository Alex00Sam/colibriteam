<?php
require 'vendor/autoload.php';
session_start();

unset($_SESSION['city']);
unset($_SESSION['place']);

$app = new \atk4\ui\App('On a trip around Latvia');
$app->initLayout('Centered');

$menu = $app->add('Menu');
$attractions = $menu->addMenu('Attractions');

$county = $attractions->addMenu('County');

 $kurzeme = $county->addMenu('Kurzeme');
    $ventspils = $kurzeme->addItem('Ventspils');
    $ventspils->link('main.php',$_SESSION['city']='Ventspils');

    $liepaja = $kurzeme->addItem('Liepaja');

 $vidzeme = $county->addMenu('Vīdzeme');
    $riga = $vidzeme->addItem('Rīga');
    $jurmala = $vidzeme->addItem('Jūrmala');

 $zemgale = $county->addMenu('Zemgale');
    $jelgava = $zemgale->addItem('Daugavpils');

 $latgale = $county->addMenu('Latgale');
    $daugavpils = $latgale->addItem('Daugavpils');
