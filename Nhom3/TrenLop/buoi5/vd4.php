<?php
if (!isset($_SESSION))
   session_start();
$n = isset($_SESSION['dem']) ? $_SESSION['dem'] : 0;
$n++;
?>
<h1>Bạn đã truy cập vào web này (vd4)
   <?= $n ?>
   lan
</h1>
<a href="vd3.php">VD3</a>
<?php
$_SESSION['dem'] = $n;