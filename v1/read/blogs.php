<?php
$data['rows'] = [];
if($_GET[3]) {
    date_default_timezone_set("America/New_York");
    $data['sql'][0][0] = $sql = "SELECT brands.name as brandname, blogs.* FROM blogs LEFT JOIN brands ON blogs.app=brands.uid WHERE blogs.uid LIKE '{$_GET[3]}'";
    $query = mysqli_query($con, $sql);
    if(mysqli_num_rows($query)>0) { $key = 0;

        while($row = mysqli_fetch_assoc($query)) { 
            $app = $row['app'];
            $category = $row['category'] ? 'LIKE '.$row['category'] : 'IS NULL';
            $data['rows'][$key] = $row;
            $key++;
            $data['sql'][0][1] = $sql = "SELECT tag FROM tags WHERE uid IN (".implode(',',json_decode($row['tags'])).") ORDER BY RAND() LIMIT 10";
            $query = mysqli_query($con, $sql);
            if(mysqli_num_rows($query)>0) { $key = 0;
                while($row = mysqli_fetch_assoc($query)) { 
                    $data['tags'][$key] = $row['tag'];
                    $key++;
                }
            }
        }

        $data['sql'][1] = $sql = "SELECT brands.name as brandname, brands.shortname, blogs.* FROM blogs LEFT JOIN brands ON blogs.app=brands.uid WHERE blogs.category $category ORDER BY RAND() LIMIT 16";
        $query = mysqli_query($con, $sql);
        if(mysqli_num_rows($query)>0) { $key = 0;
            while($row = mysqli_fetch_assoc($query)) { 
                $data['related'][$key] = $row; 
                $data['sql'][0][2] = $sql = "SELECT COUNT(*) as count FROM activity WHERE ref LIKE '{$row['uid']}' AND type LIKE 'view' AND tbl LIKE 'video'";
                $data['related'][$key]['views'] = (int)mysqli_fetch_assoc(mysqli_query($con, $sql))['count'];
                $key++;
            }
        }

        $data['sql'][2] = $sql = "SELECT comments.*, users.avi, users.username, users.uid as usr FROM comments LEFT JOIN users ON comments.usr=users.uid WHERE tbl LIKE 'blogs' AND ref LIKE '{$_GET[3]}'";
        $query = mysqli_query($con, $sql);
        if(mysqli_num_rows($query)>0) { $key = 0;
            while($row = mysqli_fetch_assoc($query)) { 
                $data['comments'][$key] = $row; 
                $seconds = strtotime($row['created']);
                $data['comments'][$key]['time'] = humanTiming($seconds);
                $data['comments'][$key]['reply'] = ["love" => rand(0,9), "hate" => rand(0,9), "talk" => rand(0,9)];
                $key++; 
            }
        }

		$data['stats'] = ['subs' => 0, 'likes' => 0, 'dislikes' => 0, 'views' => 0];
				
        $data['sql'][3] = $sql = "SELECT COUNT(*) as count FROM activity WHERE ref LIKE '{$_GET[3]}' AND type LIKE 'view' AND tbl LIKE 'blogs'";
        $data['count']['views'] = (int)mysqli_fetch_assoc(mysqli_query($con, $sql))['count'];

        $data['sql'][4] = $sql = "SELECT COUNT(*) as count FROM activity WHERE ref LIKE '{$_GET[3]}' AND type LIKE 'like' AND tbl LIKE 'blogs'";
        $data['count']['likes'] = (int)mysqli_fetch_assoc(mysqli_query($con, $sql))['count'];

        $data['sql'][5] = $sql = "SELECT COUNT(*) as count FROM activity WHERE ref LIKE '{$_GET[3]}' AND type LIKE 'dislike' AND tbl LIKE 'blogs'";
        $data['count']['dislikes'] = (int)mysqli_fetch_assoc(mysqli_query($con, $sql))['count'];

        $data['sql'][6] = $sql = "SELECT COUNT(*) as count FROM activity WHERE ref LIKE '$app' AND type LIKE 'subscribe' AND tbl LIKE 'blogs'";
        $data['count']['subs'] = (int)mysqli_fetch_assoc(mysqli_query($con, $sql))['count'];

    }

} else {

    $Sql = "SELECT * FROM blogs LIMIT 60";
    $query = mysqli_query($con, $sql);
    if(mysqli_num_rows($query)>0) { $key = 0;
        while($row = mysqli_fetch_assoc($query)) { 
            $data['rows'][$key] = $row; $key++;
        }
    }

}
function humanTiming($time) {
  $time = time() - $time; // to get the time since that moment
	$tokens = array (
		31536000 => 'year',
		2592000 => 'month',
		604800 => 'week',
		86400 => 'day',
		3600 => 'hour',
		60 => 'minute',
		1 => 'second'
	);

	foreach ($tokens as $unit => $text) {
		if ($time < $unit) continue;
		$numberOfUnits = floor($time / $unit);
		return $numberOfUnits.' '.$text.(($numberOfUnits>1)?'s':'');
	}
} 
?>