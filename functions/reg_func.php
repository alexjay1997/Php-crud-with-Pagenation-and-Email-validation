<?php
include_once '../includes/Insert.Class.php';
include_once '../includes/Select.Class.php';

if(isset($_POST['reg-btn'])){

$insert_conn = new Insert_class();

$username = mysqli_real_escape_string($insert_conn->connection,$_POST['username']);

$password = mysqli_real_escape_string($insert_conn->connection,$_POST['password']);

$Encrypt_password = password_hash($password, PASSWORD_DEFAULT); 

$email = mysqli_real_escape_string($insert_conn->connection,$_POST['email']);
$role_id = mysqli_real_escape_string($insert_conn->connection,$_POST['role_id']);

//******** check if user is already exist ********/
$conn_select = new Select_class();

$check = $conn_select->check_user($username,$email);

if(mysqli_num_rows($check) >0 ){

    echo"<script>alert('already exist!..')</script>";
    echo"<script>window.location.href='../index.php'</script>";


}
// end of check

//************** Start Validate email  *******************************
elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)==true) {
    echo"Email Not valid!!";
   // echo"<script>window.location.href='../index.php'</script>";
// ******************  END *******************************************
}

else{

   
$create_new_user = $insert_conn->Insert_new_user($username,$Encrypt_password,$email,$role_id);
if($create_new_user){
    header('location:../index.php');

}
else{
    echo "<script>alert('No Record Added!!!')</script>";
    echo "<script>window.location.href='../index.php'</script>";
  

}
}

}
?>