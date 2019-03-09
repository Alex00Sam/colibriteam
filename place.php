<?php
require 'vendor/autoload.php';
require 'index.php';

$app = new \atk4\ui\App(' x место ');
$app->initLayout('Centered');

$Button=$app->add('LNB');
$button->link('lnb.php');
