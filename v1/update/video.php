<?php
$data['rows'] = [];
$data['sql'][0][0] = $sql = "SELECT brands.name as brandname, video.* FROM video LEFT JOIN brands ON video.app=brands.uid WHERE video.uid LIKE '{$_GET[3]}'";
$query = mysqli_query($con, $sql);
if(mysqli_num_rows($query)>0) { $key = 0;

    while($row = mysqli_fetch_assoc($query)) { 
        $app = $row['app'];
        $category = $row['category'];
        $data['rows'][$key] = $row; $key++;

        $data['sql'][0][1] = $sql = "SELECT tag FROM tags WHERE uid IN (".implode(',',json_decode($row['tags'])).") ORDER BY RAND() LIMIT 10";
        $query = mysqli_query($con, $sql);
        if(mysqli_num_rows($query)>0) { $key = 0;
            while($row = mysqli_fetch_assoc($query)) { 
                $data['tags'][$key] = $row['tag']; $key++;
            }
        }

    }

}
?>