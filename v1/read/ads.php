<?php
$pctg=0; 
$data = [];
$zaq = mysqli_query($con, "SELECT * FROM ads");
$x=0; if(mysqli_num_rows($zaq)>0) { $key = 0;
    while($row = mysqli_fetch_assoc($zaq)) {
		$data[$key] = [];
		$data[$key]['app'] = $row['app']; 
		$data[$key]['button'] = $row['button']; 
		$data[$key]['created'] = $row['created'];
		$data[$key]['description'] = $row['description']; 
		$data[$key]['name'] = $row['name']; 
		$data[$key]['placement'] = (int)$row['placement']; 
		$data[$key]['uid'] = $row['uid']; 
		$data[$key]['url'] = $row['url'] ? $row['url'] : NULL;
		$data[$key]['usr'] = $row['usr']; 
        $key++;
    }
}
else { $data = []; }
?>