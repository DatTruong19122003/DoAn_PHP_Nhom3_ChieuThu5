<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Lab 5_1</title>
      <link rel="stylesheet" href="./style/output.css">
   </head>

   <body class="container mx-auto max-w-[30rem]">
      <div class="mb-8 border border-gray-500 rounded-lg p-4">
         <?php
         print_r($_GET);
         ?>
      </div>

      <div
         class="flex gap-3 justify-around mb-8 p-4 [&_a]:px-3 [&_a]:py-2 [&_a]:bg-blue-600 [&_a]:rounded-lg [&_a]:text-white hover:[&_a]:opacity-70 [&_a]:transition-opacity">
         <a href="lab5_1.php?x=1&y=2&z=3"> Link 1</a>
         <a href="lab5_1.php?x[]=1&y[]=2&z[]=3"> Link 2</a>
         <a href="lab5_1.php?mod=product&ac=detail&id=1"> Link 3</a>
         <a href="lab5_1.php?mod=product&ac=list&id=1&name=ABC"> Link 4</a>
      </div>

      <form class="grid grid-cols-[auto,1fr] gap-4 border border-gray-500 p-4 rounded-lg mb-8" action="lab5_1.php"
         method="get">
         <h1 class="col-span-2 text-2xl font-bold text-center text-cyan-400">FORM 1</h1>
         <label>Nhập x:</label>
         <input class="border text-right p-1 border-gray-500" type="text" name="x" value="1">
         <label> Nhập y:</label>
         <input class="border text-right p-1 border-gray-500" type="text" name="y" value="2">
         <label> Nhập z:</label>
         <input class="border text-right p-1 border-gray-500" type="text" name="z" value="3">
         <input
            class="cursor-pointer col-span-2 rounded-lg mx-auto bg-blue-600 text-white p-2 hover:bg-blue-800 hover:transition-all"
            type="submit">
      </form>
      <form class="grid grid-cols-[auto,1fr] gap-4 border border-gray-500 p-4 rounded-lg mb-8" action="lab5_1.php"
         method="get">
         <h1 class="col-span-2 text-2xl font-bold text-center text-cyan-400">FORM 2</h1>
         <label>Nhập x1[]:</label>
         <input class="border text-right p-1 border-gray-500" type="text" name="x[]" value="1">
         <label> Nhập x2[]:</label>
         <input class="border text-right p-1 border-gray-500" type="text" name="x[]" value="2">
         <label> Nhập y[]:</label>
         <input class="border text-right p-1 border-gray-500" type="text" name="y[]" value="3">
         <input
            class="cursor-pointer col-span-2 rounded-lg mx-auto bg-blue-600 hover:bg-blue-800 text-white p-2 hover:transition-all"
            type="submit">
      </form>
      <form class="grid grid-cols-[auto,1fr] gap-4 border border-gray-500 p-4 rounded-lg mb-8" action="lab5_1.php"
         method="get">
         <h1 class="col-span-2 text-2xl font-bold text-center text-cyan-400">FORM 3</h1>
         <label>Nhập tên:</label>
         <input class="border p-1 border-gray-500" type="text" name="ten">
         <label> Nhập z:</label>
         <div>
            <input class="border text-right p-1 border-gray-500 mr-2" type="radio" name="gt" value="1" checked>Nam
            <input class="border text-right p-1 border-gray-500 mr-2" type="radio" name="gt" value="0">Nữ
         </div>
         <label> Sở Thích:</label>
         <div>
            <input class="mr-2" type="checkbox" name="st[]" value="tt">Thể Thao
            <input class="mr-2" type="checkbox" name="st[]" value="dl">Du Lịch
            <input class="mr-2" type="checkbox" name="st[]" value="game">Game
         </div>
         <input
            class="cursor-pointer col-span-2 rounded-lg mx-auto bg-blue-600 hover:bg-blue-800 text-white p-2 hover:transition-all"
            type="submit">
      </form>

   </body>

</html>