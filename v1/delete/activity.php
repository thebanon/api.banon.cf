<?php
$_POST = json_decode(file_get_contents('php://input'));
if($_POST) { $data['POST'] = $_POST;
    $data['ref'] = $ref = $_POST->ref; 
    $data['type'] = $type = $_POST->type; 
    $data['tbl'] = $table = $_POST->tbl; 
    $data['user'] = $user = $_POST->user;
    if($ref && $type && $table && $user) {
        $data['sql'] = $sql = 'DELETE FROM activity WHERE ref LIKE "'.$ref.'" AND type LIKE "'.$type.'" AND tbl LIKE "'.$table.'" AND user LIKE "'.$user.'"';
        $query = mysqli_query($con,$sql); 
    } else {
        $data['error']['code'] = 401;
        $data['error']['message'] = 'You must supply a valid email address.';
    }
} 
else { 
    $data['error'] = 401; 
}
print_r(json_encode($data, JSON_PRETTY_PRINT));
mysqli_close($con);
?>