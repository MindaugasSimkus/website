<?php

class Pages {

	public static function getSinglePage($slug) {
		$db = new DB();
		$page = $db->query("SELECT * FROM pages WHERE slug = '$slug'");
		return $page[0];
	}

	public static function storePage($id, $title, $slug, $body, $banner_id) {
		$db = new DB();
		$menu = $db->query("SELECT * FROM pages");
		return $menu;
	}

	public static function getMenu() {
		$db = new DB();
		$menu = $db->query("SELECT * FROM pages");
		return $menu;
	}

}
