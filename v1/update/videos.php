<?php
unset($get[0]); unset($get[1]); unset($get[2]);
$get = array_values($get);
//$ep = $data['get'] = $get = array_values($get);
//$data['count'] = $epc = $count = count($get);
//$data['SERVER'] = $_SERVER;
$dir = __DIR__.'/../../../../coder-ml/web/db/youtube/v3/videos';
set_include_path($dir);
$data['files'] = $files = scandir($dir);
$data['count'] = count($files)-3;
?>