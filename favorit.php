<?php
require 'vendor/autoload.php';
require 'connection.php';

$app = new \atk4\ui\App('Your favourites');
$app->initLayout('Centered');
$place= new Places($db);
$place->addCondition(['is_favourite',1]);
/*$array[]=new \atk4\data\Model;
foreach($place as $a){
  if($a['is_favourite']== true){
    $array[]=$a;
  }}
  */
$grid=$app->add('Grid');
$grid->setModel($place);
