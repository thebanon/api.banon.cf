<?php
$data['GET'] = $_GET;
$data['col'] = $col = is_numeric($_GET[4]) ? 'uid' : 'shortname';
if($_GET[4]) { 
	if($col == 'uid') { 
		$sql = "SELECT pages.*, brands.shortname FROM pages LEFT JOIN brands ON pages.app=brands.uid WHERE brands.uid=$_GET[4] ORDER BY department ASC, subdepartment ASC"; 
	}
	else if($col == 'shortname') { 
		$sql = "SELECT pages.*, brands.shortname FROM pages LEFT JOIN brands ON brands.uid=pages.app WHERE brands.shortname LIKE '".$_GET[4]."' ORDER BY department ASC, subdepartment ASC";  
	}
} 
else { $sql = "SELECT * FROM pages"; }

if($col == 'uid') { 
	$sqlc = "SELECT shortname FROM brands WHERE uid = $_GET[4]"; 
}
else if($col == 'shortname') { 
	$data['sqlc'] = $sqlc = "SELECT shortname FROM brands WHERE shortname LIKE '$_GET[4]'";
}

$zaq = mysqli_query($con, $sqlc);
if(mysqli_num_rows($zaq) > 0) {
	$row = mysqli_fetch_assoc($zaq);
	$_GET[4] = $data['shortname'] = $row['shortname']; 
	if($_GET[4]) {
		if($_GET[5]) { $state = '/'.$_GET[3].'/'.$_GET[4].'/'.$_GET[5].'/'; }
		else { $state = '/'.$_GET[3].'/'.$_GET[4].'/'; }
	} 
	else { $state = '/'.$_GET[3].'/'; }
	$data['state'] = $state;
}


$data['sql'] = $sql;
if($sql) {
	$query = mysqli_query($con, $sql);
	$x=0; if(mysqli_num_rows($query)>0) { $key = 0;
		while($row = mysqli_fetch_assoc($query)) { 
			$data['pages'][$key] = $row;	
			$key++;	
		}
	}
	else { $data['pages'] = []; }
}
?>