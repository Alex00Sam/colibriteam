<?php
require 'vendor/autoload.php';
require 'index.php';

$app = new \atk4\ui\App($_SESSION['city']);
$app->initLayout('Centered');
