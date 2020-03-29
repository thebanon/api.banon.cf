<?php
$apiKey = "ef99458614894075bd70cd0f5cf33d93";
$query = $_GET[3];
$data["apiKey"] = $apiKey;
$_GET[3] ? $data["q"] = $_GET[3] : null;
$params = http_build_query($data);
$href = "https://newsapi.org/v2/everything?".$params;
$file = file_get_contents($href);
$data["json"] = json_decode($file);
?>