<?php

$link= mysqli_connect('localhost', 'root','root') or
die('Can not connect to server!');
mysqli_select_db($link,'store')  or
die('Can not connect to database!');
?>

