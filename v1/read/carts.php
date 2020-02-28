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
	$data['sql'][0] = $sql = "SELECT brands.name, brands.shortname, brands.uid FROM carts LEFT JOIN merch ON carts.ref=merch.uid LEFT JOIN brands ON merch.app=brands.uid WHERE carts.usr LIKE '{$_GET[3]}' GROUP BY merch.app";
    $query = mysqli_query($con, $sql);
    if(mysqli_num_rows($query)>0) { 
        $key=0; while($row = mysqli_fetch_assoc($query)) { 
			$data['sql'][1][$key] = $sq = "SELECT COUNT(*) as count FROM carts LEFT JOIN merch ON carts.ref=merch.uid WHERE merch.app LIKE ".$row['uid']." AND carts.usr LIKE '{$_GET[3]}'";	
			$qry = mysqli_query($con, $sq); $rw = mysqli_fetch_assoc($qry);
        	$data['rows'][$key] = $row; 
        	$data['rows'][$key]['count'] = $rw['count'];
        	$key++; 
		}
    }
	$data['sql'][2] = $sql = "SELECT COUNT(*) as count FROM carts LEFT JOIN merch ON carts.ref=merch.uid WHERE carts.usr LIKE '{$_GET[3]}'";	
	$data['count']['amazon'] = mysqli_fetch_assoc(mysqli_query($con, $sql))['count'];
}
?>