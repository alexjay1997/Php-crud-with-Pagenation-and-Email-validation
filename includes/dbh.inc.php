<?php
class Database{
private $dbhost;
private $dbuser;
private $dbpass;
private $dbname;

protected function db_connect(){

$this->dbhost = "localhost";
$this->dbuser = "root";
$this->dbpass = "";
$this->dbname = "crud_multiple_rows";

$this->connection = new mysqli($this->dbhost,$this->dbuser,$this->dbpass,$this->dbname);
return $this->connection;





}


}

?>