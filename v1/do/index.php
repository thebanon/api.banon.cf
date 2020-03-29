<?php
$data = []; 
count($_GET) > 2 ? include($_GET[2].'.php') : null;
if($_GET[2] !== 'logo') { print_r(json_encode($data, JSON_PRETTY_PRINT)); }
unset($data);
function cache($data,$name) {
    $file = "/home/api/public_html/cache/".$name;
    touch($file);
    chmod($file, 0744);
    $cache = fopen($file, "w");
    fwrite($cache, json_encode($data, JSON_PRETTY_PRINT));
    fclose($cache);
}
?>