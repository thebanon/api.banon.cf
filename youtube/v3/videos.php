<?php
$ep = $data['get'] = $get = array_values($get);
$data['count'] = $epc = $count = count($get);
$path = $data['path'] = __DIR__;
set_include_path($path);

if($count > 0) {
    
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
    

    $data['query'] = $query = urldecode($_SERVER['QUERY_STRING']);
    parse_str($query, $vars);
    $data['vars'] = $vars;
    $queryParams = ['id' => $vars['id']];
    $data['response'] = $response = $youtube->videos->listVideos('snippet,contentDetails,statistics', $queryParams);
    fwrite(fopen('C:/www/coder-ml/web/db/youtube/v3/videos/'.urlencode($get[count($get)-1]).'.json','w'),json_encode($data['response']));


}
?>