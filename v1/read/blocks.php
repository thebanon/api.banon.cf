<?php
$_POST = json_decode(file_get_contents('php://input'));
if($_GET[4]) {
	$data['route']['brand'] = $brand = $_GET[4];
	$data['route']['department'] = $department = $_GET[5] ? $_GET[5] : 0;
	$data['route']['subdepartment'] = $subdepartment = $_GET[6] ? $_GET[6] : 0;
	$data['col'] = $col = is_numeric($_GET[4]) ? 'uid' : 'shortname';
	if($subdepartment) { $page = $subdepartment; } 
	else {
		if($department) { $page = $department; }
		else { $page = $department;  }
	}
	$page = $page ? " AND pages.name LIKE '$department'" : ' AND pages.department = 0';

	if($col == 'uid') { 
		$sql = "SELECT shortname FROM brands WHERE uid = $_GET[4]"; 
		$zaq = mysqli_query($con, $sql);
		if(mysqli_num_rows($zaq) > 0) {
			$row = mysqli_fetch_assoc($zaq);
			$data['shortname'] = $row['shortname']; 
			if($_GET[4]) {
				if($_GET[5]) { $state = '/'.$_GET[3].'/'.$_GET[4].'/'.$_GET[5].'/'; }
				else { $state = '/'.$_GET[3].'/'.$_GET[4].'/'; }
			} 
			else { $state = '/'.$_GET[3].'/'; }
			$data['state'] = $state;
		}
	}
	$sql = "SELECT blocks.json, brands.shortname, pages.department, pages.name, pages.subdepartment FROM blocks LEFT JOIN pages ON blocks.page=pages.uid LEFT JOIN brands ON pages.app=brands.uid WHERE brands.$col LIKE '".$_GET[4]."'$page";
	$data['sql'] = $sql;
	$data['GET'] = $_GET;
	$data['shortname'] ? $_GET[4] = $data['shortname'] : null;
	$data['rows'] = [];
	//$sql = "SELECT blocks.json, pages.name, brands.shortname FROM blocks LEFT JOIN pages ON blocks.page=pages.uid LEFT JOIN brands ON pages.app=brands.uid";
	$zaq = mysqli_query($con, $sql); $x=0; 
	if(mysqli_num_rows($zaq)>0) { $key = 0; 
		while($row = mysqli_fetch_assoc($zaq)) {
			$data['rows'][$key] = [];
			$data['rows'][$key] = json_decode($row['json']);
			$data["data"]['department'] = $row['department'];
			$data["data"]['subdepartment'] = $row['subdepartment'];
			$data["data"]['shortname'] = $row['shortname'];
			$data["data"]['name'] = $row['name'];
			$key++;
		}
	}	
}
?>