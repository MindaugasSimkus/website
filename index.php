<?php
session_start();
include "Classes/Config.php";
include "Classes/DB.php";
include "Classes/Pages.php";
include "Classes/Banners.php";
include "Classes/Users.php";

$config = Config::getConfig();

$page_id = isset($_GET['page']) ? $_GET['page'] : 1; //if shorthand

$page = Pages::getSinglePage($page_id);
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



include "Views/main.php";
