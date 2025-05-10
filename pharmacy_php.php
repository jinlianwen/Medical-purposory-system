<?php 

$id=$_POST['id'];
$name=$_POST['name'];
$mfd=$_POST['mfd'];
$expd=$_POST['expd'];
$sname=$_POST['sname'];

$host = "localhost";
$username = "root";
$password = "";
$dbname = "mysite";


$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO search (id,name,manu_date,ex_date,shop_name)
VALUES ('$id','$name','$mfd','$expd','$sname')";

if ($conn->query($sql) === TRUE) {
  
  echo" <script> window.alert('Medicine details  stored sucessfully') </script> ";

  //echo"data stored";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>