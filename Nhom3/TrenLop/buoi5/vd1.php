<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>VD1.php</title>
   </head>

   <body>
      <section class="border border-gray-300 rounded-lg p-4">
         <?php
         $thongbao = "Kết quả không hợp lệ";
         $username = $password = $img = null;
         if ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['username'] != null && $_POST['password'] != null && $_POST['file'] != null) {
            $username = isset ($_POST['username']) ? $_POST['username'] : 'Null';
            $password = isset ($_POST['password']) ? $_POST['password'] : 'Null';
            ;
            $file_temp = $_FILES['img']['tmp_name']; // Đường dẫn tạm thời của tệp đã tải lên
            $img = $_FILES['img']['name'];

            $destination = "./img/" . $img;
            //echo $img;
            $result = move_uploaded_file($file_temp, $destination);
            $thongbao = "Kết quả hợp lệ";
         }
         ?>

         <div class="w-52 h-52 mx-auto">
            <p>
               <?= $thongbao ?>
            </p>
            <p>Username:
               <?= $username ?>
            </p>
            <p>Password:
               <?= $password ?>
            </p>
            <img class="object-contain w-full h-full" src="./img/<?php echo $img ?>" alt="">
         </div>
      </section>
      <a href="./vd1.html" class="underline">
         <--- Back</a>
   </body>

</html>