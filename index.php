<?php
//Save wall clock time
$page_load_start = microtime(1);

//Connect to db
require 'include/database.php';

//Set page
$page = !empty($_GET['page']) && file_exists("pages/$_GET[page].php") ? $_GET['page'] : 'home';

//Include required page
require "templates/master_template.php";

//Show page load time
echo 'Lehte laaditi ' . round(microtime(1) - $page_load_start, 4) . ' sekundit';

?>