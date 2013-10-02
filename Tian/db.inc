<?php

class Database{
	private $_connection;
	
	private static $_instance;
	
	public function  __construct(){
		$this->_connection = new mysqli('localhost', 'root', 'nx349r0x', 'data');
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
	
	public function insertAction($table, $fields = array())
	{				
		if(!empty($this->_connection)){
			$q = "insert into ".$user."(";
			foreach($field_names as $value){
				$q .= $value.",";
			}
			$q =  substr($q, 0, -1).')values(';
			foreach($field_values as $value){
				$q .= '"'.$value.'",';
			}
			$q =  substr($q, 0, -1).')';
			
		    $this->_connection->query($q);
			
		}
	}
	
	public function updateAction($table, $updated_id, $fields)
	{
		if(!empty($this->_connection)){
			$q = "update users ".$table." set";
			
			foreach($fields as $key=> $value){
				$q .= $key."="."'".$value."',";		
			}
			$q =  substr($q, 0, -1).' where id = '.$updated_id.'';			
			$this->_connection->query($q);
		}		
	}
	
	public function displayAction($table, $id)
	{
		if(!empty($this->_connection)){
			$q = 'select * from '.$table.'';
			if(!empty($id))
				$q .= ' where id = '.$id.'';			
			return $this->_connection->query($q);		
		}
	}
	
	public function deleteAction($table, $delete_id)
	{
		if(!empty($this->_connection)){
			$q = "delete from ".$table." where id =".$id;
			$this->_connection->query($q);
		}
	}
	
	
}
?>