<?php
//connect DB
require_once 'config.php';
$db = mysqli_connect('127.0.0.1', 'root', '', 'cleanbloguus') or die(mysqli_error($db));
mysqli_query($db, "SET NAMES 'utf8'");

?>