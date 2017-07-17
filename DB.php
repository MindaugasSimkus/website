<?php

class DB {
	private $db_hostname = "localhost";
	private $db_username = "MindaugasSimkus";
	private $db_password = "agrastaspower";
	private $db = "mindaugassimkus";

	//prisijungiam prie db
	function __construct() {
		try {

		    $conn = new PDO("mysql:host=$servername;dbname=myDB", $username, $password);
		    // set the PDO error mode to exception
		    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		    echo "Connected successfully"; 
		}
		catch(PDOException $e) {
		    echo "Connection failed: " . $e->getMessage();
		}

	}

	// ivykdom koda ir grazinam reiksmes



	//atsijungiam nuo db
	function __destruct() {
		
	}
}
