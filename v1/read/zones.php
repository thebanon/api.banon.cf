<?php
$pctg=0; 
$data = [];
$query = mysqli_query($con, "SELECT * FROM zones");
if(mysqli_num_rows($query)>0) { $key = 0;
    while($row = mysqli_fetch_assoc($query)) {
		$data[$key] = [];
		$data[$key]['color'] = $row['color']; 
		$data[$key]['emoji'] = $row['emoji']; 
		$data[$key]['name'] = $row['name']; 
		$data[$key]['uid'] = $row['uid']; 
        $key++;
    }
} 
else { $data = []; }
?>