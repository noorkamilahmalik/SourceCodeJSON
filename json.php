<?php
include'koneksi.php';

$query = "select * from bandung";
$result  =mysql_query($query);


if(mysql_num_rows($result) > 0 ){
  $response = array();
  $response["bandung"] = array();
  while($i = mysql_fetch_array($result)){
    $r['id'] = $i["id"];
    $r['nama'] = $i["nama"];
    $r['jenis'] = $i["jenis"];
    $r['harga'] = $i["harga"];
    $r['alamat'] = $i["alamat"];
    array_push($response["bandung"], $r);
  }
  echo json_encode($response);
}else {
  $response["message"]="tidak ada data";
  echo json_encode($response);
}
?>