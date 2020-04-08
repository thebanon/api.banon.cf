<?php
session_start();
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
$data = [];
$_GET = explode('/',trim($_SERVER['REQUEST_URI'],'/'));
$query = array_slice($_GET,2);
$params = count($query);
$endpoints = ['create', 'read', 'update', 'delete'];
$include = count($_GET)>1 && in_array($_GET[1], $endpoints) ? '../'.$_GET[0].'/'.$_GET[1].'/index.php' : '../404.json';
include($include);
print_r(json_encode($data, JSON_PRETTY_PRINT));
unset($data);
?>
