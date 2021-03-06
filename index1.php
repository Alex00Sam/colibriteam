<?php
require 'vendor/autoload.php';
$app = new \atk4\ui\App('Tour around Latvia');
$app->initLayout('Centered');
$menu = $app->add('Menu');

$attractions = $menu->addMenu('Tours');

$county = $attractions->addMenu('County');

$kurzeme = $county->addMenu('Kurzeme');
$zemgale = $county->addMenu('Zemgale');
$vidzeme = $county->addMenu('Vidzeme');
$latgale = $county->addMenu('Latgale');

$riga = $vidzeme->addMenu('Riga');
$liepaja = $kurzeme->addMenu('Liepaja');
//$ventspils = $kurzeme->addMenu('Ventspils');
$jurmala = $vidzeme->addMenu('Jurmala');
$daugavpils =$latgale->addMenu('Daugavpils');
$jelgava =$zemgale->addMenu('Jelgava');

$oldriga = $riga->add(['Button','Old Riga']);
$oldriga ->link(['oldriga']);

$ventspils = $kurzeme->add(['Button','Ventspils']);
$ventspils->link(['ventspils']);



/*$ventspils = $kurzeme->addMenu('Ventspils');
$liepaja = $kurzeme->addMenu('Liepaja');
$riga = $vidzeme->addMenu('Riga');
$jurmala = $vidzeme->addMenu('Jurmala');
$daugavpils = $zemgale->addMenu('Daugavpils');*/
