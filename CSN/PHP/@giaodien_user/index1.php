<?php
    include_once("./header.php");
?>
  <!-- !PAGE CONTENT! -->
  <div class="w3-main w3-content" style="max-width:1200px;margin-top:60px;">
    <div class="w3-row-padding" id="food">
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
    </div><!--end row-->
  </div>

<?php
    include_once("./footer.php");
?>
