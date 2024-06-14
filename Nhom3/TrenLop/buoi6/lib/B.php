<?php
class B extends A
{
   public function CallF2()
   {
      $a = new A();
      return $a->F2();
   }
}