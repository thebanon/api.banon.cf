<?php
if($_GET[4]) {
	$data['col'] = $col = is_numeric($_GET[4]) ? 'uid' : 'shortname';
	if(!$_GET[5]) { $add = " WHERE department=0 AND brands.$col LIKE '".$_GET[4]."'"; }
	$data['sql'] = $sql = "SELECT pages.name, pages.template, brands.shortname FROM pages LEFT JOIN brands ON pages.app=brands.uid".$add;
	$zaq = mysqli_query($con, $sql); $x=0; 
	if(mysqli_num_rows($zaq)>0) { $key = 0;
		while($row = mysqli_fetch_assoc($zaq)) {
			$data["page"] = $row; $key++;
		}
	}	
	else {
		$data["page"]["template"] = "1";
	}
}
?>