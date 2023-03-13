<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "scarf";

//  1. Create dbconnection
$dbc = new mysqli($dbhost, $dbuser, $dbpass, $dbname); // mysqli_connect

// Check dbconnection
if ($dbc->connect_error) {
  die("dbcection failed: " . $dbc->connect_error);
}
// 2. UPDATE query
$sql = "UPDATE product SET status = '0' 
WHERE id = 6 ";

$result = $dbc -> query( $sql );

echo "Update successfully";

$dbc->close();
?>