
<?php
require 'vendor/autoload.php';
$db = new \atk4\data\Persistence_SQL('mysql:dbname=bank;host=localhost','sexking','lehaloh');

Class Edges extends \atk4\data\Model {
  public $table ='edges';
  Function init() {
    parent::init();
    $this -> addField('name');
    $this -> hasMany('Cities',new Cities);
  }
}
Class Cities extends \atk4\data\Model {
  public $table ='cities';
  Function init() {
    parent::init();
    $this -> addField('name');
    $this -> hasOne('edges_id',new Edges);
    $this -> hasMany('Places',new Places);
  }
}

Class Places extends \atk4\data\Model {
  public $table ='accounts';
  Function init() {
    parent::init();
    $this -> addField('name');
    $this -> addField('description');
    $this -> addField('image');
    $this -> hasOne('cities_id',new Cities);
  }
}

$edge = new Edges($db);
$edge = new Edges($db);
$edge = new $;
