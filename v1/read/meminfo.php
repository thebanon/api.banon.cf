<?php
  $fh = fopen('/proc/meminfo','r');
  $mem = 0;
  while ($line = fgets($fh)) {
    $pieces = array();
    if (preg_match('/^MemTotal:\s+(\d+)\skB$/', $line, $pieces)) {
      $mem = $pieces[1];
      break;
    }
  }
  fclose($fh);


  $data["results"] = $data["response"] = $mem." kB RAM found";
  $data["formatted"] = formatBytes(62914752,2);

  function findBytes($bytes, $to, $decimal_places = 1) {
      $formulas = array(
          'K' => number_format($bytes / 1024, $decimal_places),
          'M' => number_format($bytes / 1048576, $decimal_places),
          'G' => number_format($bytes / 1073741824, $decimal_places)
      );
      return isset($formulas[$to]) ? $formulas[$to] : 0;
  }
?>