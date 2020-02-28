<?php
$pctg=0; 
$zaq = mysqli_query($con, "SELECT * FROM ratings");
$x=0; if(mysqli_num_rows($zaq)>0) { $key = 0;
    while($row = mysqli_fetch_assoc($zaq)) {
		$data[$key] = $row;
        $key++;
    }
}
else { $data = []; }
?>