<?php

class Database{
	protected  $_connection;
	
	private static $_instance;
	
	public function  __construct(){
		$this->_connection = new mysqli('localhost', 'timcheng1831', 'fNWSmdxd9TH8QV4c', 'data');
		// Error handling.
		if (mysqli_connect_error()) {
			trigger_error('Cannot connect it to MySQL: ' . mysqli_connect_error(), E_USER_ERROR);
		}
	}
	
	public static function getInstance() 
	{
		if (!self::$_instance) {
			self::$_instance = new self();
		}
		return self::$_instance;
	}
	
	public function getConnection()
	{
		return $this->_connection;
	}
	
	public function setConnection($connection)
	{
		$this->_connection = $connection;
	}
	
}
?>