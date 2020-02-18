<?php
include 'includes/Select.class.php';
$select_conn = new  Select_class();
//$select_result =$select_conn->Select_all_users($start_from,$record_per_page);

$search_result_message = "";

?>

<?php
// *** function for Pagenation ***
$record_per_page =8;
$page ='';
if(isset($_GET['page'])){

    $select_conn = new  Select_class();
  
    $page = $_GET['page'];


}

else {

    $page =1;
}

$start_from = ($page-1)*$record_per_page;
$select_result =$select_conn->Select_all_users($start_from,$record_per_page);

// *******  end  **********
?>

<?php
if(isset($_POST['search-btn'])){
$search_conn = new Select_class();
$search_text = $_POST['search-text'];
$select_result = $search_conn->search_query($search_text);

if(mysqli_num_rows($select_result)<=0){

    $select_result =$select_conn->Select_all_users($start_from,$record_per_page);
         $search_result_message= "No Found: $search_text";
}
elseif(mysqli_num_rows($select_result)>0) {

    $select_result = $search_conn->search_query($search_text);
    $search_result_message = "Found Result:$search_text";

}
if(empty($_POST['search-text'])){
    $select_result =$select_conn->Select_all_users($start_from,$record_per_page);
    $search_result_message = "";

}

}
else{

    $select_result =$select_conn->Select_all_users($start_from,$record_per_page);
}


?>

<!doctype html>
<html>
    <head>
    <title>Crud_with_multiple_rows</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    
<body>
    <div class ="page-container">
        <div class="header">
            <div class="container-wrapper">
                <div class="Logo-wrapper">
                    CMS System
                </div>
            </div>
            <section class="table">
                <center>
                    <form method="post" action="functions/reg_func.php">
                    <input type="text" name="username" placeholder="Username"> <br><br>
                    <input type="password" name="password" placeholder="Password"> <br>  <br>
                    <input type="text" name="email" placeholder="Email"><br><br>
                    <input type ="submit" name="reg-btn" value="Submit"><br><br>
                
                </form>
               <br>
               <form method="post" action="index.php">
                   <input type="text" name="search-text"placeholder="search..."/>
                   <input type ="submit" name="search-btn" value="Search">
                </form> 
                <br>
                <table>
                    <thead>
                        <th>ID</th><th>Username</th><th>Password</th><th>Email</th><th>Edit</th>

                    </thead>
                    <tbody>
                        <?php echo $search_result_message." <br>";?>
                        <br>
                        <?php 
                        while($row = mysqli_fetch_array($select_result)){
                        ?>

                        <tr>
                            <td><?php echo $row['id'];?></td>
                            <td><?php echo  $row['username'];?></td>
                            <td><?php echo  $row['password'];?></td>
                            <td><?php echo  $row['email'];?></td>
                            <td><a href="Edit.php?id=<?php echo $row['id'];?>">Edit</td>
                            

                        </tr>
                            
                        <?php
                        }
                        ?>

                    </tbody>  
                </table>
                <br>
                <div class="page-nation">
                <?php
                // function for page nation button

                $page_query = $select_conn->Select_all();
                $total_records = mysqli_num_rows($page_query);
                $total_pages = ceil($total_records/$record_per_page);

                for ($i=1;$i<=$total_pages;$i++){

                    echo "<a href='index.php?page=".$i."' class='page_nation_btn'>".$i."</a>";
                }
                
                ?>
                </div>
                </center>
            </section>
        </div>

</div>
</body>

</html>