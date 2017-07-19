<?php

class Users {
	public $username = "Guest";
	public $level = "Guest";
	public $error;

	function __construct() { // gaudom ar vartotojas prisijunges
		if (isset($_SESSION['username']) && $_SESSION['username'] != null) {
			$this->username = $_SESSION['username'];
			$this->level = $_SESSION['level'];
		}
	}

	public function login($user, $pass) {
		$db = new DB();
		$userRecord = $db->query("SELECT * FROM users WHERE username = '$user'");
		if ($userRecord != null) {
			// toks vartotojas yra
			if ($userRecord[0]->password == $pass) {
				// vartotojo slaptazodis tinka
				$_SESSION['username'] = $userRecord[0]->username;
				$_SESSION['level'] = $userRecord[0]->level;
				$this->username = $_SESSION['username'];
				$this->level = $_SESSION['level'];
			} else {
				$this->error = "Wrong password";
			}
		} else {
			$this->error = "User not found";
		}
	}

	public function logout() {
		$this->username = "Guest";
		$this->level = "Guest";
		session_destroy();
	}


}