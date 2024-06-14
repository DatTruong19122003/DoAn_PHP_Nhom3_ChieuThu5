<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <link rel="stylesheet" href="./output.css">
   </head>

   <body>
      <pre>
         <?php
         require_once 'functions.php';
         $obj = new Database();
         $getID = $_GET['id'];
         $data = $obj->querySelect("Select * from book where book_id = '{$getID}'");
         $row = (object) $data[0];
         print_r($data);
         ?>
      </pre>

      <section class="text-gray-700 body-font overflow-hidden bg-white">
         <div class="container px-5 py-24 mx-auto">
            <div class="lg:w-4/5 mx-auto flex flex-wrap">
               <img alt="ecommerce" class="lg:w-1/2 w-full object-cover object-center rounded border border-gray-200"
                  src="./img/book/<?= $row->img ?>">
               <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">
                  <h1 class="text-gray-900 text-3xl title-font font-bold mb-4">
                     <?= $row->book_name ?>
                  </h1>
                  <p class="leading-relaxed mb-4">
                     <?= $row->description ?>
                  </p>
                  <div class="flex border-t border-gray-300 p-4">
                     <span class="title-font font-medium text-2xl text-gray-900">
                        <?= $row->price ?> VND
                     </span>
                     <button
                        class="flex ml-auto text-white bg-red-500 border-0 py-2 px-6 focus:outline-none hover:bg-red-600 rounded">Button</button>
                     <button
                        class="rounded-full w-10 h-10 bg-gray-200 p-0 border-0 inline-flex items-center justify-center text-gray-500 ml-4">
                        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                           class="w-5 h-5" viewBox="0 0 24 24">
                           <path
                              d="M20.84 4.61a5.5 5.5 0 00-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 00-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 000-7.78z">
                           </path>
                        </svg>
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <a href="./showTableBook.php" class="underline">
         <--- Back</a>
   </body>

</html>