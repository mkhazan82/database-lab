<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "scarf";

$_POST = array('title'=>'product 2',
				'discription'=>'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quasi, beatae.',
				'price'=>'50000','status'=>'0');
$title = $_POST['title'];
$discription = $_POST['discription'];
$price = $_POST['price'];
$status = $_POST['status'];
//  1. Create dbconnection
$dbc = new mysqli($dbhost, $dbuser, $dbpass, $dbname); // mysqli_connect

// Check dbconnection
if ($dbc->connect_error) {
  die("dbcection failed: " . $dbc->connect_error);
}
// 2. create query
$sql = "INSERT INTO product (title, discription, price,status)
VALUES ('{$_POST['title']}','{$_POST['discription']}','{$_POST['price']}','{$_POST['status']}')";

// 3. execute query
if ($dbc->query($sql) === TRUE) {
  echo "New record created successfully";
}
else {
  echo "Error: " . $sql . "<br>" . $dbc->error;
}

// 4. close connection
$dbc->close();
?>