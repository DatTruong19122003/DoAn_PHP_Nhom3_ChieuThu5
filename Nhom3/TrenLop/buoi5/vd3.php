<?php
if (!isset($_SESSION))
   session_start();
$n = isset($_SESSION['dem']) ? $_SESSION['dem'] : 0;
$n++;
?>
<h1>Bạn đã truy cập web này (vd3)
   <?= $n ?>
</h1>
<a href="./vd4.php">VD4</a><br>
<a href="./vd5.php">Reset</a>
<?php
$_SESSION['dem'] = $n;