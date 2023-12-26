<?php
//Kết nối csdl
include_once("../connect.php");

//Lây giá trị từ form
$ten = "";
if(isset($_POST["ten"]))
{
  $ten = $_POST["ten"];
//  $xx = $_POST["xuatxu"];
}

//Viết câu truy vấn
$sql = "INSERT INTO danh_muc_mon_an (ten_danh_muc)values('$ten')";

//Thực thi câu truy vấn - Kiểm tra và hiển thị kết quả
if ($conn->query($sql) === TRUE) {
  header("Location:danhmuc.php");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}
//đóng kết nối
$conn->close();
?>