<?php
$_GET;
if($_GET[2]) {
	
	if($_GET[3]) {

		$_GET3=urldecode($_GET[3]);
		$relationship=""; $table="";
		if(is_numeric($_GET3)) { $table="merch"; }
		else { $table="catalog"; }
		$data['table'] = $table;

		if($_GET[4]) {
		
			if($_GET3 === 'carts') {

				$sql = 'SELECT * FROM merch WHERE uid IN('.$_GET[4].')';
				$query = mysqli_query($con, $sql); 
				if($query) { 
					$key = 0; while($row = mysqli_fetch_assoc($query)) { 
						$data['items'][$key] = $row; $key++;
					}
				}

			}			

		} else {

			$data['row'] = [];
			if($table == 'merch') {

				//MERCH
				$sql  = "SELECT c.title as IndexTitle, merch.*, m.variations as attributes, m.uid as pid, m.description as feature, m.images as imgs, b.name as appname, b.uid as appid,";
				$sql .= " u.uid as usrid, u.username FROM merch";
				$sql .= " LEFT JOIN merch m ON merch.pid=m.uid";
				$sql .= " LEFT JOIN brands b ON merch.app=b.uid";
				$sql .= " LEFT JOIN users u ON merch.usr=u.uid";
				$sql .= " LEFT JOIN catalog c ON merch.cid=c.uid";
				$data['sql'][0] = $sql .= " WHERE merch.uid LIKE '$_GET3'";                      
				$query = mysqli_query($con, $sql);		
				if($query) { 		
				$key = 0; $data['owner']['app'] = null; $data['owner']['usr'] = null;
				while($row = mysqli_fetch_assoc($query)) { 
					$data['row'] = $row;    
					if($row['appid']) { $avi = $row['appid']; $ownerName = $row['appname']; }
					else { $avi = $row['usrid']; $ownerName =  $row['username']; }
					$data['owner'] = ["app" => $row['appid'], "avi" => $avi, "nme" => $ownerName, "usr" => $row['usrid']];
					$data['id']['parent'] = $pid = $row['pid'] ? $row['pid'] : $row['uid'];
					$data['id']['uid'] = $uid = $row['uid'];
					$key++; 
				}
				} $rows = $data['row'];  

				$data['is']['parent'] = $parent = $pid && $pid!==$uid ? true : false;

				//STATS
				$data['stats'] = ['subs' => 0, 'likes' => 0, 'dislikes' => 0];

				$data['sql'][1][0] =  $sql = "SELECT COUNT(*) as count FROM activity WHERE activity.ref='".$avi."' AND activity.tbl='brands' AND activity.type='subscribe' GROUP BY activity.user";
				$query = mysqli_query($con, $sql);
				if(mysqli_num_rows($query)>0) { $data['stats']['subs'] = $row = mysqli_fetch_assoc($query)['count']; }

				$data['sql'][1][1] =  $sql = "SELECT COUNT(*) as count FROM activity WHERE activity.ref='".$avi."' AND activity.tbl='brands' AND activity.type='fave' GROUP BY activity.user";
				$query = mysqli_query($con, $sql);
				if(mysqli_num_rows($query)>0) { $data['stats']['likes'] = $row = mysqli_fetch_assoc($query)['count']; }

				$data['sql'][1][2] =  $sql = "SELECT COUNT(*) as count FROM activity WHERE activity.ref='".$avi."' AND activity.tbl='brands' AND activity.type='dislike' GROUP BY activity.user";
				$query = mysqli_query($con, $sql);
				if(mysqli_num_rows($query)>0) { $data['stats']['dislikes'] = $row = mysqli_fetch_assoc($query)['count']; }


				//PARENT
				$data['sql'][2] = $sql = "SELECT * FROM merch LEFT JOIN merch m ON merch.pid=m.uid WHERE merch.uid LIKE '$pid'";                      
				$data['parent'] = []; $query = mysqli_query($con, $sql); 
				$x=0; while($row = mysqli_fetch_assoc($query)) { $data['parent'] = $row; $x++; }


				//CHILDREN+VARIATIONS
				$sql  = "SELECT * FROM merch WHERE merch.pid LIKE '$pid'";                      
				$data['sql'][3] = $sql;
				$data['children'] = []; $data['variations'] = []; $query = mysqli_query($con, $sql);
				//$data['VariationAttributes'] = 
				$attributes = $rows['attributes'] ? json_decode($rows['attributes']) : json_decode($rows['variations']);
				$x=0; while($row = mysqli_fetch_assoc($query)) { 
					$data['children'][$x] = $row; 
					//$data['VariationDimensions'][$x] = 
					$variations = json_decode($row['variations']);   
					$v=0; 
					foreach($variations as $variation) {
						$data['variations'][$attributes[$v]][$x] = $variation;
					}
					$x++;
				}     

				//PRICING
				$sql  = "SELECT *, MIN(merch.ListPrice) as LowestListPrice, MAX(merch.ListPrice) as HighestListPrice ";
				$sql .= "FROM merch WHERE merch.pid LIKE '$pid'";                      
				$data['sql'][4] = $sql;
				$query = mysqli_query($con, $sql);
				$x=0; while($row = mysqli_fetch_assoc($query)) { 
					if($x==0) {
						$data['pricing']['lo']['ListPrice'] = (int)$row['LowestListPrice']; 
						$data['pricing']['hi']['ListPrice'] = (int)$row['HighestListPrice']; 
						$data['pricing']['lo']['SalePrice'] = (int)$row['LowestSalePrice']; 
						$data['pricing']['hi']['SalePrice'] = (int)$row['HighestSalePrice'];    
					}
					$x++;
				}

				//COMMENTS
				$data['sql'][2] = $sql = "SELECT comments.*, users.avi, users.username, users.uid as usr FROM comments LEFT JOIN users ON comments.usr=users.uid WHERE tbl LIKE 'merch' AND ref LIKE '{$_GET[3]}'";
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

			} 

			if($table == 'catalog') {

				$data['merch'] = [];

				$data['sql'][0] = $sql = 'SELECT * FROM catalog WHERE title LIKE "'.$_GET3.'"';
				$query = mysqli_query($con, $sql);

				if(mysqli_num_rows($query)>0) { 

					$key = 0; while($row = mysqli_fetch_assoc($query)) { $data['row'] = $row; $key++; }	


					//STATS
					$data['stats'] = ['subs' => 0, 'likes' => 0, 'dislikes' => 0];

					$data['sql'][1][0] =  $sql = "SELECT COUNT(*) as count FROM activity WHERE activity.ref='".$avi."' AND activity.tbl='brands' AND activity.type='subscribe' GROUP BY activity.user";
					$query = mysqli_query($con, $sql);
					if(mysqli_num_rows($query)>0) { $data['stats']['subs'] = $row = mysqli_fetch_assoc($query)['count']; }

					$data['sql'][1][1] =  $sql = "SELECT COUNT(*) as count FROM activity WHERE activity.ref='".$avi."' AND activity.tbl='brands' AND activity.type='fave' GROUP BY activity.user";
					$query = mysqli_query($con, $sql);
					if(mysqli_num_rows($query)>0) { $data['stats']['likes'] = $row = mysqli_fetch_assoc($query)['count']; }

					$data['sql'][1][2] =  $sql = "SELECT COUNT(*) as count FROM activity WHERE activity.ref='".$avi."' AND activity.tbl='brands' AND activity.type='dislike' GROUP BY activity.user";
					$query = mysqli_query($con, $sql);
					if(mysqli_num_rows($query)>0) { $data['stats']['dislikes'] = $row = mysqli_fetch_assoc($query)['count']; }

						

					$data['sql'][1] = $sql = 'SELECT merch.*, brands.name as brandname, brands.uid as appid, users.uid as usrid FROM merch LEFT JOIN brands ON merch.app=brands.uid LEFT JOIN users ON merch.usr=users.uid WHERE cid="'.$data['row']['uid'].'" AND (merch.pid IS NOT NULL || merch.pid=merch.uid)';
					$query = mysqli_query($con, $sql);
					if(mysqli_num_rows($query)>0) { 
						$key = 0; while($row = mysqli_fetch_assoc($query)) { 
							$data['merch'][$key] = $row; $key++;
							$data['owner']['appid'] = $row['appid'];
							$data['owner']['usrid'] = $row['usrid'];
							$data['owner']['ownid'] = $row['appid'] ? $row['appid'] : $row['usrid'];
						}
					}   

					$data['sql'][2] = $sql = "SELECT comments.*, users.avi, users.username, users.uid as usr FROM comments LEFT JOIN users ON comments.usr=users.uid WHERE ref LIKE '{$_GET[3]}'";
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

				} 

			}	

		}		
		
	} else {

		$sql = 'SELECT * FROM `catalog` LIMIT 50';
		$query = mysqli_query($con, $sql); 
		if($query) { 
			$key = 0; while($row = mysqli_fetch_assoc($query)) { 
				$data[$key] = $row; $key++;
			}
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