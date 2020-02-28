<?php
$_POST = json_decode(file_get_contents('php://input'));
if($_POST) { $data['POST'] = $_POST; 
    $email = $_POST->email; $pass = $_POST->password; $uid = $_POST->uid;
    if($email && filter_var($email, FILTER_VALIDATE_EMAIL)) {
        if($pass && $uid) { 
            $pass = $_POST->password; $uid = $_POST->uid;
            $sql = 'INSERT INTO users (email, password, uid) VALUES ("'.$email.'","'.$pass.'","'.$uid.'")';
            $data['sql'] = $sql;
            $query = mysqli_query($con,$sql); 
        }
        else {
            $data['error']['code'] = 500;
            $data['error']['message'] = 'There is not enough data to create this account.';            
        }
    } else {
        $data['error']['code'] = 401;
        $data['error']['message'] = 'You must supply a valid email address.';
    }
} 
else { $data['error'] = 401; }
print_r(json_encode($data, JSON_PRETTY_PRINT)); unset($data);
mysqli_close($con);
?>