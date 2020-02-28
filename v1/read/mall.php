<?php
$pctg=0; 
$data = [];

if($_GET[3]) {
	$data['zones'] = [];
	$query = mysqli_query($con, "SELECT * FROM zones");
	if(mysqli_num_rows($query)>0) { $key = 0;
		while($row = mysqli_fetch_assoc($query)) {
			$data["zones"][$row['name']] = [];
			$data['sql'] = $sql = "SELECT brands.base, brands.color, brands.name, brands.uid, zones.emoji FROM brands LEFT JOIN zones ON brands.zone=zones.uid WHERE zones.name LIKE '{$row['name']}' LIMIT 10";
			$query2 = mysqli_query($con, $sql);
			if(mysqli_num_rows($query2)>0) { $ky = 0;
				while($rw = mysqli_fetch_assoc($query2)) {
					$data["zones"][$row['name']][$ky] = $rw;
					$ky++;
				}
			}
			$key++;
		}
	} 
	else { $data = []; }
} else {
	$data['sql'] = $sql = "SELECT * FROM brands ORDER BY RAND() LIMIT 50";
	$query2 = mysqli_query($con, $sql);
	if(mysqli_num_rows($query2)>0) { $ky = 0;
		while($rw = mysqli_fetch_assoc($query2)) {
			$data["brands"][$ky] = $rw;
			$ky++;
		}
	}
	$key++;	
}
?>