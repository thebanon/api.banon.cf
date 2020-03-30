<?php
$curl = curl_init();
$ep = array_slice($_GET,2);
$count = count($ep);
$type = '';
if($count>1) {
    if($count>2) {
        if(in_array($ep[1],array('state','states'))) {
            $type = 'state';
            $url = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/johns_hopkins_united_states_latest.php?state=".$ep[2];
        }
        else if(in_array($ep[1],array('country'))) {
            $type = 'country';
            $url = "https://coronavirus-monitor.p.rapidapi.com/coronavirus/latest_stat_by_country.php?country=".$ep[2];
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

$response = "";
$url = "";
if($type === 'state') {
    $cases = $results['usa_cases_by_state'][0]['cases_number'];
    $dead = $results['usa_deaths'][0]['death_cases'];
    $place = $results['state'];
    $response = $place.' 💉: '.$cases.' ☠️: '.$dead;
}
if($type === 'country') {
    $cases = $results['latest_stat_by_country'][0]['active_cases'];
    $dead = $results['latest_stat_by_country'][0]['total_deaths'];
    $place = $results['latest_stat_by_country'][0]['country_name'];
    $response = $place.' 💉: '.$cases.' ☠️: '.$dead;
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