<?php
function myAutoloader($className)
{
   $filename = __DIR__ . '/lib/' . $className . '.php';
   if (file_exists($filename)) {
      include_once $filename;
   }
}

// Đăng ký hàm tải lớp tự động
spl_autoload_register('myAutoloader');