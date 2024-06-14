<?php
class Database
{
   protected $conn;
   function __construct()
   {
      $this->conn = new PDO('mysql:host=localhost;dbname=test', 'root', '');
      $this->conn->query('set names utf8');
   }

   function querySelect($sql)
   {
      $str = $this->conn->query($sql);
      return $str->fetchAll(PDO::FETCH_ASSOC);
   }
}