
<?php
require 'vendor/autoload.php';
require 'app.php';
require 'connection.php';
session_start();

unset($_SESSION['city']);
unset($_SESSION['place']);

$app = new App('public');



$col = $app->layout->add('Columns');

$col_left = $col->addColumn(8);
$col_right = $col->addColumn(8);

$col_left->add(['Header', 'Sveicināti!!!','massive red']);
$message = $col_left->add(['Message', 'Šeit Jūs varēsiet uzzināt par ekskursijām ap Latviju. Mēs Jūms piedāvām tādas pilsētas
                                       kā Rīga, Jūrmala, Jelgava, Daugavpils un citi.
                                       Jūs arī varāt pievienot Jums interesantas vietas favorītiem,
                                       lai citā laikā velreiz noskatīties.', 'type'=>'positive','icon'=>'smile outline']);

$button1 = $col_left->add(['Button','Favourites', 'purple']);
$button1->link(['favorit']);

$img = 'http://www.clker.com/cliparts/e/5/2/8/1195430727372284989eady_Treasure_Map.svg.hi.png';
$image = $col_right->add(['Image',$img]);

$app->add(['ui'=>'divider']);

$col = $app->layout->add('Columns');
$col_a[0] = $col ->addColumn(2);
$col_a[1] = $col ->addColumn(2);
$col_a[2] = $col ->addColumn(2);
$col_a[3] = $col ->addColumn(2);
$col_a[4] = $col ->addColumn(2);
$col_a[5] = $col ->addColumn(2);
$menu_a[0] = $col_a[0]->add(['Menu','massive secondary vertical']);
$menu_a[1] = $col_a[1]->add(['Menu','massive secondary vertical']);
$menu_a[2] = $col_a[2]->add(['Menu','massive secondary vertical']);
$menu_a[3] = $col_a[3]->add(['Menu','massive secondary vertical']);
$menu_a[4] = $col_a[4]->add(['Menu','massive secondary vertical']);
$menu_a[5] = $col_a[5]->add(['Menu','massive secondary vertical']);



$city = new Cities($db);
//$menu = $col1->add(['Menu','massive secondary vertical']);
//$cities = $menu->addGroup('Cities');
$i=0;


foreach ($city as $a) {
  $i=$i+1;
 $item = $menu_a[$i/20]->addItem($a['name']);

  $item->link(['bruh','id'=>$a->id]);

//  $item->on('click',function($item)use($a){
//
//    return new \atk4\ui\jsExpression('document.location="place.php"');
//  });


}
/*foreach ($city as $a) {

  $i=$i+1;
  if ($i > 20) {

    $menu = $col2->add(['Menu','massive secondary vertical']);
//    $cities = $menu->addGroup('Cities');
    $menu->addItem($a['name']);
    if ($i > 40) {

      $menu = $col3->add(['Menu','massive secondary vertical']);
  //    $cities = $menu->addGroup('Cities');
      $menu->addItem($a['name']);
      if ($i > 60) {

        $menu = $col4->add(['Menu','massive secondary vertical']);
    //    $cities = $menu->addGroup('Cities');
        $menu->addItem($a['name']);
        if ($i > 80) {

          $menu = $col5->add(['Menu','massive secondary vertical']);
      //    $cities = $menu->addGroup('Cities');
          $menu->addItem($a['name']);
          if ($i > 100) {

            $menu = $col6->add(['Menu','massive secondary vertical']);
        //    $cities = $menu->addGroup('Cities');
            $menu->addItem($a['name']);
          }
        }
      }
    }
  } else {
    $menu->addItem($a['name']);
  }




}*/


//$app->add(['CRUD'])->setModel(new Places($db));
//$cities->addItem(new Cities($db),['name']);
/*
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
*/
