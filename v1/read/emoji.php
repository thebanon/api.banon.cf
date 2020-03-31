<?php
$ep = array_slice($_GET,2);
$count = count($ep);

$short = $_GET[3];
$short === "joy" ? $emoji = "😂" : null;
$data["GET"] = $emoji;

if($count===3 && $ep[2]) { 

    $data['int'] = (int)$ep[2];
    $x=0; while($x < $data['int']) {
        $data['what'] = $x;
        $emoji .= $emoji.' ';
        $x++;
    }
}

$data["response"] = $emoji;
$data["endpoint"] = $ep;
$data["count"] = $count;
?>
