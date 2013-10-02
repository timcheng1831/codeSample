<?php

require_once('db.inc');

class Db_object extends Database{
			
	public function  __construct(){
		parent::__construct();
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
$db = new Db_object();
?>