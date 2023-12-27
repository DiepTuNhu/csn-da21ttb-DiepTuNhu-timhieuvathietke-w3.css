<?php
    include_once("./header.php");
?>
<div class="w3-row">
<div class="w3-col l2 m3 s4"><p></p></div>
<div class="w3-col l8 m6 s4 w3-center" style="margin-top: 50px;">
<?php
$mamonan = "";
if(isset($_GET["idmonan"]))
{
  $mamonan = $_GET["idmonan"];
}
?>
   
  <div class="container">
    <div class="card">
      <?php
        $sql = "SELECT ha.hinh_anh, mn.id, mn.mo_ta, mn.ten_mon_an, nl.ten_nguyen_lieu, mn.gia_ban, dv.ten_quan
        FROM hinh_anh ha, mon_an mn, nguyen_lieu nl, diem_phuc_vu dv
        WHERE ha.mon_an_id = mn.id AND mn.id = nl.mon_an_id AND mn.id = dv.mon_an_id AND mn.id=$mamonan";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {          
          while ($row = $result->fetch_assoc()) {
          echo '<div class="card-body">';
          echo '<h2 class="card-title">'.$row["ten_mon_an"].'</h2>';
          echo '<div class="row">';
          echo '<div class="col-lg-5 col-md-5 col-sm-6">';
          echo '<div class="white-box text-center"><img src="../../images/'.$row["hinh_anh"].'"></div>';
          echo '</div>';
          echo '<div class="w3-row">';
          echo '<div class="w3-col">';
          echo '<p>'.$row["mo_ta"].'</p>';
          echo '<h3>Địa điểm phục vụ: '.$row["ten_quan"].'</h3>';
          echo '<h4>Những nguyên liệu chính:</h4>';
          while ($row = $result->fetch_assoc()) {                    
            echo '<ul>';
            echo '<li>'.$row["ten_nguyen_lieu"].'</li>';
            echo '</ul>';
          }           
          echo '<h4>'.$row["gia_ban"].'</h4>';
          echo '</div>';
          echo '</div>';           
          echo '</div>';
          echo '</div>';
          }           
         
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