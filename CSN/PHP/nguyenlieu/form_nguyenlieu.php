<?php
    include_once("../giaodien_quantri/header.php");
?>
<div class="container">
  <h2 class="w3-center w3-padding-16">Thêm nguyên liệu món ăn</h2>
  <form action="them_nguyenlieu.php" method = "post">
    <div class="mb-3 mt-3">
      <label for="monan">Tên món ăn:</label>
      <select type="text" class="form-control" id="monan" name="monan">
        <?php
        include_once("../connect.php");
        $sql = "SELECT * FROM mon_an";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          // output data of each row
          while($row = $result->fetch_assoc()) {
            echo "<option value='" . $row["id"]. "'>" . $row["ten_mon_an"]. " </option>";
          }
        } else {
          echo "0 results";
        }
        ?>
      </select>
    </div>  
    <div class="mb-3 mt-3">
      <label for="ten">Tên nguyên liệu:</label>
      <input type="text" class="form-control" id="ten" placeholder="Nhập tên nguyên liệu" name="ten" required>
    </div>
    <button type="submit" class="btn btn-primary">Thêm mới</button>
  </form>
</div>