<?php
class Banners {

	public static function getBanners ($page) {
		$db = new DB();
		$banner = $db->query("SELECT banners.banner_pic, banners.banner_link FROM banners INNER JOIN pages ON banner_id = id_group AND title = '".$page."'");
		return $banner;
	}
}