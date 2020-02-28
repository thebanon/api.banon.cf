<?php
$_POST = json_decode(file_get_contents('php://input'));
$data['GET'] = $_GET;
$data['col'] = $col = strlen($_GET[3]) > 16 ? 'uid' : 'username';
if($_POST) { 
    $data['POST'] = $_POST; 
    $user = $_POST->uid ? $_POST->uid : ($_POST->username ? $_POST->username : NULL);
    $query = mysqli_query($con,"SELECT avi, cover, email, uid, username FROM users WHERE $col LIKE '$_GET[3]'");
    $data['row'] = $row = mysqli_fetch_assoc($query); 
    $data['count'] = (int)$row['Count'];
} 
else {
    $data['sql'] = $sql = "SELECT avi, cover, email, uid, username FROM users WHERE $col LIKE '$_GET[3]'";
    $query = mysqli_query($con,$sql);
    $data['row']=[]; while($row = mysqli_fetch_assoc($query)) { $data['row'] = $row; }
}
mysqli_close($con);
?>