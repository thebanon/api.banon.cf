<?php
unset($get[0]); unset($get[1]); unset($get[2]);
$get = array_values($get);
//$ep = $data['get'] = $get = array_values($get);
//$data['count'] = $epc = $params = count($get);
//$data['SERVER'] = $_SERVER;

$path = $data['path'] = __DIR__;
set_include_path($path);

$data['params'] = $get;

$data['count'] = $count = count($data['params']);

$file = date("Y-m-d\TH:i:s\Z", strtotime('now'));

$data['count'] = $count = count($data['params']);

if($count > 1) {
    
    //$apikey = 'AIzaSyBdtMGgsHXEHIMTnAZ9-mTfpvR9wm2C7ro';
    //require_once $path.'/../../pkg/Google/vendor/autoload.php';    
    //$client = new Google_Client();
    //$client->setAuthConfig($path.'/../../pkg/Google/client_secret.json');
    //$client->setApplicationName("YouTube Fetcher");
    //$client->setDeveloperKey($apikey);
    //$client->setAccessType('offline');        // offline access
    //$client->setIncludeGrantedScopes(true);   // incremental auth
    //$youtube = new Google_Service_YouTube($client);
    

    $data['file'] = $file = $get[1];

    $handle = fopen($path.'/'.$get[1].'.json','w');
    fwrite($handle, $file);

}

fwrite($handle, $file);
?>