<?php
require 'vendor/autoload.php';
session_start();

unset($_SESSION['city']);
unset($_SESSION['place']);

$app = new \atk4\ui\App('Latvia Journey');
$app->initLayout('Centered');

$app->add(['Header', 'Sveicināti!!!']);
$app->add(['Text', 'Šeit Jūs '])

$menu = $app->add('Menu');
$attractions = $menu->addMenu('Attractions');

$county = $attractions->addMenu('County');

 $kurzeme = $county->addMenu('Kurzeme');
    $ventspils = $kurzeme->addItem('Ventspils');
    $ventspils->link(['main','city'=>'Ventspils']);

    $liepaja = $kurzeme->addItem('Liepaja');
    $liepaja->link(['main','city'=>'Liepaja']);

 $vidzeme = $county->addMenu('Vīdzeme');
    $riga = $vidzeme->addItem('Rīga');
    $riga->link(['main','city'=>'Rīga']);

    $jurmala = $vidzeme->addItem('Jūrmala');
    $jurmala->link(['main','city'=>'Jūrmala']);

 $zemgale = $county->addMenu('Zemgale');
    $jelgava = $zemgale->addItem('Jelgava');
    $jelgava->link(['main','city'=>'Jelgava']);

    $bauska = $zemgale->addItem('Bauska');
    $bauska->link(['main','city'=>'Bauska']);

 $latgale = $county->addMenu('Latgale');
    $daugavpils = $latgale->addItem('Daugavpils');
    $daugavpils->link(['main','city'=>'Daugavpils']);

    $rezekne = $latgale->addItem('Rēzekne');
    $rezekne->link(['main','city'=>'Rēzekne']);
