
<?php
require 'vendor/autoload.php';
$db = new \atk4\data\Persistence_SQL('mysql:dbname=tourism in latvia;host=localhost','root','');

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
    $this -> hasMany('Places',new Places);
  }
}

Class Places extends \atk4\data\Model {
  public $table ='places';
  Function init() {
    parent::init();
    $this -> addField('name');
    $this -> addField('description');
    $this -> addField('image');
    $this-> addField('is_favourite');
    $this -> hasOne('cities_id',new Cities);
  }
}
