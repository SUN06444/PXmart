
<?php 
session_start();
$link = mysql_connect('localhost','root','12345678') or die ("Could not connect : " .
mysql_error());
mysql_query('SET NAMES utf8');
mysql_query('SET CHARACTER_SET_CLIENT=utf8');
mysql_query('SET CHARACTER_SET_RESULTS=utf8');
mysql_select_db("pxmart") or die("Could not select datebase");
?>
