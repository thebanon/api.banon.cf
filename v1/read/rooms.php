<?php
$query = mysqli_query($con,'SELECT * FROM rooms');
$key=0; while($row = mysqli_fetch_assoc($query)) { $data[$key] = $row; $key++; }
mysqli_close($con);
?>