<?php
$query = mysqli_query($con, "SELECT * FROM activity");
if(mysqli_num_rows($query)>0) { $key = 0;
    while($row = mysqli_fetch_assoc($query)) {
		$data[$key] = [];        
		//$data[$key]['avatar'] = $row['avatar'];
		$data[$key] = $row;
		//$data[$key]['birthdate'] = $row['birth']; 
		//$data[$key]['cover'] = $row['cover']; 
		//$data[$key]['created'] = $row['created']; 
        $key++;
    }
}
else { $data = []; }
?>