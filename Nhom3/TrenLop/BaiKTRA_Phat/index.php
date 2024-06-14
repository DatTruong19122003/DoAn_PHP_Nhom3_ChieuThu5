<!DOCTYPE html>
<html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <link rel="stylesheet" href="./styles/output.css">
   </head>

   <body class="max-w-[50rem] mx-auto p-8">
      <?php
      // load class khachHang
      require_once './KhachHang.php';
      ?>
      <form class="grid" action="process.php" method="POST">
         <h2 class="text-center text-3xl font-bold mb-4 text-red-600">THANH TOÁN</h2>
         <label class="mb-2 font-semibold" for="customer-id">Mã số (Số điện thoại)</label>
         <input class="mb-3 border border-gray-500 rounded-md p-2" type="text" name="customer-id" id="customer-id"
            required>
         <label class="mb-2 font-semibold"" for=" customer-name">Họ tên khách hàng</label>
         <input class="mb-3 border border-gray-500 rounded-md p-2" type="text" name="customer-name" id="customer-name">
         <label class="mb-2 font-semibold"" for=" customer-type">Chọn loại</label>
         <select class="p-2 mb-3" name="customer-type" id="customer-type">
            <option value="vip">Khách hàng VIP</option>
            <option value="thanthiet">Khách hàng thân thiết</option>
            <option value="vanglai">Khách hàng vãng lai</option>
         </select>
         <label class="mb-2 font-semibold"" for=" create-date">Ngày lập</label>
         <input class="mb-3 border border-gray-500 rounded-md p-2" type="date" name="create-date" id="create-date">
         <label class="mb-2 font-semibold"" for=" product">Mặt hàng</label>
         <div class="flex gap-3">
            <input class="row-span-1 border border-gray-500 rounded-md p-2 w-full mb-3" type="text"
               name="product[0][name]" id="product-name">
            <input class="row-span-1 border border-gray-500 rounded-md p-2 mb-3" type="number"
               name="product[0][quantity]" id="product-quantity" min="1" value="1">
         </div>
         <span class="ml-auto w-fit underline hover:text-blue-700 cursor-pointer" onclick="addNewRow()">Thêm mặt
            hàng</span>
         <button
            class="bg-blue-600 text-white py-3 px-8 w-fit mx-auto mt-6 rounded-lg text-xl hover:transition-all hover:bg-blue-500"
            type="submit ">Tính
            tiền</button>

      </form>

      <!-- SCRIPT  -->
      <script>
      let cnt = 0;

      function addNewRow() {
         cnt++;
         const row = document.createElement('div');
         row.classList.add('flex', 'gap-3');
         row.innerHTML = `
               <input class="row-span-1 border border-gray-500 rounded-md p-2 w-full mb-3" type="text"
               name="product[${cnt}][name]" id="product-name">
            <input class="row-span-1 border border-gray-500 rounded-md p-2 mb-3" type="number"
               name="product[${cnt}][quantity]" id="product-quantity" min="1" value="1">
               `;
         document.querySelector('form').insertBefore(row, document.querySelector('span'));
      }
      </script>
   </body>

</html>