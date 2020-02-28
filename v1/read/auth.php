<?php
$_POST = json_decode(file_get_contents('php://input'));
if($_POST) { $data['POST'] = $_POST; 
    $user = $_POST->email;
    $pass = $_POST->password;
    $query = mysqli_query($con,'SELECT COUNT(*) as Count, email FROM users WHERE (username LIKE "'.$user.'" || email LIKE "'.$user.'") AND password LIKE "'.$pass.'"');
    $row = mysqli_fetch_assoc($query);
    $data['count'] = (int)$row['Count'];
    $data['email'] = $row['email'];
} 
else { $data['error'] = 401; }
mysqli_close($con);
?>