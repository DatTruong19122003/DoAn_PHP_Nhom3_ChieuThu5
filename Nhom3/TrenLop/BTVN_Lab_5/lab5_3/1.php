<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>VD3</title>
      <link rel="stylesheet" href="../style/output.css">
   </head>


   <body class="container mx-auto max-w-[50rem] p-12">

      <form class="grid gap-3 grid-cols-[auto,auto] text-center items-center mb-4 border border-gray-500 rounded-lg p-4"
         action="2.php" method="POST" enctype="multipart/form-data">
         <h1 class="text-center mb-5 text-3xl font-bold text-red-600 col-span-2
         +">Form 1</h1>
         <div>
            <label for="">Tên</label>
            <input class="border" type="text" name="ten" id="">
         </div>
         <div class="flex items-center gap-3">
            <label for="">Giới tính</label>
            <select name="gt" id="gt">
               <option value="Nam">Nam</option>
               <option value="Nữ">Nữ</option>
            </select>
         </div>
         <div class="col-span-2">
            <label for="">Image:</label>
            <input type="file" name="img" />
         </div>
         <input type="submit"
            class="border rounded-lg w-fit px-5 py-2 hover:opacity-80 transition-all bg-blue-600 text-white mx-auto col-span-2 mt-3"
            value="Submit">
      </form>


   </body>

</html>