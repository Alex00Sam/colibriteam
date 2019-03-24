<?php
require 'vendor/autoload.php';
require 'connection.php';

$app = new \atk4\ui\App('Your favourites');
$app->initLayout('Centered');

$button = $app->layout->add(['Button','Back on Main', 'green']);
$button->link(['index']);

$place= new Places($db);
<<<<<<< HEAD
$place->addCondition('is_favourite',true);
=======
$place->addCondition('is_favourite',1);
>>>>>>> 08f36a1181097933768ee71b5e2406590d5310f7
/*$array[]=new \atk4\data\Model;
foreach($place as $a){
  if($a['is_favourite']== true){
    $array[]=$a;
  }}
  */
$grid=$app->add('Grid');
$grid->setModel($place);
