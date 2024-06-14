<?php
include "connect.php";
$masv = $_POST["masv"] ?? '';
$tensv = $_POST["tensv"] ?? '';
$ngaysinh = $_POST['ngaysinh'] ?? '';
$lop = $_POST['lop'] ?? '';
//tao lenh truy van
$string_query = "insert into sinhvien values ('$masv','$tensv','$ngaysinh','$lop')";
//thuc thi truy van
$stm = $conn->query($string_query);
header("location:sinhvien.php");