<?php


session_start();
include "Classes/Config.php";
include "Classes/DB.php";
include "Classes/Pages.php";
include "Classes/Banners.php";
include "Classes/Users.php";

$config = Config::getConfig();


if (isset($_GET['page']) && $_GET['page'] != null) {
	$page_slug = $_GET['page'];
} else {
	$page_slug = "home";
}

$page = Pages::getSinglePage($page_slug);
$menu = Pages::getMenu();
$banners = Banners::getBanners($page->title);
$user = new Users();

if (isset($_POST['username']) && $_POST['username'] != null) {
	// bandoma prisijungti
	$user->login($_POST['username'], $_POST['password']);

}

if (isset($_POST['logout']) && $_POST['logout'] != null) {
	// bandoma atsijungti
	$user->logout();
}

if ($user->level == "admin") {
	include 'Views/admin.php';
} else {
	include 'Views/main.php';
}



include "Views/main.php";
