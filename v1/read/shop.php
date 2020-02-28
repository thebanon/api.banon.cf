<?php
if($_GET[3]) { 
    $sql = "SELECT * FROM brands WHERE shortname LIKE '$_GET[3]'"; 
    $zaq = mysqli_query($con, $sql);
    $data['brands'] = [];
    if(mysqli_num_rows($zaq)>0) { $key = 0;
        while($row = mysqli_fetch_assoc($zaq)) { 
             $data['brands'] = $row; $key++; 
        }
    }
    $sql = "SELECT pages.* FROM pages LEFT JOIN brands ON pages.app=brands.uid WHERE brands.shortname LIKE '$_GET[3]'"; 
    $zaq = mysqli_query($con, $sql);
    $data['pages'] = [];
    if(mysqli_num_rows($zaq)>0) { $key = 0;
        while($row = mysqli_fetch_assoc($zaq)) { 
             $data['pages'][$key] = $row; $key++; 
        }
    }
}


else {
	//print_r($zaq);
	//$data = []; 
}
?>