<?php
    include_once("./header.php");
?>
<div class="w3-row">
<div class="w3-col l2 m3 s4"><p></p></div>
<div class="w3-col l8 m6 s4 w3-container" style="margin-top: 50px;">
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
        $sql = "SELECT ha.hinh_anh, mn.id, mn.mo_ta, mn.ten_mon_an, nl.ten_nguyen_lieu, mn.gia_ban
        FROM hinh_anh ha, mon_an mn, nguyen_lieu nl
        WHERE ha.mon_an_id = mn.id AND mn.id = nl.mon_an_id AND mn.id=$mamonan";
        //echo $sql;
        $result = $conn->query($sql);
        
        if ($result->num_rows > 0) {          
          while ($row = $result->fetch_assoc()) {
          ?>
          <div class="w3-row">
          <div class="w3-panel w3-leftbar w3-border-green  w3-xxlarge w3-serif">
            <h2 class = "w3-left" style = "text-transform:uppercase; font-weight:bolder;"><?php echo $row['ten_mon_an'];?></h2>
          </div>
              <div class="w3-col s3 w3-padding-16">
                <img src="../../images/<?php echo $row['hinh_anh'];?>" alt="<?php echo $row['ten_mon_an'];?>" style="width:100%">
              </div>

              <div class="w3-col s9 w3-panel">
                <div class="w3-panel w3-left w3-padding-16" >
                <h3 class="w3-left" style="font-weight: bolder; line-height:1.5" >Những nguyên liệu chính:</h3>
                  <ul type = "square">
                    
                    <?php
                  while ($row1 = $result->fetch_assoc()) {                                        
                    echo '<li>'.$row1["ten_nguyen_lieu"].'</li>';                    
                  }
                  ?>
                  
                  </ul>
                </div>
              </div>
            <div class="w3-col ">
              <h3 style="font-weight:bolder;">Chi tiết món ăn: </h3>
              <div class="w3-panel w3-round-xlarge w3-pale-green w3-padding-16">
              <p style = "text-align:justify; line-height:1.5"><?php echo $row["mo_ta"];?></p>
              </div>
            </div>
          </div>
          <?php
          }
         
        } else {
          echo "0 results";
        }
        
      $sql1 = "SELECT *
        FROM diem_phuc_vu
        WHERE mon_an_id = '".$mamonan."'";
       //echo $sql; 
        $result = $conn->query($sql1);
        ?>
        <div class="w3-panel w3-leftbar w3-border-green  w3-xxlarge w3-serif">
         <h2 class = "w3-left" style = "text-transform:uppercase; font-weight:bolder;">ĐỊA ĐIỂM PHỤC VỤ
         </h2>
      </div>
        <?php
        if ($result->num_rows > 0) {
               
          while ($row = $result->fetch_assoc()) {
            echo '<div class="w3-quarter" style="margin-bottom: 50px;">';
            echo '<a style="text-decoration:none" href="chitiet_diadiem.php?iddiadiem='.$row["id"].'"><div class="w3-container w3-row">';
            //echo '<div class="w3-col s3 l3 m4">';
            echo '<img style="width:100%" src="../../images/'.$row["hinh_anh"].'">';
            echo '<h4 class="card-title">'.$row["ten_quan"].'</h4>';
            echo '</div></a>';     
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