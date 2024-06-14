<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <link rel="stylesheet" href="../style/output.css">
   </head>

   <body>
      <section class="border border-gray-300 rounded-lg p-4">
         <?php
         if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty ($_POST['ten']) && !empty ($_POST['gt']) && isset ($_FILES["img"]) && $_FILES['img']['tmp_name'] != null && getimagesize($_FILES['img']['tmp_name'])) {
            $ten = $_POST['ten'];
            $gt = $_POST['gt'];
            $file_temp = $_FILES['img']['tmp_name']; // Đường dẫn tạm thời của tệp đã tải lên
            $img = $_FILES['img']['name'];
            $destination = "../img/" . $img;
            $result = move_uploaded_file($file_temp, $destination);
            //echo $destination;
            if ($gt == 'Nữ') {
               echo '<h1 class = " text-center text-xl mb-4"> Chào chị ' . $ten . "</h1>";
            } else {
               echo '<h1 class = " text-center text-xl mb-4"> Chào anh ' . $ten . "</h1>";
            }
         } else {
            $notiError = "<span class='text-2xl text-red-600 font-bold'>Lỗi</span> <br>";
            empty ($_POST['ten']) ? $notiError .= "Tên chưa nhập <br>" : "";
            empty ($_POST['gt']) ? $notiError .= "Không chọn giới tính <br>" : "";
            ($_FILES['img']['tmp_name'] == null || !getimagesize($_FILES['img']['tmp_name'])) ? $notiError .= "File upload có lỗi hoặc không phải file hình <br>" : "";
            echo "<h1 class = ' text-center text-xl mb-4'> {$notiError} </h1>";

         }
         ?>
         <div class="w-52 h-52 mx-auto"><img class="object-contain w-full h-full" src="../img/<?php echo $img ?>"
               alt="">
         </div>
      </section>
      <a href="./1.php" class="underline">
         <--- Back</a>
   </body>

</html>