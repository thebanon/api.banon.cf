<?php
$_POST = $_POST[1];
$app = $_POST->app;
$page = $_POST->page;
$keywords = mysqli_real_escape_string($con, str_replace('+', ' ', $_POST->keywords));
$endpoint = $_POST->endpoint;
$response = $_POST->response;

//GETBRAND
$sql = "SELECT * FROM brands WHERE id = '$app'";
$query = mysqli_query($con, $sql); $qrycnt = mysqli_num_rows($query);
if($qrycnt > 0) {  
  $row = mysqli_fetch_assoc($query);    
  //$endpoint = $row['endpoint'];
} 

//CREATETASK
$sql = "SELECT * FROM queries WHERE app = $app AND endpoint LIKE '$endpoint'";
$query = mysqli_query($con, $sql); $qrycnt = mysqli_num_rows($query);
if($qrycnt > 0) {  
  $row = mysqli_fetch_assoc($query);    
  //$endpoint = $row['endpoint'];
} 
else {  
  $insQry = "INSERT INTO queries (app, page, api, endpoint) VALUES ($app, $page, 'ebay', '$endpoint')"; 
  $query = mysqli_query($con, $insQry);
  if($query) { $qId = mysqli_insert_id($con); }
}

//CREATEPARENT
$sql = "SELECT id FROM merch WHERE parentId IS NULL AND title LIKE '%$keywords%'";
$query = mysqli_query($con, $sql);
$prtcnt = mysqli_num_rows($query);
if($prtcnt > 0) { $row = mysqli_fetch_assoc($query); $pId = intval($row['id']); } 
else {
  $insPrt = "INSERT INTO merch (app, page, title) VALUES ($app, $page, '$keywords')"; 
  $query = mysqli_query($con, $insPrt);
  if($query) { $pId = mysqli_insert_id($con); }
}

foreach($response as $key => $value) {
  $ref = $value->ref ? "'".mysqli_real_escape_string($con,$value->ref)."'" : 'NULL';
  if($ref != 'NULL') { 
    $selItm = "SELECT id FROM merch WHERE ref LIKE '{$value->ref}'"; 
    $item = mysqli_query($con, $selItm); 
    $itmcnt = mysqli_num_rows($item);    
    if($itmcnt == 0) { 
      $row = mysqli_fetch_assoc($item);
      $itmId = intval($row['id']);      
      $title = $value->title ? "'".mysqli_real_escape_string($con,$value->title)."'" : 'NULL';
      $image = $value->image ? "'".mysqli_real_escape_string($con,$value->image)."'" : 'NULL';
      $parentId = $pId ? $pId : 'NULL';
      $msrp = $value->msrp ? $value->msrp : 'NULL';
      $price = $value->price ? $value->price : 'NULL';
      $shipping = $value->shipping ? $value->shipping * 100 : 'NULL';
      $thumbnails = $value->thumbnails ? "'".implode("; ", $value->thumbnails)."'" : 'NULL';
      $values[$key] .= "($app, $page, $parentId, $ref, $title, $image, $msrp, $price, $shipping, $thumbnails)";      
    }
  } 
}

//INSERTMERCH
if(count($values) > 0) {
  $insItm = "INSERT INTO merch (app, page, parentId, ref, title, image, msrp, price, shipping, thumbnails) VALUES ".implode(", ", $values); 
  $query = mysqli_query($con, $insItm);
  if($query) { 
    $sql2 = 'It worked!';    
    //mail("9739326907@vtext.com",   'Apple -> iPad -> iPad Pro', "375 Products added.", "From: BOTS <apple@mallzon.es>\r\n");
    mail("9082654390@tmomail.net", 'Apple -> iPad -> iPad Pro', count($values)." products added.", "From: BOTS <apple@mallzon.es>\r\n");
  }
  else { $sql2 = 'It failed...'; }
}

$data = ['itmcnt' => $itmcnt, 'sql' => $selItm, 'values' => $values ? count($values) : 0, 'pId' => $pId, 'prtcnt' => $prtcnt, 'qId' => $qId, 'qrycnt' => $qrycnt, '$_POST' => $_POST];
print json_encode($data); unset($data); mysqli_close($con);
?>