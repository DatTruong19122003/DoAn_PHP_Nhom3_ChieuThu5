<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
   if (!file_exists('data.xml')) {
      $xml = new SimpleXMLElement('<root/>');
      $dom = dom_import_simplexml($xml);
   } else {
      $xml = simplexml_load_file('data.xml');
      $dom = dom_import_simplexml($xml);
   }

   // Function to convert array to XML
   function arrayToXml($data, &$dom)
   {
      foreach ($data as $key => $value) {
         if (is_array($value)) {
            if (is_numeric($key)) {
               $key = 'item' . $key;
            }
            $subnode = $dom->appendChild($dom->ownerDocument->createElement($key));
            arrayToXml($value, $subnode);
         } else {
            $dom->appendChild($dom->ownerDocument->createElement($key, htmlspecialchars($value)));
         }
      }
   }

   // Create a new Bill element
   $bill = $dom->appendChild($dom->ownerDocument->createElement('Bill'));

   // Convert POST data to XML
   arrayToXml($_POST, $bill);

   // Save the XML to a file
   $dom->ownerDocument->save('data.xml');
}

// $file = fopen('data.xml', 'w');
// fclose($file);
// Save the XML to a file