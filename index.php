<?php
require 'vendor/autoload.php';
require 'app.php';
session_start();

unset($_SESSION['city']);
unset($_SESSION['place']);

$app = new App('public');
$app->initLayout('Centered');


$col = $app->layout->add('Columns');
$col_left = $col->addColumn(8);
$col_right = $col->addColumn(8);

$col_left->add(['Header', 'Sveicināti!!!','massive red']);
$message = $col_left->add(['Message', 'Šeit Jūs varēsiet uzzināt par ekskursijām ap Latviju.', 'type'=>'positive','icon'=>'smile outline']);


$img = 'http://www.clker.com/cliparts/e/5/2/8/1195430727372284989eady_Treasure_Map.svg.hi.png';
$image = $col_left->add(['Image',$img]);

$menu = $col_right->add(['Menu','massive secondary vertical']);
$attractions = $menu->addGroup('Attractions');

$county = $attractions->addGroup('County');

 $kurzeme = $county->addGroup('Kurzeme');
    $ventspils = $kurzeme->addItem('Ventspils');
    $ventspils->link(['main','city'=>'Ventspils']);

    $liepaja = $kurzeme->addItem('Liepaja');
    $liepaja->link(['main','city'=>'Liepaja']);

 $vidzeme = $county->addGroup('Vīdzeme');
    $riga = $vidzeme->addItem('Rīga');
    $riga->link(['main','city'=>'Rīga']);

    $jurmala = $vidzeme->addItem('Jūrmala');
    $jurmala->link(['main','city'=>'Jūrmala']);

 $zemgale = $county->addGroup('Zemgale');
    $jelgava = $zemgale->addItem('Jelgava');
    $jelgava->link(['main','city'=>'Jelgava']);

    $bauska = $zemgale->addItem('Bauska');
    $bauska->link(['main','city'=>'Bauska']);

 $latgale = $county->addGroup('Latgale');
    $daugavpils = $latgale->addItem('Daugavpils');
    $daugavpils->link(['main','city'=>'Daugavpils']);

    $rezekne = $latgale->addItem('Rēzekne');
    $rezekne->link(['main','city'=>'Rēzekne']);
