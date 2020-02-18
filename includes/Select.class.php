<?php
include_once 'dbh.inc.php';
class Select_class extends Database{

    public function __construct()
    {
        $this->db_connect();
    }
// ********* Select all for page nation button  ************
    public function Select_all(){
        
        $query ="Select * from tbl_users " ;
        $result=mysqli_query($this->connection,$query);
        return $result;
    }
//****************** * end  * **************************

//****  Select for page nation 8 records only per page *********
    public function Select_all_users($start_from,$record_per_page){
        
        $query ="Select * from tbl_users LIMIT $start_from,$record_per_page" ;
        $result=mysqli_query($this->connection,$query);
        return $result;

    }
/// ************* End Pagenation Select ***********************

// *********** Start query for check if already exist ************

public function check_user($username,$email){
        
    $query ="Select * from tbl_users where username ='$username' || email ='$email' ";
    $result=mysqli_query($this->connection,$query);
    return $result;
}
// *********** end Of check ***************************************


// ******************   Start search query  ***********************
public function search_query($search_text){

    $query = "Select * from tbl_users where concat(id,username,email) LIKE '%$search_text%'";
    $result=mysqli_query($this->connection,$query);
    return $result;
}
//select edit user


public function select_edit_user($userid){

    $query="select * from tbl_users where id='$userid'";
    $result=mysqli_query($this->connection,$query);
    return $result;
}
}
?>