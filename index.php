<?php
include "Classes/DB.php";
include "Classes/Pages.php";
include "Classes/Banners.php";

$page_id = isset($_GET['page']) ? $_GET['page'] : 1; //if shorthand

// $db = new DB();
// $result = $db->query("SELECT * FROM pages WHERE id = '$page_id'");

// $title = $result->title;
// $body = $result->body;

$page = Pages::getSinglePage($page_id);
$menu = Pages::getMenu();
$banners = Banners::getBanners($page->title);





include "Views/main.php";
