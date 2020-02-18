<?php
include 'dbh.inc.php';
class Insert_class extends Database{

    public function __construct()
    {
        $this->db_connect();
    }
    public function Insert_new_user($username,$Encrypt_password,$email){

        $query = "Insert into tbl_users (username,password,email) values ('$username','$Encrypt_password','$email')";
        $result = mysqli_query($this->connection,$query);
        return $result;
    }

}

?>