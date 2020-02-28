<?php
$_POST = json_decode(file_get_contents('php://input'));
if($_POST) {	
	$data['POST'] = $_POST;	
	$uid = $_POST->uid;
    $zaq = mysqli_query($con, "SELECT merch.* FROM carts LEFT JOIN merch ON carts.ref=merch.uid");
    $x=0; if(mysqli_num_rows($zaq)>0) { $key = 0;
        while($row = mysqli_fetch_assoc($zaq)) {
            $data['rows'][$key]['ref'] = $row['ref'];
            $data['rows'][$key]['uid'] = $row['uid'];
            $key++;
        }
    }
} else { 
	$data['GET'] = $_GET;	
	$sql = "SELECT merch.* FROM carts LEFT JOIN merch ON carts.ref=merch.uid AND carts.usr LIKE '{$_GET[3]}'";
    $query = mysqli_query($con, $sql);
    if(mysqli_num_rows($query)>0) { 
        $key=0; while($row = mysqli_fetch_assoc($query)) { $data['rows'][$key] = $row; $key++; }
    }
}
?>