<?php
$param = 'home'; // default parameter menuju ke homepage (home.php)
$uri = $_SERVER['REQUEST_URI'];
if (strpos($uri, '?')) {
  $tmp =  explode('?', $uri);
  $param = $tmp[1];
  $param = $param ? $param : 'home';
}

$target_page = "$param.php";

// echo $target_page;
if (file_exists($target_page)) {
  include $target_page;
} else {
  include 'na.php';
}
