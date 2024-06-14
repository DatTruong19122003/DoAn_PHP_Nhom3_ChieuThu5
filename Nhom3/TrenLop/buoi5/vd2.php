<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Document</title>
      <link rel="stylesheet" href="./output.css" />
   </head>

   <body>
      <form class="grid grid-cols-1 gap-3 text-center items-center mb-4" action="vd2.php" method="Post"
         enctype="multipart/form-data">
         <h1 class="text-xl font-bold">
            THÔNG TIN ĐĂNG KÍ<span class="font-normal text-lg">(method: Post)</span>
         </h1>
         <div>
            <label for="">Username</label>
            <input class="border" type="text" name="username" id="" />
         </div>
         <div class="items-center gap-3">
            <label for="">Mật khẩu</label>
            <input class="border" type="password" name="password" />
         </div>
         <div class="">
            <label for="">Hình đại diện:</label>
            <input type="file" name="img" id="" />
         </div>
         <input
            class="border rounded-lg w-fit px-5 py-2 hover:opacity-80 transition-all bg-blue-600 text-white mx-auto mt-3"
            type="submit" value="Submit" />
      </form>
      <section class="border border-gray-300 rounded-lg p-4">
         <?php
         $thongbao = "Kết quả không hợp lệ";
         $username = $password = $img = null;
         if ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['username'] != null && $_POST['password'] != null) {
            $username = isset($_POST['username']) ? $_POST['username'] : 'Null';
            $password = isset($_POST['password']) ? $_POST['password'] : 'Null';
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
         <a></a>
      </section>
   </body>

</html>