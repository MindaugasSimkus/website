<?php

class DB {
	private $db_hostname = "localhost";
	private $db_username = "MindaugasSimkus";
	private $db_password = "agrastaspower";
	private $db = "mindaugassimkus";
	private $conn;

	//prisijungiam prie db
	function __construct() {
		try {

		    $this->conn = new PDO("mysql:host=$this->db_hostname;dbname=$this->db", $this->db_username, $this->db_password);
		    // set the PDO error mode to exception
		    $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		    //echo "Connected successfully"; 
		}
		catch(PDOException $e) {
		    echo "Connection failed: " . $e->getMessage();
		}

	}

	// ivykdom koda ir grazinam reiksmes

	public function query($sql = "SELECT * FROM pages") {
		$query = $this->conn->query($sql);
		$query->execute();
		$result = $query->fetchAll();
		return $result;
	}

	//atsijungiam nuo db
	function __destruct() {
		$this->conn = null;
	}
}

