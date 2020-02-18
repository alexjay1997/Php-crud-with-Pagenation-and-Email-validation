<?php
include '../includes/Delete.Class.php';
$conn_delete = new Delete_class();
$user_id = $_GET['id'];
$delete = $conn_delete->delete_emp($user_id);

header('location:../index.php');

?>