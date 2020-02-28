<?php
header('Access-Control-Allow-Origin: *');
session_start(); //var_dump($_SERVER);
$rqstmthd = $_SERVER['REQUEST_METHOD'];
$_SERVER['REQUEST_URI'] = ltrim(rtrim($_SERVER['REQUEST_URI'], '/'), '/');
$servername = $_SERVER['SERVER_NAME'];
$documentroot = $_SERVER['DOCUMENT_ROOT'];
$serverhome = $_SERVER['SERVER_HOME'] = str_replace('/public_html', '', $documentroot);
$isPOST = $rqstmthd=='POST';
$security = 1;
$protocol = $security == 0 ? 'http' : 'https';
$domain = $protocol."://".$servername;
$vars = [];
$PROTO = array_key_exists('HTTP_X_FORWARDED_PROTO', $_SERVER) ? $_SERVER['HTTP_X_FORWARDED_PROTO'] : null;
$HTTP_HOST = $_SERVER['HTTP_HOST'];
$_SERVER['REQUEST_PROTOCOL'] = $PROTO ? $PROTO : $_SERVER['REQUEST_SCHEME'];
$HTTP_ORIGIN = $PROTO.'://'.$HTTP_HOST;
$sitename = $servername; $security = 1;
$protocol = $security == 0 ? 'http' : 'https';
$domain = $protocol."://".$sitename;
$html = ''; $rqstmthd = $_SERVER['REQUEST_SCHEME']; $isPOST = $rqstmthd=='POST';
if($isPOST) {
	$_POST = json_decode(file_get_contents('php://input'));
    if($_SESSION && $_SESSION['admin']) {
        if($_POST->state) { $state = $_POST->state; }
        else { $state = $_SERVER['SCRIPT_URI']; }
    }
    else { $state = $_SERVER['REQUEST_URI']; }
    $_GET = param($state, null);
}
else {
    $_GET = param($_SERVER['REQUEST_PROTOCOL'].'://'.$_SERVER['HTTP_HOST'], null);
}
$getz = $_GET[count($_GET)-1];
$urlvar = explode('?', $getz);
$_GET[count($_GET)-1] = $urlvar[0];
$root = $hash = $_GET[0] ? $_GET[0] : 'splash';
if(count($urlvar) > 1) { parse_str($urlvar[1], $vars); }
$state = 'https://mallzones.com'.(count($_GET) > 0 ? '/'.implode('/', $_GET) : '').($vars ? '_'.http_build_query($vars) : '');
if(count($_GET) > 1) { foreach($_GET as $k=>$v) { $k > 0 ? $parts[$k] = $v : null; } }
$url = implode('/', $_GET);
//$ext = pathinfo($url)['extension'];

if($_GET[0] == 'v1') {
    $crud = ['create', 'read', 'update', 'delete'];
    $include = in_array($_GET[1], $crud) ? '../v1/index.php' : '../404.json';
}
else { $include = '../404.json'; }
include($include);

function param($a,$b) {
	return ($b==null ? explode('/', $_SERVER['REQUEST_URI']) : explode('/', $_SERVER['REQUEST_URI'])[$b]);
}
?>