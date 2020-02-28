<?php
$query = mysqli_query($con, "SELECT * FROM alerts");
if(mysqli_num_rows($query)>0) { $key = 0;
    while($row = mysqli_fetch_assoc($query)) {
		$data[$key] = [];        
		//$data[$key] = $row;
        $key++;
    }
}
else { $data = []; }
?>