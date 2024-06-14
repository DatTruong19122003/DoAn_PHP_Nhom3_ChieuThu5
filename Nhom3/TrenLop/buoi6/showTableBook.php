<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Show table book</title>
      <link rel="stylesheet" href="./output.css">
   </head>

   <body>
      <pre>
      <?php
      require_once 'functions.php';
      $obj = new Database();
      $data = $obj->querySelect('Select * from book');
      /* print_r($data); */
      ?>
      </pre>
      <?php foreach ($data as $book): ?>
      <div class="bg-white shadow-md rounded-lg overflow-hidden border border-gray-500 mb-8 mx-4">
         <div class="p-4">
            <h1 class="text-gray-900 font-bold text-2xl">
               <?php echo $book['book_name']; ?>
            </h1>
            <p class="text-gray-600 mt-2">
               <?php echo $book['description']; ?>
            </p>
            <div class="mt-4 flex items-center justify-between">
               <div class="text-xl text-gray-900">$
                  <?php echo $book['price']; ?>
               </div>
               <a href="./detailBookId.php?id=<?= $book['book_id'] ?>">
                  <button
                     class="px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600 focus:outline-none focus:bg-blue-600">Chi
                     tiết</button></a>
            </div>
         </div>
      </div>
      <?php endforeach; ?>
   </body>

</html>