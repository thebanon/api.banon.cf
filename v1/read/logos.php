<?php
//print_r($_SERVER);
if($_GET[3]) {
} else {
    $sql = 'SELECT shortname, uid FROM brands LIMIT 10'; $query = mysqli_query($con, $sql);
    if(mysqli_num_rows($query) > 0) { 
        header('Content-type: text/html');        
        while($value = mysqli_fetch_assoc($query)) {
        echo '<img id="'.$value['uid'].'" height="50px" src="https://api.mallzones.com/v1/update/logos/'.$value['shortname'].'">';
        }
    }    
}
?>