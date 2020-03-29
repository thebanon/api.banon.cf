<?php
$curl = curl_init();
$ep = array_slice($_GET,2);
$count = count($ep);

if($count>1) {
    if($count>2) { 
        if($ep[1] === 'states') {
            $url = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/johns_hopkins_united_states_latest.php?state=".$ep[2];
        }
    } else {
        $url = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/usastates.php";        
    }
} else {
    $url = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/worldstat.php";
}

curl_setopt_array($curl, array(
	CURLOPT_URL => $url,
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_FOLLOWLOCATION => true,
	CURLOPT_ENCODING => "",
	CURLOPT_MAXREDIRS => 10,
	CURLOPT_TIMEOUT => 30,
	CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	CURLOPT_CUSTOMREQUEST => "GET",
	CURLOPT_HTTPHEADER => array(
		"x-rapidapi-host: coronavirus-monitor.p.rapidapi.com",
		"x-rapidapi-key: f11fde06ebmsh64591de104c43b8p15a944jsn07785be825e2"
	),
));

$results = json_decode(curl_exec($curl),true);
$err = curl_error($curl);

curl_close($curl);

if($count>1) {
    if($count>2) { 
        if($ep[1] === 'states') {
            $cases = $results['usa_cases_by_state'][0]['cases_number'];
            $dead = $results['usa_deaths'][0]['death_cases'];
            $place = $results['state'];
            $response = $place.' 💉: '.$cases.' ☠️: '.$dead;
        }
    } else {
        $url = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/usastates.php";        
    }
} else {
    $url = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/worldstat.php";
}


if ($err) {
    $data['error'] = $err;
} else {
    $data["endpoint"] = $ep;
    $data["response"] = $response;
    $data["results"] = $results;
    $data["count"] = $count;
}
?>