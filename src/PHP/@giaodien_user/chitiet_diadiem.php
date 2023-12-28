<?php
    include_once("./header.php");
?>
<div class="w3-row">
<div class="w3-col l2 m3 s4"><p></p></div>
<div class="w3-col l8 m6 s4" style="margin-top: 50px;">
<?php
$madiadiem = "";
if(isset($_GET["iddiadiem"]))
{
  $madiadiem = $_GET["iddiadiem"];
}
?>
   
  <div class="container">
    <div class="w3-row">
      <?php
        $sql = "SELECT *
        FROM diem_phuc_vu 
        WHERE id='".$madiadiem."'";
       $result = $conn->query($sql);
        if ($result->num_rows > 0) {  
          $row = $result->fetch_assoc();
          ?>
          <div class="w3-panel w3-leftbar w3-border-green  w3-xxlarge w3-serif">
            <h2 style = "text-transform:uppercase; font-weight:bolder;"><?php echo $row['ten_quan'];?></h2>
          </div>
            <div class="w3-col s3 w3-padding-16">
              <img src="../../images/<?php echo $row['hinh_anh'];?>" alt="<?php echo $row['ten_quan'];?>" style="width:100%">
            </div>

            <div class="w3-col s9 w3-panel ">
              <div class="w3-panel  ">
                <ul type = "square">
                <li><p style="text-align:justify;"><b>Địa chỉ: </b><?php echo $row['dia_chi_quan'];?> </p></li>
                <li><p style="text-align:justify;"><b>Giờ phục vụ: </b>Giờ mở cửa:<?php echo $row["gio_mo_cua"];?> - Giờ đóng cửa: <?php echo $row["gio_dong_cua"];?></p></li>
                </ul>
              </div>
            </div>
            <div class="w3-left">
              <h3><b>Giới thiệu chung:</b></h3>
              <div style="text-align:justify;"><?php echo $row['gioi_thieu_chung'] ;?></div> 
            </div>   
         <?php
        } else {
          echo "0 results";
        }
      ?>
    </div>
  </div>
  </div>
  <div class="w3-col l2 m3 s4"><p></p></div>
</div>

<?php
    include_once("./footer.php");
?>