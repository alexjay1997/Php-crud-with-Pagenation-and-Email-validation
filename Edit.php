<?php
include 'includes/Select.class.php';
$conn =  new Select_class();
$userid= $_GET['id'];
$read = $conn->select_edit_user($userid);
$row =mysqli_fetch_array($read);
?>

<html>
<head>
    <title>Crud_with_multiple_rows</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <?php
       
        ?>
        
        <form method="post" action="functions/update.php">
            <input type ="text" name="username" value="<?php echo $row['username'];?>"><br>
            <input type ="password" name="password" value="<?php echo $row['password'];?>"><br>
            <input type ="email" name="email" value="<?php echo $row['email'];?>"><br>
            <input type="submit" value="Update" name="update-btn">
        </form>
</body>
</html>