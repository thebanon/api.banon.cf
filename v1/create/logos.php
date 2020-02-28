<?php
if($_GET[3]) {
    $sql = 'SELECT base, uid FROM brands WHERE shortname LIKE "'.$_GET[3].'"'; $query = mysqli_query($con, $sql);
    if(mysqli_num_rows($query) > 0) { 
        header('Content-type: image/svg+xml');        
        while($value = mysqli_fetch_assoc($query)) {
        echo RecolorImage('ico/'.$value['uid'].'.svg',str_replace('#','',$value['base']));
        }
    }    
}
mysqli_close($con);
function RecolorImage($ImageSvgFile, $ImageColor)  {
    $FileContents = file_get_contents($ImageSvgFile, FILE_USE_INCLUDE_PATH);
    $doc = new DOMDocument(); $dom->preserveWhiteSpace = False;
    $doc->loadXML($FileContents) or die('Failed to load SVG file ' . $ImageSvgFile . ' as XML.  It probably contains malformed data.');
    $SvgTags = $doc->getElementsByTagName("svg");
    if (preg_match('/^([0-9a-f]{1,2}){3}$/i', $ImageColor) == false) { die('Invalid color: ' . $ImageColor); }
    $AllTags = $doc->getElementsByTagName("path");
    foreach ($AllTags as $ATag) {
        $VectorColor = $ATag->getAttribute('fill');
        if(strtoupper($VectorColor) != '#FFFFFF') {
            $ATag->setAttribute('fill', '#' . $ImageColor);
            $FileContents = $doc->saveXML($doc);
        }
    }
    return $FileContents;
}
?>