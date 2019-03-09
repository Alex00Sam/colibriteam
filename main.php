<?php
require 'vendor/autoload.php';

$app = new \atk4\ui\App($_GET['city']);
$app->initLayout('Centered');
