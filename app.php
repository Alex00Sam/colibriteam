<?php
//require 'connection.php';

Class App extends \atk4\ui\App{
    public $db;
    public $sms;
    function __construct($mode) {
       parent::__construct('Latvia Journey');
       If ($mode == 'public') {
          $this->initLayout('Centered');
          $this->layout->template->del('Header');

          $logo = 'image_compas.png';

           $this->layout->add(['Image', $logo, 'medium centered'], 'Header');

          $this->layout->add([
             'Header',
             'Latvia Journey',
             'size'=>'huge',
             'aligned'=>'center'
           ],'Header');




        }elseif($mode == 'admin') {
           $this->initLayout('Admin');
           $this->layout->leftMenu->addItem(['Main menu', 'icon'=>'home'], ['index']);
           $this->layout->leftMenu->addItem(['Admin', 'icon'=>'places'], ['admin']);
           $this->layout->leftMenu->addItem(['Places', 'icon'=>'unordered list'], ['trytest']);
        }
       }
    }
