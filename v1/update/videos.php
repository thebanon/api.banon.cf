<?php
unset($get[0]); unset($get[1]); unset($get[2]);
$get = array_values($get);
//$ep = $data['get'] = $get = array_values($get);
//$data['count'] = $epc = $count = count($get);
//$data['SERVER'] = $_SERVER;
$dir = __DIR__;
$data['path'] = $path = $dir.'/../../../../coder-ml/web/db/youtube/v3/videos';
set_include_path($path);
$files = scandir($path);

$data['count'] = $count = count($files)-3;
$x = 0; 
$array = array();
$ids = array();
$update = array();
while($x<$count) {
    $array[$x] = $file = substr(urldecode($files[$x]),1);
    parse_str($file,$arr);
    $id = $arr['id'];
    //$data['arrs'][$x] = $arr;
    $vids = 'C:/www/coder-ml/web/db/youtube/v3/videos/';
    $ids[$x] = explode('.', $id)[0];
    $prefix = urlencode('?part=snippet,contentDetails,statistics&id=');
    $filename = $vids.$prefix.$id;
    $fn = $filename;
    $ex = file_exists($fn);
    $time = filemtime($fn);
    $ex ? $update[$time] = $ids[$x] : null;
    $x++;
}

krsort($update);
$data['update'] = $update = array_values($update);
$text = json_encode($update,JSON_PRETTY_PRINT);
fwrite(fopen($path.'/'.urlencode('index.json'),'w'),$text);
?>