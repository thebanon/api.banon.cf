<?php
$ep = $data['get'] = $get = array_values($get);
$data['count'] = $epc = $count = count($get);
$path = $data['path'] = __DIR__;
set_include_path($path);

if($count > 0) {
    
    /*API*/
    $data['key'] = $apikey = 'AIzaSyCcfN0FjpZH9Fz0tTSWTmGcRxAbhCwtvrk';
    require_once $path.'/../../pkg/Google/vendor/autoload.php';    
    $client = new Google_Client();
    $client->setAuthConfig($path.'/../../pkg/Google/client_secret.json');
    $client->setApplicationName("YouTube Fetcher");
    $client->setDeveloperKey($apikey);
    $client->setAccessType('offline');        // offline access
    $client->setIncludeGrantedScopes(true);   // incremental auth
    $client->setScopes(['https://www.googleapis.com/auth/youtube.readonly']);
    $youtube = new Google_Service_YouTube($client);
    
    /*IMPORT*/
    $data['query'] = $query = urldecode($_SERVER['QUERY_STRING']);
    parse_str($query, $vars);
    $data['vars'] = $vars;
    $queryParams = ['id' => $vars['id']];
    $response = $youtube->videos->listVideos('snippet,contentDetails,statistics', $queryParams);
    fwrite(fopen('C:/www/coder-ml/web/db/youtube/v3/videos/'.urlencode($get[count($get)-1]).'.json','w'),json_encode($response));

    /*UPDATE*/
    $dir = __DIR__;
    $data['path'] = $path = 'C:/www/coder-ml/web/db/youtube/v3/videos';
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
        $ids[$x] = $id = explode('.', $arr['id'])[0];
        $prefix = urlencode('?part=snippet,contentDetails,statistics&id=');
        $filename = $vids.$prefix.$id;
        $fn = $filename.'.json';
        $ex = file_exists($fn);
        if($ex == true) {
            $time = filemtime($fn);
            $data['update'][$time] = $id;
        }
        $x++;
    }

    $data['update'] = $update = array_values($data['update']);
    $text = json_encode($update,JSON_PRETTY_PRINT);
    fwrite(fopen($path.'/'.urlencode('index.json'),'w'),$text);

}
?>