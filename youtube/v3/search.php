<?php
$ep = $data['get'] = $get = array_values($get);
$data['count'] = $epc = $count = count($get);
//$data['SERVER'] = $_SERVER;

$path = $data['path'] = __DIR__;
set_include_path($path);

if($params > 0 && $get[0] === "youtube") {
    
    $apikey = 'AIzaSyCcfN0FjpZH9Fz0tTSWTmGcRxAbhCwtvrk';
    require_once $path.'/../../pkg/Google/vendor/autoload.php';    
    $client = new Google_Client();
    $client->setAuthConfig($path.'/../../pkg/Google/client_secret.json');
    $client->setApplicationName("YouTube Fetcher");
    $client->setDeveloperKey($apikey);
    $client->setAccessType('offline');        // offline access
    $client->setIncludeGrantedScopes(true);   // incremental auth
    $youtube = new Google_Service_YouTube($client);
    
    if($count > 1 && $get[1] === "v3") {

        if($count > 2 && $get[2] === "search") {

            if($count > 3) {

                $data['task'] = "Fetch YouTube Videos";
                //$myfile = fopen(__DIR__."/time.php", strtotime("now"));

                $data['query'] = $_SERVER['QUERY_STRING'];
                $data['apiurl'] = $apiurl = 'https://www.googleapis.com/youtube/v3/search?'.$data['query'];
                parse_str($data['query'], $data['params']);
                $data['keyword'] = $data['params']['q'];
                $data['response'] = $youtube->search->listSearch('id,snippet', array('q' => $data['keyword'], 'maxResults' => 50));
                
                fwrite(fopen('C:/www/coder-ml/web/db/youtube/v3/search/'.urlencode($get[count($get)-1]).'.json','w'),json_encode($data['response']));

                function search($v,$array) {
                    $item = null;
                    $data['array'] = $array;
                    foreach($array as $struct) {
                        if ($v == $struct[$v]) {
                            $item = $struct;
                            break;
                        }
                    }
                }

            }

        }
        else if($count > 2 && $get[2] === "videos") {

            $client->setApplicationName('API code samples');
            $client->setScopes([
                'https://www.googleapis.com/auth/youtube.readonly',
            ]);

            // TODO: For this request to work, you must replace
            //       "YOUR_CLIENT_SECRET_FILE.json" with a pointer to your
            //       client_secret.json file. For more information, see
            //       https://cloud.google.com/iam/docs/creating-managing-service-account-keys
            $client->setAuthConfig('YOUR_CLIENT_SECRET_FILE.json');
            $client->setAccessType('offline');

            // Request authorization from the user.
            $authUrl = $client->createAuthUrl();
            printf("Open this link in your browser:\n%s\n", $authUrl);
            print('Enter verification code: ');
            $authCode = trim(fgets(STDIN));

            // Exchange authorization code for an access token.
            $accessToken = $client->fetchAccessTokenWithAuthCode($authCode);
            $client->setAccessToken($accessToken);

            // Define service object for making API requests.
            $service = new Google_Service_YouTube($client);

            $queryParams = [
                'id' => 'Ks-_Mh1QhMc'
            ];

            $response = $service->videos->listVideos('snippet,contentDetails,statistics', $queryParams);
            
        }

    }

}
?>