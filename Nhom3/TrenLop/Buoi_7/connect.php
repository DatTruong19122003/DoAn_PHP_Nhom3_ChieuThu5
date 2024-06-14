<?php
$servername = "localhost";
//Mặc định localhost là 3306
//IP localhost:127.0.0.1:3306
$username = "root";
$password = "";
$db = "mydb";
try {
   //Khoi tao ket noi
   $conn = new PDO("mysql:host=$servername;dbname=$db", $username, $password);
   //Kiem tra ket noi
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
   $e->getMessage();
   //thoat chuong trinh neu muon
   exit;
}