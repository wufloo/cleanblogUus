<?php

//Get post_id
$post_id = isset($_GET['id']) ? $_GET['id'] : -1;


//Retrieve data from DB
$q = mysqli_query($db, "SELECT *, DATE_FORMAT(post_created, '%d.%m.%Y %H:%i') post_created FROM posts NATURAL JOIN authors WHERE post_id=$post_id");

$post = mysqli_fetch_assoc($q);
?>
