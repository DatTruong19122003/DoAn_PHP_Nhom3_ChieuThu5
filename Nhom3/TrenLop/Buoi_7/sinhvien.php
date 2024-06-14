<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <link rel="stylesheet" href="./styles/output.css">
   </head>

   <body class="max-w-[50rem] mx-auto my-10">
      <?php
      require_once "connect.php";
      //CRUD
      $name = $_POST['name'] ?? '';
      //tao truy van
      // $string_query = "select * from sinhvien";
      $string_query = "select * from sinhvien where tensv like '%$name%' ";
      //thuc thi cau truy van
      $stm = $conn->query($string_query);
      //Xu ly ket qua
      $data = $stm->fetchAll(PDO::FETCH_OBJ);
      $n = $stm->rowCount();
      ?>
      <!-- form tim kiem sinhvien -->
      <h2 class="text-2xl font-bold">Tìm kiếm</h2>
      <form class="mb-4" action="sinhvien.php" method="post">
         <input class="border" type="text" name="name" id="" value="<?= $name ?>"> <input
            class="text-white px-3 py-1 rounded-lg  bg-blue-600" type="submit" value="send">
      </form>
      <hr>
      <h2 class="text-2xl font-bold mb-4">Thêm sinh viên</h2>
      <form class="grid grid-cols-[auto,1fr] gap-3 mb-4" action="themsv.php" method="post">
         Mã SV: <input class="border mb-2" type="text" name="masv" id=""><br>
         Tên SV: <input class="border mb-2" type="text" name="tensv" id=""><br>
         Ngày sinh: <input class="border mb-2" type="date" name="ngaysinh" id=""><br>
         Lớp: <input class="border mb-2" type="text" name="lop" id=""><br>
         <input class="text-white px-3 py-1 rounded-lg mt-4 bg-blue-600" type="submit" value="send">
      </form>
      <hr>
      <?php
      echo "Tổng số sinh viên: " . $n;
      ?>
      <table class="border border-collapse mt-3">
         <tr>
            <th class="border p-2 ">Mã SV</th>
            <th class="border p-2 ">Tên SV</th>
            <th class="border p-2 ">Ngày sinh</th>
            <th class="border p-2 ">Lớp</th>
         </tr>
         <?php
         foreach ($data as $item) {
            ?>
            <tr>
               <td class="border p-2 ">
                  <?php echo $item->masv ?>
               </td>
               <td class="border p-2 ">
                  <?php echo $item->tensv ?>
               </td>
               <td class="border p-2 ">
                  <?php echo $item->ngaysinh ?>
               </td>
               <td class="border p-2 ">
                  <?php echo $item->lop ?>
               </td>
            </tr>
            <?php
         }
         ?>
      </table>
   </body>

</html>