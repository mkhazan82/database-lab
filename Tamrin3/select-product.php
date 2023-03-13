<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "scarf";

$connection = mysqli_connect('localhost','root','','scarf');

mysqli_set_charset($connection,"utf8");

$sql = "SELECT * FROM product";

$result = mysqli_query($connection,$sql);

if (mysqli_num_rows($result)>0){
    while ($row = mysqli_fetch_assoc($result)) {
        echo $row['id'];
        echo $row['title'];
        echo $row['discription'];
        echo $row['price'];
        echo $row['status'];
    }

}

?>