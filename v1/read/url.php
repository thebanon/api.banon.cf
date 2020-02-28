<?php
$_POST = json_decode(file_get_contents('php://input'));
if($_POST) {	
	$data['POST'] = $_POST; 
	$logic = $data['logic'] = $_POST->logic; 
	$_GOT = $logic->GOT;
	$data['col'] = $col = is_numeric($_GOT[4]) ? 'uid' : 'shortname';
	$data['params'] = $_POST->params;	
	foreach($data['params'] as $key=>$value) {
		$data['response'][$key]['rows'] = [];
		$data['response'][$key]['values'] = $value;
		$algo = $value->algo;
		$table = $value->table;
		$data['response'][$key]['max'] = $max = $value->max;
		$sql = query($table,$algo,$value);
		$data['response'][$key]['sql'] = $sql;
		if($sql) {
			$query = mysqli_query($con,$sql);
			$k=0; while($row = mysqli_fetch_assoc($query)) { $data['response'][$key]['rows'][$k] = $row; $k++; }
		} 
		else { $data['error'] = ["code" => 404, "message" => "Invalid request"]; }
	}
} else {

	$data['POST'] = $_POST; 
	$data['logic'] = $_POST->logic; 
	$data['params'] = $_POST->params;	
	foreach($data['params'] as $key=>$value) {
		$data['response'][$key]['rows'] = [];
		$data['response'][$key]['values'] = $value;
		$algo = $value->algo;
		$table = $value->table;
		$data['response'][$key]['max'] = $max = $value->max;
		$sql = query($table,$algo,$value);
		$data['response'][$key]['sql'] = $sql;
		if($sql) {
			$query = mysqli_query($con,$sql);
			$k=0; while($row = mysqli_fetch_assoc($query)) { $data['response'][$key]['rows'][$k] = $row; $k++; }
		} 
		else { $data['error'] = ["code" => 404, "message" => "Invalid request"]; }
	}

}
function multi($table) {
	if($table === "photo") { $sql = "(SELECT image, href as ref, source, @format := 'photo' as tbl, title, uid FROM photo) B"; }
	if($table === "blogs") { $sql = "(SELECT image, href as ref, source, @format := 'blogs' as tbl, title, uid FROM blogs) C"; }
	if($table === "video") { $sql = "(SELECT ref as image, ref, source, @format := 'video' as tbl, title, uid FROM video) D"; }
	if($table === "merch") { $sql = "(SELECT images as image, ref, source, @format := 'merch' as tbl, title, uid FROM merch) A"; }
	return $sql;
}
function query($table,$algo,$value) {
	$max = $value->max;
	$page = $_POST->logic->page;
	$GOT = $_POST->logic->GOT;
	if(is_array($table)) {	
		$sql = "SELECT * FROM (SELECT * FROM ";
		foreach($table as $key=>$tbl) {	$sql .= ($key>0 ? " UNION ALL SELECT * FROM " : "").multi($tbl); }
		$sql .= ") media ORDER BY RAND() LIMIT 18";
	}
	if($table == 'activity') {
		if($algo == 'user') { $sql = "SELECT activity.*, users.uid FROM activity LEFT JOIN users ON activity.user=users.uid ORDER BY RAND() LIMIT ".$max; }
		if($algo == 'feed') { $sql = "SELECT activity.*, users.uid FROM activity LEFT JOIN users ON activity.user=users.uid ORDER BY RAND() LIMIT ".$max; }
		if($algo == 'group') {
		$sql .= "SELECT id, ref, prsn, tbl, type, date, grp_new, typ_new, 
				group_concat(id order by id) as arr_new, 
				group_concat(ref order by id) as arr_ref,                 
				COUNT(*) AS Count From ( Select id, date, ref, prsn, tbl, type, if(prsn = @prev AND tbl = @prev2, @seq, @seq := @seq + 1) as seq, 
				if(prsn = @prev, prsn, @prev := prsn) as grp_new, 
				if(tbl = @prev2, tbl, @prev2 := tbl) AS typ_new From activity, 
				(SELECT @seq := 0, @seq2 := 0, @prev := '', @prev2 := '') AS init ORDER BY id ASC) x 
				Group by seq ORDER BY date DESC LIMIT 20"; 
		}
	}
	if($algo == 'alert') { $sql = "SELECT * FROM activity ORDER BY DESC LIMIT $max"; }
	if($table == 'ads') {
		$placement = $value->placement;
		if($placement == 1) { $sql = "SELECT ads.*, brands.name, users.username FROM ads LEFT JOIN users ON ads.usr=users.uid LEFT JOIN brands ON ads.app=brands.uid WHERE ads.placement='$placement' ORDER BY RAND() LIMIT $max"; }
		else if($placement == 2) { $sql = "SELECT ads.*, brands.name, users.username FROM ads LEFT JOIN users ON ads.usr=users.uid LEFT JOIN brands ON ads.app=brands.uid WHERE ads.placement='$placement' ORDER BY RAND() LIMIT $max"; }
		else {  $sql = "SELECT ads.*, brands.name, users.username FROM ads LEFT JOIN users ON ads.usr=users.uid LEFT JOIN brands ON ads.app=brands.uid WHERE ads.placement='$placement' ORDER BY RAND() LIMIT $max"; }
	}
	if($table == 'blogs') {
		if($algo == 'recent') { $sql = "SELECT * FROM blogs ORDER BY DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM blogs ORDER BY RAND() LIMIT ".$max; }
		else if($algo == 'app') { 
			$data = $value->data; $shortname = $GOT[1];
			$col = is_numeric($GOT[1]) ? 'uid' : 'shortname';
			$lj = "LEFT JOIN brands ON merch.app=brands.uid WHERE brands.$col LIKE '$shortname'";
			if($data == 'recent') { $sql = "SELECT blogs.* FROM blogs $lj ORDER BY RAND() LIMIT ".$max; }
			else if($data == 'random') { $sql = "SELECT blogs.* FROM blogs $lj ORDER BY RAND() LIMIT ".$max; }
			else { $sql = "SELECT blogs.* FROM blogs $lj ORDER BY RAND() LIMIT ".$max; }
		}
		else { $sql = "SELECT * FROM blogs ORDER BY RAND() LIMIT ".$max; }
	}
	if($table == 'brands') {
		if($algo == 'popular') { $sql = "SELECT * FROM brands ORDER BY RAND() LIMIT ".$max; }
		else if($algo == 'uid') { $sql = "SELECT * FROM brands ORDER BY uid ASC LIMIT $max"; }
		else if($algo == 'recent') { $sql = "SELECT * FROM brands ORDER BY created DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM brands ORDER BY RAND() LIMIT ".$max; }
		else if($algo == 'zone') { $sql = "SELECT brands.* FROM brands LEFT JOIN zones ON brands.zone=zones.uid WHERE zones.name LIKE '".$GOT[2]."' ORDER BY created DESC LIMIT ".$max; }
		else { $sql = "SELECT * FROM brands LIMIT ".$max;}
	}
	if($table == 'catalog') {
		if($algo == 'recent') { $sql = "SELECT * FROM catalog ORDER BY created DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM catalog ORDER BY RAND() LIMIT ".$max; }
		else if($algo == 'app') { 
			$data = $value->data; $shortname = $GOT[1];
			$col = is_numeric($GOT[1]) ? 'uid' : 'shortname';
			if($_GOT[2]) { 
				$lj = "LEFT JOIN brands ON catalog.app=brands.uid WHERE brands.$col LIKE '$shortname'";
				if($data == 'recent') { $sql = "SELECT catalog.* FROM catalog $lj ORDER BY RAND() LIMIT ".$max; }
				else if($data == 'random') { $sql = "SELECT catalog.* FROM catalog  $lj ORDER BY RAND() LIMIT ".$max; }
				else { $sql = "SELECT catalog.* FROM catalog $lj ORDER BY RAND() LIMIT ".$max; }
			} else {
				$lj = "LEFT JOIN brands ON catalog.app=brands.uid WHERE brands.$col LIKE '$shortname'";
				if($data == 'recent') { $sql = "SELECT catalog.* FROM catalog $lj ORDER BY RAND() LIMIT ".$max; }
				else if($data == 'random') { $sql = "SELECT catalog.* FROM catalog $lj ORDER BY RAND() LIMIT ".$max; }
				else { $sql = "SELECT catalog.* FROM catalog $lj ORDER BY RAND() LIMIT ".$max; }				
			}
		}
		else { $sql = "SELECT * FROM catalog ORDER BY RAND() LIMIT ".$max; }
	}
	if($table == 'merch') {
		if($algo == 'recent') { $sql = "SELECT * FROM merch WHERE pid IS NULL ORDER BY created DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM merch WHERE pid IS NULL ORDER BY RAND() LIMIT ".$max; }
		else if($algo == 'app') { 
			$data = $value->data; $shortname = $GOT[1];
			$col = is_numeric($GOT[1]) ? 'uid' : 'shortname';
			if($_GOT[2]) { 
				$lj = "LEFT JOIN brands ON merch.app=brands.uid WHERE brands.$col LIKE '$shortname' AND pid IS NULL";
				if($data == 'recent') { $sql = "SELECT merch.* FROM merch $lj ORDER BY RAND() LIMIT ".$max; }
				else if($data == 'random') { $sql = "SELECT merch.* FROM merch $lj ORDER BY RAND() LIMIT ".$max; }
				else { $sql = "SELECT merch.* FROM merch $lj ORDER BY RAND() LIMIT ".$max; }
			} else {
				$lj = "LEFT JOIN brands ON merch.app=brands.uid WHERE brands.$col LIKE '$shortname' AND pid IS NULL";
				if($data == 'recent') { $sql = "SELECT merch.* FROM merch $lj ORDER BY RAND() LIMIT ".$max; }
				else if($data == 'random') { $sql = "SELECT merch.* FROM merch $lj ORDER BY RAND() LIMIT ".$max; }
				else { $sql = "SELECT merch.* FROM merch $lj ORDER BY RAND() LIMIT ".$max; }				
			}
		}
		else { $sql = "SELECT * FROM merch WHERE pid IS NULL ORDER BY RAND() LIMIT ".$max; }
	}
	if($table == 'photo') {
		if($algo == 'recent') { $sql = "SELECT * FROM photo ORDER BY created DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM photo ORDER BY RAND() LIMIT ".$max; }
		else if($algo == 'apps') { 
			$data = $value->data; $shortname = $GOT[1];
			$col = is_numeric($GOT[1]) ? 'uid' : 'shortname';
			$lj = "LEFT JOIN brands ON photo.app=brands.uid WHERE photo.app IS NOT NULL";
			$sql = "SELECT brands.name as brandname, photo.* FROM photo $lj GROUP BY photo.app ORDER BY RAND() LIMIT ".$max;
		}
		else if($algo == 'app') { 
			$data = $value->data; $shortname = $GOT[1];
			$col = is_numeric($GOT[1]) ? 'uid' : 'shortname';
			$lj = "LEFT JOIN brands ON photo.app=brands.uid WHERE brands.$col LIKE '$shortname'";
			if($data == 'recent') { $sql = "SELECT photo.* FROM photo $lj ORDER BY RAND() LIMIT ".$max; }
			else if($data == 'random') { $sql = "SELECT photo.* FROM photo $lj ORDER BY RAND() LIMIT ".$max; }
			else { $sql = "SELECT photo.* FROM photo $lj ORDER BY RAND() LIMIT ".$max; }
		}
		else { $sql = "SELECT * FROM photo ORDER BY RAND() LIMIT ".$max; }
	}
	if($table == 'users') {
		if($algo == 'recent') { $sql = "SELECT * FROM users ORDER BY created DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM users ORDER BY RAND() LIMIT ".$max; }
		else { $sql = "SELECT * FROM users LIMIT ".$max; }
	}
	if($table == 'video') {
		if($algo == 'recent') { $sql = "SELECT * FROM video ORDER BY created DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM video ORDER BY RAND() LIMIT ".$max; }
		else if($algo == 'app') { 
			$data = $value->data; $shortname = $GOT[1];
			$col = is_numeric($GOT[1]) ? 'uid' : 'shortname';
			$lj = "LEFT JOIN brands ON video.app=brands.uid WHERE brands.$col LIKE '$shortname'";
			if($data == 'recent') { $sql = "SELECT video.* FROM video $lj ORDER BY RAND() LIMIT ".$max; }
			else if($data == 'random') { $sql = "SELECT video.* FROM video $lj ORDER BY RAND() LIMIT ".$max; }
			else { $sql = "SELECT video.* FROM video $lj ORDER BY RAND() LIMIT ".$max; }
		}
		else { $sql = "SELECT * FROM video ORDER BY RAND() LIMIT ".$max; }
	}
	if($table == 'tags') {
		if($algo == 'recent') { $sql = "SELECT * FROM tags ORDER BY DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM tags ORDER BY RAND() LIMIT ".$max; }
		else { $sql = "SELECT * FROM tags ORDER BY RAND() LIMIT ".$max; }
	}
	if($table == 'zones') {
		if($algo == 'recent') { $sql = "SELECT * FROM zones ORDER BY DESC LIMIT $max"; }
		else if($algo == 'random') { $sql = "SELECT * FROM zones ORDER BY RAND() LIMIT ".$max; }
		else { $sql = "SELECT * FROM zones LIMIT ".$max; }
	}
	return $sql;
}
?>