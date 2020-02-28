<?php
$con = mysqli_connect("ocvwlym0zv3tcn68.cbetxkdyhwsb.us-east-1.rds.amazonaws.com", "higb89kp5ebp8u3z", "v45i364fah1mzkp1", "ht48fxrju9fi4h7g");
if(mysqli_connect_errno()) { $log = "Failed to connect to MySQL: ".mysqli_connect_error().'<br>'; echo $log; }
else { mysqli_set_charset($con,'utf8mb4'); }
?>
