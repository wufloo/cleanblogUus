<?php

//Retrieve data from DB
$q = mysqli_query($db, "SELECT * FROM posts NATURAL JOIN authors");

while ($row = mysqli_fetch_assoc($q)) {
    $posts[] = $row;
}

?>

<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('img/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>Clean Blog</h1>
                    <hr class="small">
                    <span class="subheading">A Clean Blog Theme by Start Bootstrap</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <?php
            foreach ($posts as $post) { ?>
                <div class="post-preview">
                    <a href="post.php?id=<?= $post['post_id'] ?>">
                        <h2 class="post-title">
                            <?= $post['post_title'] ?>
                        </h2>

                        <h3 class="post-subtitle">
                            <?= $post['post_description'] ?>
                        </h3>
                    </a>

                    <p class="post-meta">Posted by <a href="#">
                            <?= $post['author_name'] ?>
                        </a> on <?= $post['post_created'] ?></p>
                </div>
                <hr>

            <?php }; ?>

            <!-- Pager -->
            <ul class="pager">
                <li class="next">
                    <a href="#">Older Posts &rarr;</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<hr>
