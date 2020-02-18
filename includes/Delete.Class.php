<?php
include 'dbh.inc.php';
class Delete_class extends Database{
public function __construct()
{
    $this->db_connect();
}
public function delete_emp($user_id)

{
    $query ="Delete from tbl_users where id ='$user_id'";
    $result =mysqli_query($this->connection,$query);
    return $result;
}
}

?>