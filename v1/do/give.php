<?php
$ep = array_slice($_GET,2);
$count = count($ep);
if($count==2) { 
    $response = "buttchugs ".$ep[1]."!!!"; 
} 
else if($count==3) { 
    if($ep[1] === 'blowjob') { $response = "blowjob ".$ep[2].""; }
    else if($ep[1] === 'head') { $response = "sucks chree's dick"; }
    else if($ep[1] === 'a') { 
        if($ep[2] === 'fuck') { $response = "me neither"; }
        else if($ep[2] === 'fuck') { $response = "me neither"; }
    }
} 
else { $response = "IDGAF"; }
$data["endpoint"] = $ep;
$data["response"] = $response;
$data["count"] = $count;
?>
