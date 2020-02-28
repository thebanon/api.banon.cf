<?php
if($_GET[3]) { 
	if($_GET[3] === 'uid') { $sql = "SELECT * FROM brands WHERE uid = '$_GET[4]'"; }
	else if($_GET[3] === 'shortname') { $sql = "SELECT * FROM brands WHERE shortname LIKE '$_GET[4]'"; }
} 
else { $sql = "SELECT * FROM brands"; }
if($sql) {
	$zaq = mysqli_query($con, $sql);
	if(mysqli_num_rows($zaq)>0) { $key = 0;
		while($row = mysqli_fetch_assoc($zaq)) { $data = $row; $key++; }
	}
	else { }
}
else { }
?>