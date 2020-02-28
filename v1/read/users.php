<?php
$_POST = json_decode(file_get_contents('php://input'));
if($_POST) { $data['POST'] = $_POST; 
    $user = $_POST->email;
    $query = mysqli_query($con,'SELECT COUNT(*) as Count, email FROM users WHERE (username LIKE "'.$user.'" || email LIKE "'.$user.'")');
    $row = mysqli_fetch_assoc($query);
    $data['count'] = (int)$row['Count'];
} else {
    $query = mysqli_query($con,'SELECT * FROM users');
    $key=0; while($row = mysqli_fetch_assoc($query)) { $data[$key] = $row; $key++;}
}
mysqli_close($con);
?>