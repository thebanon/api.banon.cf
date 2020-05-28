<?php
if(1>0) {

    $con = mysqli_connect("gk90usy5ik2otcvi.cbetxkdyhwsb.us-east-1.rds.amazonaws.com", "v0a6u0kt48m58uge", "n9rgtn2meyhthi9t", "ppyh9hbf089e36w6");
    if(mysqli_connect_errno()) { $log = "Failed to connect to MySQL: ".mysqli_connect_error().'<br>'; echo $log; }
    else { mysqli_set_charset($con,'utf8mb4'); }

    if($query_array) {
    	if(array_key_exists('id',$query_array)) {
            $data['id'] = $ids = explode(',',$query_array['id']);
		    $sql = "SELECT * FROM videos WHERE id IN ('".implode("','",$ids)."') ORDER BY date DESC";
    	}
    	if(array_key_exists('name',$query_array)) {
            $data['name'] = $name = explode(',',$query_array['name']);
		    $sql = 'SELECT * FROM videos WHERE name IN ("'.implode('","',$name).'") ORDER BY date DESC';
    	}
    	if(array_key_exists('shortname',$query_array)) {
            $data['shortname'] = $shortname = explode(',',$query_array['shortname']);
		    $sql = "SELECT * FROM videos WHERE shortname IN ('".implode("','",$shortname)."') ORDER BY date DESC";
    	}
	}
	else {
		$sql = "SELECT * FROM videos ORDER BY date DESC";
	}

	if($sql) {
		$data['sql'] = $sql;
		$zaq = mysqli_query($con, $sql);
		$count = mysqli_num_rows($zaq);
		if(count($_GET)>2) {
			if(count($_GET)>3) {
				$data['count']['videos'] = $count;
				$key = 0; while($row = mysqli_fetch_assoc($zaq)) {
					$data['videos'][$key] = $row; $key++;
				}
			} else {
				$data['count']['videos'] = $count;
				$key = 0; while($row = mysqli_fetch_assoc($zaq)) {
					$data['videos'][$key] = $row; $key++;
				}			
			}
		}
    }

}
?>