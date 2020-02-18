<?php
include 'dbh.inc.php';
class Insert_class extends Database{

    public function __construct()
    {
        $this->db_connect();
    }
    public function Insert_new_user($username,$Encrypt_password,$email,$role_id){

        $query = "Insert into tbl_users (username,password,email,role) values ('$username','$Encrypt_password','$email','$role_id')";
        $result = mysqli_query($this->connection,$query);
        return $result;
    }

}

?>