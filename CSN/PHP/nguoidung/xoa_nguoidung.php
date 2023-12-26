<?php
include_once("../connect.php");
//Lấy biến từ liên kết
$mand="";
if(isset($_GET["ma"]))
{
  $mand =$_GET["ma"] ;

}
// sql to delete a record
$sql = "DELETE FROM nguoi_dung WHERE id='$mand'";

if ($conn->query($sql) === TRUE) {
  header("Location:nguoidung.php");
} else {
  echo "Error deleting record: " . $conn->error;
}

$conn->close();
?>