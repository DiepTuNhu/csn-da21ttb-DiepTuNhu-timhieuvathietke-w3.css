<?php
 include "../connect.php";
?>
<!DOCTYPE html>
<html>
<head>
<title>Giới thiệu đặc sản Trà Vinh</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-green.css">

<style>
@import url('https://fonts.googleapis.com/css2?family=Merienda&display=swap');
.two-line-limit {
  display: -webkit-box;
  -webkit-line-clamp: 4;
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;
  transition: all 0.5s ease-in-out; /* Thêm hiệu ứng chuyển động */
}

.two-line-limit:hover {
  /* -webkit-line-clamp: unset; Gỡ bỏ giới hạn khi hover */
  transform: scale(1.1);
}

h1{
  font-family: 'Merienda', cursive;
}
.two-line-limit a{
  text-decoration: none;
}
#search {
display: flex;
justify-content: center;
align-items: center;
}

</style>

</head>
<body>
<div class="w3-top">
<div class="w3-bar w3-theme-d5">
  <a href="danhsachmonan.php" class="w3-bar-item w3-button w3-mobile">Trang chủ</a>
  <a href="gioithieu.php" class="w3-bar-item w3-button w3-mobile">Giới thiệu</a>
  <div class="w3-dropdown-hover w3-mobile">
    <button class="w3-button">Món ăn <i class="fa fa-caret-down"></i></button>
    <div class="w3-dropdown-content w3-bar-block w3-dark-grey">
      
      <?php
      $sql1 = "SELECT * FROM danh_muc_mon_an";
      $rs = $conn->query($sql1);

      if ($rs->num_rows > 0) {
      while ($r = $rs->fetch_assoc()) {
           echo ' <a href="monan.php?madm='.$r["id"].'" class="w3-bar-item w3-button w3-mobile">'.$r["ten_danh_muc"].'</a>';   
      }           
      } else {
      echo "0 results";
      }
      ?> 
    </div>
  </div>
  <a href="diadiemphucvu.php" class="w3-bar-item w3-button w3-mobile">Địa điểm phục vụ</a>
  <a href="../login.php" class="w3-bar-item w3-button w3-mobile w3-right">Đăng nhập</a>
</div>
</div>

<div class="w3-white">
  <div class="w3-container w3-center" style="padding:50px 0px 20px 0px;">
    <h1>ĐẶC SẢN TRÀ VINH</h1>
  </div>
 <!-- SEARCH ---------------------------------------------------------------------------------------------------------------------- -->
  <div class="w3-container w3-row w3-margin-bottom">
    <div id="search">
      <div class="w3-col" style="width: 58px">
        <i class="w3-xlarge fa fa-search w3-button w3-round-xxlarge w3-hover-green"></i>
      </div>
      <div class="w3-rest">
        <input class="w3-input w3-border w3-round-xxlarge w3-hover-border-green" name="first" type="text" placeholder="Tìm kiếm" style="width: 500px"/>
      </div>
    </div>
  </div>
 <!-- SLIDER ---------------------------------------------------------------------------------------------------------------------- -->
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">  
    <div class="w3-content w3-display-container w3-card-4 w3-round-large">   
      <img class="mySlides w3-animate-left w3-round-large" src="../../images/1.1.png" style="width:100%">
      <img class="mySlides w3-animate-top w3-round-large" src="../../images/1.2.png" style="width:100%">
      <img class="mySlides w3-animate-right w3-round-large" src="../../images/1.3.png" style="width:100%">       
    </div>
  </div>