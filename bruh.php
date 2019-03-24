<?php

session_start();

$_SESSION['city_id']=$_GET['id'];
header ('location: main.php');
