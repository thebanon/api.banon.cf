<?php
$file = file_get_contents('https://api-mallzones.herokuapp.com/cache/'.$_GET[3].'/index.json');
$json = json_decode($file, JSON_PRETTY_PRINT); //print_r($json);

if($_GET[3] === 'brands') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (base, color, description, name, shortname, user, uid, zone) VALUES ';
    foreach($json as $key=>$value) {
        $base = $value['base'] ? $value['base'] : null;
        $color = $value['color'];
        $description = mysqli_real_escape_string($con,$value['description']);
        $name = mysqli_real_escape_string($con,$value['name']);
        $shortname = $value['shortname'];
        $uid = md5(uniqid(rand(), true));
        $uid = $value['id'];
        $zone = $value['zone'];
        $values[$key] = '("'.$base.'","'.$color.'","'.$description.'","'.$name.'","'.$shortname.'",null,"'.$uid.'","'.$zone.'")';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'pages') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (app, category, department, name, subdepartment, template, uid, updated) VALUES ';
    foreach($json as $key=>$value) {
        $app = $value['app'];
        $category = $value['category'];
        $department = $value['department'];
        $name = $value['name'];
        $subdepartment = $value['subdepartment'];
        $template = $value['template'];
        $uid = $value['id'];
        $updated = $value['updated'];
        $values[$key] = '("'.$app.'","'.$category.'","'.$department.'","'.$name.'","'.$subdepartment.'",'.$template.',"'.$uid.'","'.$updated.'")';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'photo') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (app, category, created, description, href, image, page, source, title, updated, user, uid) VALUES ';
    foreach($json as $key=>$value) {
        $app = $value['app'] > 0 ? $value['app'] : 'NULL';
        $category = $value['category'] > 0 ? $value['category'] : ' NULL';
        $created = $value['created'];
        $description = $value['description'] ? '"'.mysqli_real_escape_string($con,$value['description']).'"' : ' NULL';
        $href = $value['href'] ? '"'.mysqli_real_escape_string($con,$value['href']).'"' : ' NULL';
        $image = $value['image'] ? '"'.mysqli_real_escape_string($con,$value['image']).'"' : ' NULL';
        $page = $value['page'] > 0 ? $value['page'] : 'NULL';
        $source = $value['source'] ? '"'.mysqli_real_escape_string($con,$value['source']).'"' : ' NULL';
        $title = $value['title'] ? '"'.mysqli_real_escape_string($con,$value['title']).'"' : ' NULL';
        $user = $value['user'];
        $uid = $value['id'] ? $value['id'] : md5(uniqid(rand(), true));
        $values[$key] = '('.$app.','.$category.',"'.$created.'",'.$description.','.$href.','.$image.','.$page.','.$source.','.$title.', NULL,'.$user.','.$uid.')';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'zones') {    
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (color, emoji, name, uid) VALUES ';
    foreach($json as $key=>$value) {
        $emoji = $value['emoji'] ? $value['emoji'] : null;
        $color = $value['color'];
        $name = mysqli_real_escape_string($con,$value['name']);
        $uid = md5(uniqid(rand(), true));
        $uid = $value['id'];
        $values[$key] = '("'.$color.'","'.$emoji.'","'.$name.'","'.$uid.'")';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'merch') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (app, created, images, page, parentId, uid) VALUES ';
    foreach($json as $key=>$value) {
        $app = $value['app'];
        $created = $value['created'];
        $images = mysqli_real_escape_string($con,json_encode($value['images']));
        $page = $value['page'];
        $parentId = $value['parentId'] === 0 ? ' NULL' : '"'.$value['parentId'].'"';
        $uid = md5(uniqid(rand(), true));
        $values[$key] = '("'.$app.'","'.$created.'","'.$images.'","'.$page.'",'.$parentId.',"'.$uid.'")';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'ads') {
    //$sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (app, button, created, description, name, placement, uid, usr, url) VALUES ';
    foreach($json as $key=>$value) {
        $app = $value['app'] === 0 ? 'NULL' : $value['app'];
        $button = $value['button'] === "" ? ' NULL' : '"'.$value['button'].'"';
        $created = $value['created'];
        $description = $value['description'] === "" ? ' NULL' : '"'.$value['description'].'"';
        $name = $value['name'] === "" ? ' NULL' : '"'.mysqli_real_escape_string($con,$value['name']).'"';
        $placement = (int)$value['placement'];
        $usr = $value['usr'] ? '"'.$value['usr'].'"' : ' NULL';
        $url = $value['url'] === "" ? ' NULL' : '"'.$value['url'].'"';
        $uid = $value['id'];
        $values[$key] = '('.$app.','.$button.',"'.$created.'",'.$description.','.$name.','.$placement.',"'.$uid.'",'.$usr.','.$url.')';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'tags') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (tag, uid) VALUES ';
    foreach($json as $key=>$value) {
        $tag = mysqli_real_escape_string($con,$value['tag']);
        $uid = $value['id'];
        $values[$key] = '("'.$tag.'","'.$uid.'")';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'users') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (avi, bio, birthdate, cover, created, fullname, gender, username, uid) VALUES ';
    foreach($json as $key=>$value) {
        $b2avi = 'https://cdn.mallzones.com/file/mzncdn/users/avi/'.$value['id'].'.jpg';
        $b2cvr = 'https://cdn.mallzones.com/file/mzncdn/users/cvr/'.$value['id'].'.jpg';
        $avi = urlExists($b2avi) ? '"'.$b2avi.'"' : 'NULL';
        $cover = urlExists($b2cvr) ? '"'.$b2cvr.'"' : 'NULL';
        //$status = @get_headers($b2cvr)[0][0];
        //if($status) { } else { }
        $fullname = 'NULL';
        $created = 'NULL';
        $birthdate = $value['birthdate'] && $value['birthdate'] != '0000-00-00' ? '"'.$value['birthdate'].'"' : 'NULL';
        $username = $value['username'] ? '"'.$value['username'].'"' : 'NULL';
        $gender = $value['gender'];
        $bio = $value['bio'] === "" || $value['bio'] === NULL ? 'NULL' : '"'.mysqli_real_escape_string($con,$value['bio']).'"';
        $id = $value['id'];
        $uid = '"'.md5(uniqid(rand(), true)).'"';
        $values[$key] = '('.$avi.','.$bio.','.$birthdate.','.$cover.','.$created.','.$fullname.','.$gender.','.$username.','.$uid.')';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'blogs') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (app, category, created, description, href, image, page, title, updated, uid, user) VALUES ';
    foreach($json as $key=>$value) {
        $app = $value['app'];
        $category = $value['category'] == "" ? ' NULL' : $value['category'];
        $created = $value['created'];
        $description = $value['description'] == "" ? ' NULL' : '"'.mysqli_real_escape_string($con,$value['description']).'"';
        $html = $value['html'] == "" ? ' NULL' : '"'.mysqli_real_escape_string($con,$value['html']).'"';
        $image = $value['image'];
        $page = $value['page'] == 0 ? ' NULL' : '"'.$value['page'].'"';
        $title = mysqli_real_escape_string($con,$value['title']);
        $updated = $value['updated'];
        $uid = '"'.md5(uniqid(rand(), true)).'"';
        $user = $value['user'] == 0 ? ' NULL' : '"'.$value['user'].'"';
        $href = $value['href'] ? '"'.mysqli_real_escape_string($con,$value['href']).'"' : ' NULL';
        $values[$key] = '('.$app.',NULL,"'.$created.'",'.$description.','.$href.',"'.$image.'",'.$page.',"'.$title.'","'.$updated.'",'.$uid.','.$user.')';
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
if($_GET[3] === 'video') {
    $sql = 'TRUNCATE `ht48fxrju9fi4h7g`.`'.$_GET[3].'`'; $query = mysqli_query($con, $sql);
    $sql = 'INSERT INTO '.$_GET[3].' (app, category, created, description, duration, image, page, ref, source, title, updated, user, uid) VALUES ';
    foreach($json as $key=>$value) {        
        $app = $value['app'];
        $category = $value['category'] == 0 ? ' NULL' : $value['category'];
        $created = '"'.$value['created'].'"';
        $description = $value['description'] == "" ? ' NULL' : '"'.mysqli_real_escape_string($con,$value['description']).'"';
        $html = $value['html'] == "" ? ' NULL' : '"'.mysqli_real_escape_string($con,$value['html']).'"';
        $image = $value['image'] ? $value['image'] : ' NULL';
        $page = $value['page'] == 0 ? ' NULL' : $value['page'];
        $title = mysqli_real_escape_string($con,$value['title']);
        $updated = '"'.$value['updated'].'"';
        $duration = ' NULL';
        $ref = $value['uuid'] ? '"'.$value['uuid'].'"' : ' NULL';
        $uid = '"'.md5(uniqid(rand(), true)).'"';
        $source = '"youtube.com"';
        $user = $value['user'] == 0 ? ' NULL' : '"'.$value['user'].'"';
        $href = $value['href'] ? '"'.mysqli_real_escape_string($con,$value['href']).'"' : ' NULL';                
        if($app > 0) { $values[$key] = '('.$app.','.$category.','.$created.','.$description.','.$duration.','.$image.','.$page.','.$ref.','.$source.',"'.$title.'",'.$updated.','.$user.','.$uid.')'; }
    }
    $sql .= implode(',', $values);
    $query = mysqli_query($con, $sql);
}
echo $sql;
mysqli_close($con);

function urlExists($file) {
    $file_headers = @get_headers($file); //print_r(["status" => $file_headers]);
    $exists = (!$file_headers || $file_headers[0] == 'HTTP/1.1 404 ') ? false : true;
    return $exists;
}
?>