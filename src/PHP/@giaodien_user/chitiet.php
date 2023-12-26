<?php
    include_once("./header.php");
?>
<div class="w3-row">
<div class="w3-col l2 m3 s4"><p></p></div>
<div class="w3-col l8 m6 s4 w3-dark-grey w3-center" style="margin-top: 50px;">
<?php
$mamonan = "";
if(isset($_GET["idmonan"]))
{
  $mamonan = $_GET["idmonan"];

}echo $mamonan;
?>
    
<!-- Viết truy vấn lấy tất cả các thông tin của món ăn có id tương ứng -->
<?php
      $sql1 = "SELECT * FROM danh_muc_mon_an";

      $rs = $conn->query($sql1);
      if ($rs->num_rows > 0) {
               
        while ($r = $rs->fetch_assoc()) {
          echo '<div class="w3-panel w3-leftbar w3-border-green w3-theme-l2 w3-xxlarge w3-serif">';
          echo '<h2 style = "text-transform:uppercase;">';
            echo $r["ten_danh_muc"];
          echo '</h2>';
          echo '</div>';

          $sql = "SELECT hinh_anh.hinh_anh,  mon_an.id, mon_an.mo_ta,mon_an.ten_mon_an
              FROM hinh_anh
              JOIN mon_an ON hinh_anh.mon_an_id = mon_an.id WHERE danh_muc_id='".$r["id"]."'";

          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
            echo '<div class="w3-row-padding " >';
            
            while ($row = $result->fetch_assoc()) {
              echo '<div class="w3-quarter two-line-limit" style="margin-bottom: 50px;">';
              echo '<div class="w3-card w3-white">';
              echo '<a href="chitiet.php?idmonan='.$row["id"].'">';
              echo '<img src="../../images/' . $row['hinh_anh'] . '" alt="' . $row['ten_mon_an'] . '" style="width:100%">';
              echo '<h4 class = "w3-center" style = "font-weight:bolder;">' . $row['ten_mon_an'] . '</h4>';
              echo '<p class ="w3-justify" style="padding:0px 10px 0px 10px;">' . $row['mo_ta'] . '</p>';
              echo '</a>';
              echo '</div>';
              echo '</div>';
            }           
            echo '</div>';
          } else {
            echo "0 results";
          }
        }                 
      } else {
        echo "0 results";
      }
     
      ?>

    <!-- //Thực thi, show dữ liệu theo yêu cầu -->
    
   
  <div class="container">
    <div class="card">
      <div class="card-body">
        <h3 class="card-title">Tên món ăn</h3>
        <div class="row">
          <div class="col-lg-5 col-md-5 col-sm-6">
              <div class="white-box text-center"><img src="../../images/TV.jpg" class=""></div>
          </div>
          <div class="w3-row">
            <div class="w3-col">
              <p>Mô tả</p>
              <h3 class="">Nguyên liệu chính</h3>
              <ul class="">
                  <li><i class=""></i></li>
                  <li><i class=""></i></li>
                  <li><i class=""></i></li>
              </ul>
              <h3 class="">Điểm phục vụ</h3>
              <h3 class="">Tầm giá tham khảo</h3>
            </div>
          </div>             
        </div>
      </div>
    </div>
  </div>


  </div>
  <div class="w3-col l2 m3 s4"><p></p></div>
</div>

<?php
    include_once("./footer.php");
?>