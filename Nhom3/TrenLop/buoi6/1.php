<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Bai1</title>
      <link rel="stylesheet" href="./output.css">
   </head>

   <body>
      <section class="max-w-[40rem] w-fit mx-auto border border-gray-500 rounded-lg p-4 mt-10">
         <?php
         require_once 'functions.php';
         $a = new A();
         $b = new B();
         $c = new A(1, 2, 3);
         echo "Phương thức F1: " . $a->F1();
         echo "<br>";
         echo "Phương thức F2 (truy cập từ class B ): " . $b->CallF2();
         echo "<br>";
         print_r($c);
         ?>
      </section>
   </body>

</html>