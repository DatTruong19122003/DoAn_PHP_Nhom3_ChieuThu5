<?php
class A
{
   public $a = 1;
   public $b = 1;
   public $c = 1;

   public function F1()
   {
      return $this->a + $this->b + $this->c;
   }

   public function __constructWithParameter($a1, $b1, $c1)
   {
      $this->a = $a1;
      $this->b = $b1;
      $this->c = $c1;
   }
   public function __construct()
   {
   }

   protected function F2()
   {
      return "Hello world";
   }
}