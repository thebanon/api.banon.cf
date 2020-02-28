<?php
if($_GET[3]) {
	if(strlen($_GET[3]) > 16) { $sql = "SELECT brands.*, users.username FROM brands LEFT JOIN users ON brands.user=users.uid WHERE users.uid='$_GET[3]'"; }
	else { $sql = "SELECT brands.*, users.username FROM brands LEFT JOIN users ON brands.user=users.uid WHERE users.username='$_GET[3]'"; }
    $zaq = mysqli_query($con, $sql);
    if(mysqli_num_rows($zaq)>0) { $key = 0;
        while($row = mysqli_fetch_assoc($zaq)) { $data[$key] = $row; $key++; }
    }
    
	if(strlen($_GET[3]) > 16) { $sql = "SELECT activity.*, brands.shortname, users.username FROM activity LEFT JOIN brands ON activity.ref=brands.uid LEFT JOIN users ON activity.user=users.uid WHERE users.uid='$_GET[3]' AND activity.type='subscribe' AND activity.tbl='brands'"; }
	else { $sql ="SELECT activity.*, brands.shortname, users.username FROM activity LEFT JOIN brands ON activity.ref=brands.uid LEFT JOIN users ON activity.user=users.uid WHERE users.username='$_GET[3]' AND activity.type='subscribe' AND activity.tbl='brands'"; }

    $zaq = mysqli_query($con, $sql);
    if(mysqli_num_rows($zaq)>0) {
        while($row = mysqli_fetch_assoc($zaq)) { $data[$key] = $row; $key++; }
    }
}
else {
	$data["error"] = ["code" => 404, "message" => "You must supply a username."]; 
}
?>