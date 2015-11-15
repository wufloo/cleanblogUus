<?php

//Get post_id
$post_id = isset($_GET['id']) ? $_GET['id'] : -1;




//Retrieve data from DB
$q = mysqli_query($db, "SELECT *, DATE_FORMAT(post_created, '%d.%m.%Y %H:%i') post_created FROM posts NATURAL JOIN authors WHERE post_id=$post_id");

$post = mysqli_fetch_assoc($q);
?>


<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('../img/post-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <h1 class="post-title">
                        <?= $post['post_title'] ?>
                    </h1>
                    <h2 class="subheading"><?= $post['post_description'] ?></h2>
                    <span class="meta">Posted by <a href="#"><?= $post['author_name'] ?></a> on <?= $post['post_created'] ?></span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Post Content -->
<article>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1"><?= $post['post_text'] ?>
            </div>
        </div>
    </div>
</article>

<hr>


