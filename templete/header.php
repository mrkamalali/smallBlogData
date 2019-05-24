<?php
session_start();
?>
<?php require 'inc/functions.php';
$post = new Post;
$posts = $post->fetch_all();
;?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>php with pdo </title>
        <meta name="viewport" >
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
    </head>
    <body>
        <div class="container">
             <div class="row">

                 <div class="col-sm-6">
                     <h1>PHP WITH  PDO CMS</h1>
                 </div>

                 <div class="col-sm-6">
                     <h2>
                         <?php if (isset($_SESSION['logged_in'])) {
                             echo '<a type="button" class="btn btn-warning " href="admin/logout.php">logout</a>
                                   <a type="button" class="btn btn-info " href="admin/add.php">Add New post </a>
                                     <a type="button" class="btn btn-danger" href="admin/delete.php" >Delete</a>';
                                     

                         }else{
                             echo'<a type="button" class="btn btn-success " href="admin/index.php">login</a>';

                         } ?>



                     </h2>
                 </div>


             </div>



        </div>
