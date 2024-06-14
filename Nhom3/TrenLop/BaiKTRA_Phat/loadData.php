<?php
// Load the XML file
$xml = simplexml_load_file('data.xml');
echo "<pre>";
print_r($xml);
// Access the customers
echo "Sản Phẩm Đã Mua<br><br>";
$cnt = 0;
foreach ($xml->Bill as $bill) {
   echo "Sản Phẩm {$cnt}<br>";
   $customerId = $bill->{'customer-id'};
   $customerName = $bill->{'customer-name'};
   $customerType = $bill->{'customer-type'};

   echo "Customer ID: $customerId<br>";
   echo "Customer Name: $customerName<br>";
   echo "Customer Email: $customerType<br>";

   foreach ($bill->product->children() as $item) {
      $name = $item->name;
      $quantity = $item->quantity;
      echo "Name: $name, Quantity: $quantity<br>";
   }
   echo "<br>";
   $cnt++;
}