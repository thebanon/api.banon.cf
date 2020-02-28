<?php
$data = []; 
count($_GET) > 2 ? include($_GET[2].'.php') : null;
//print_r(json_encode($data, JSON_PRETTY_PRINT)); unset($data);
?>