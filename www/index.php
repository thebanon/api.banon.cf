<?php
header('Access-Control-Allow-Origin: *');
$data = [];

//$data['SERVER'] = $_SERVER;
$query_string = $qs = $_SERVER['QUERY_STRING'];
parse_str($query_string, $query_array);
$qa = $query_array;

$request_method = $_SERVER['REQUEST_METHOD'];
$redirect_url = $_SERVER['REQUEST_URI'];
$sitemap = [
    "/",
    "/home/"
];


$_GET = $get = array_filter(explode('/',trim($redirect_url,'/')));
$got =  count($_GET);
$query = array_slice($_GET,2);
$params = count($query);
$endpoints = ['create', 'read', 'update', 'delete'];
$host = $_SERVER['HTTP_HOST'];
$arrhost = explode('.',$host);
$arrhostcount = count($arrhost);
$domain = $arrhost[count($arrhost)-2];
$tld = $arrhost[count($arrhost)-1];
$request_uri = in_array($_SERVER['REQUEST_URI'],$sitemap) ? 'index.html' : $_SERVER['REQUEST_URI'];
$api = 'api.'.$domain.'.'.$tld;
$beta = 'beta.'.$domain.'.'.$tld;

$server = [
   'HTTP_HOST' => $host,
   'HOST_ARRAY' => $arrhost,
   'HOST_ARRAY_LENGTH' => $arrhostcount,
   'HOST_DOMAIN' => $domain,
   'HOST_TLD' => $tld,
   'REQUEST_URI' => $request_uri
];

if($request_method == "POST") { $_POST = json_decode(file_get_contents('php://input'),true); }

if(count($arrhost) > 2) {

    $subdomain = $arrhost[count($arrhost)-3];

    if(count($arrhost) > 3) {

        $data['error'] = ["code" => 404, "message" => "Unauthorized"];

    } else {
        
        $mimetype = 'text/html';

        if($host === $api) {
            #$data['SERVER']['HOST'] = $api;
            #$data['SERVER']['HOST_MODE'] = 'API';

            if(count($_GET) > 1) {
                header('Content-Type: application/json');
                include(__DIR__.'/../'.$_GET[0].'/'.$_GET[1].'/index.php');
                $data ? print_r(json_encode($data, JSON_PRETTY_PRINT)) : null;
            }

        }
        else if($host === $beta) {

            #$data['SERVER']['HOST'] = $beta;
            #$data['SERVER']['HOST_MODE'] = 'BETA';
            
            if(count($_GET) > 0) {            
                if(count($_GET) > 1) {    
                    #$data['SERVER']['PAGE'] = 'STORE CATEGORY '.$_GET[1];
                }
                else {
                    #$data['SERVER']['PAGE'] = 'STORE PAGE '.$_GET[0];                
                }                
            } 
            else {
                #$data['SERVER']['PAGE'] = 'STORE HOME';
            }
            
            $pathname = '../../app/'.$request_uri;
            if(is_file($pathname)) {
                $data['file'] = count($_GET)>0  ? $_GET[count($_GET)-1] : 'index.html';
                $arrget0 = explode('.',$data['file']); #print_r($arrget0);
                if(count($arrget0) > 1) {
                        $data['ext'] = $ext = $arrget0[count($arrget0) - 1];
                        $data['MIMETYPE'] = $mimetype = get_mime_type($ext);
                        #echo $pathname.' - '.$mimetype;
                }
                header('Content-Type: '.$mimetype);
                include('../../app/'.$request_uri);
            }

        }
        else {

            $data['SERVER']['HOST'] = $subdomain.'.'.$domain.'.'.$tld;
            $data['SERVER']['HOST_MODE'] = 'SUBDOMAIN';
            
            if(count($_GET) > 0) {            
                if(count($_GET) > 1) {    
                    $data['SERVER']['PAGE'] = 'STORE CATEGORY '.$_GET[1];
                }
                else {
                    $data['SERVER']['PAGE'] = 'STORE PAGE '.$_GET[0];                
                }                
            } 
            else {
                $data['SERVER']['PAGE'] = 'STORE HOME';
            }

            if(count($_GET) > 0 ) {
                if($_GET[0] === 'index.css') { $mimetype = 'text/css'; }
                else if($_GET[0] === 'index.js') { $mimetype = 'application/javascript'; }
            }
            else { $mimetype = 'text/html'; }

            $data['file'] = count($_GET)>0  ? $_GET[0] : 'index.html';
            $arrget0 = explode('.',$data['file']);
            $data['ext'] = $ext = $arrget0[count($arrget0) - 1];
            $data['MIMETYPE'] = $mimetype = get_mime_type($ext);

            header('Content-Type: '.$mimetype);
            #header('Content-Type: application/json'); print_r(json_encode($data, JSON_PRETTY_PRINT));
            if(in_array($tld,['who','are','you'])) {

            }
            else if(in_array($tld,['com', 'localhost','store'])) {       
                         
                    if(count($_GET) > 0 && $_GET[0] === $subdomain.'.css') {

                        if(file_exists(__DIR__.'/../../web/code/'.$subdomain.'.css')) {
                            header('Content-Type: text/css');  
                            include(__DIR__.'/../../web/code/'.$subdomain.'.css');
                        } else {                
                            header('Content-Type: text/css');
                            include(__DIR__.'/../dbc.php');  
                            $sql = "SELECT css FROM code c LEFT JOIN brands b ON b.id=c.brand WHERE b.shortname LIKE '".$subdomain."'";
                            if($sql) {
                                $zaq = mysqli_query($con, $sql);
                                if(mysqli_num_rows($zaq)>0) { 
                                    $row = mysqli_fetch_assoc($zaq);
                                    $css = $row['css'];
                                    echo $css;
                                }
                            } else {
                                return http_response_code(404);
                            }                
                        }

                    }
                    else if(count($_GET) > 0 && $_GET[0] === $subdomain.'.html') {

                        if(file_exists(__DIR__.'/../../web/code/'.$subdomain.'.html')) {
                            header('Content-Type: text/html');  
                            include(__DIR__.'/../../web/code/'.$subdomain.'.html'); 
                        } else {
                            include(__DIR__.'/../dbc.php');
                            $sql = "SELECT html FROM code c LEFT JOIN brands b ON b.id=c.brand WHERE b.shortname LIKE '".$subdomain."'";
                            $zaq = mysqli_query($con, $sql);
                            if(mysqli_num_rows($zaq)>0) {  
                                header('Content-Type: text/html');                              
                                $row = mysqli_fetch_assoc($zaq);
                                $html = $row['html'];
                                echo $html;
                            } else {
                                return http_response_code(404);                                
                            }
                        }

                    }
                    else if(count($_GET) > 0 && $_GET[0] === $subdomain.'.json') {

                        if(file_exists(__DIR__.'/../../web/code/'.$subdomain.'.json')) {
                            header('Content-Type: text/html');  
                            include(__DIR__.'/../../web/code/'.$subdomain.'.json'); 
                        } else {
                            include(__DIR__.'/../dbc.php');
                            $sql = "SELECT json FROM code c LEFT JOIN brands b ON b.id=c.brand WHERE b.shortname LIKE '".$subdomain."'";
                            if($sql) {
                                $zaq = mysqli_query($con, $sql);
                                if(mysqli_num_rows($zaq)>0) {  
                                    header('Content-Type: application/json');                              
                                    $row = mysqli_fetch_assoc($zaq);
                                    $html = $row['html'];
                                    echo $html;
                                } else {
                                    return http_response_code(404);
                                }
                            }                    
                        }

                    }
                    else {

                        if(file_exists('../../web/app/'.$request_uri)) {
                            include('../../web/app/'.$request_uri);
                        } else {
                            include('../../web/app/404.html');                
                        }

                    }
            }

        }

    }

}

unset($data);

function get_mime_type($extension) {
        $mime_types = array(
                "pdf"=>"application/pdf"
                ,"exe"=>"application/octet-stream"
                ,"zip"=>"application/zip"
                ,"docx"=>"application/msword"
                ,"doc"=>"application/msword"
                ,"xls"=>"application/vnd.ms-excel"
                ,"ppt"=>"application/vnd.ms-powerpoint"
                ,"gif"=>"image/gif"
                ,"png"=>"image/png"
                ,"jpeg"=>"image/jpg"
                ,"jpg"=>"image/jpg"
                ,"mp3"=>"audio/mpeg"
                ,"svg"=>"image/svg+xml"
                ,"wav"=>"audio/x-wav"
                ,"mpeg"=>"video/mpeg"
                ,"mpg"=>"video/mpeg"
                ,"mpe"=>"video/mpeg"
                ,"mov"=>"video/quicktime"
                ,"avi"=>"video/x-msvideo"
                ,"3gp"=>"video/3gpp"
                ,"css"=>"text/css"
                ,"jsc"=>"application/javascript"
                ,"js"=>"application/javascript"
                ,"json"=>"application/json"
                ,"php"=>"text/html"
                ,"htm"=>"text/html"
                ,"html"=>"text/html"
        );
        return $mime_types[$extension] !== false ? $mime_types[$extension] : $mime_types['html'];
}
?>
