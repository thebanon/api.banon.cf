<?php
$jokes = array(
  "How many licks does it take to get to the center of a tootsie pop" => "The world may never know..."
);
$count = count($jokes);

$last_joke = $count === 1 ? 0 : count($jokes)-1;
$response = $jokes[urldecode($ep[0])].' 🥁 badum tssst';
$data['response'] = $response;
$data['jokes'] = $jokes;
$data['ep'] = $ep;
?>
