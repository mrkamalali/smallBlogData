<?php
    session_start();
    require '../inc/connection.php';
    if (isset($_SESSION['logged_in'])) {
        include 'templets/header.php';
        ?>


        <div class="list group">
            <div class="list group item">
                <a class="list-group-item" href="add.php">
                    <h4 class="list-group-item-heading">
                        Add Post
                    </h4>
                    <p class="list-group-item-text">
                        you can create Posts and articles  here  ..
                    </p>
                </a>
                <a class="list-group-item" href="delete.php">
                    <h4>
                        Delete Post
                    </h4>
                    <p class="list-group-item-text">
                         you can delete  old Posts and articles from here  ..
                    </p>
                </a>



             
                <a class="list-group-item active" href="logout.php">
                    <h4 class="list-group-item-heading">
                        LOG OUT .
                    </h4>
                    <p class="list-group-item-text">
                        you can log out  from here  ..
                        thank you.
                    </p>
                </a>



                <a class="btn btn-danger" href="../index.php">
                    <h4 class="list-group-item-heading">
                        Go To Home Here.
                    </h4>
                </a>


            </div>
        </div>

<?php
        include 'templets/footer.php';
    }
    else
    {
        if(isset($_POST['username'],$_POST['password']))
        {
           $username = $_POST['username'];
           $password = md5($_POST['password']);

           if (empty($username) or empty($password))
           {
            $error = 'username or password empty';
           }

           else
           {
               $query = $pdo->prepare
               ("SELECT * FROM users 
                where username = ? AND password = ?");
               $query->bindValue(1,$username);
               $query->bindValue(2,$password);
               $query->execute();
               $num = $query->rowCount();

               if ($num == 1)
               {
                   $_SESSION['logged_in'] = true;
                   header('Location: index.php');
                   exit();

               }

               else
                   {
                       $error = 'Wrong  Username or Password ';
                   }
               }


           }





        include 'templets/header.php';

?>
    <?php if(isset($error))
        { ?>
          <p class="bg-danger btn-lg">
              <?php echo $error;?></p>
            <?php } ?>

    <form action="index.php"method="post"role="form">
    <div class="form-group">
        <label for="">Username : </label>
        <input type="text" class="form-control" name="username"placeholder="Your Email Here">
    </div>
        <div class="form-group">
            <label for="">Password : </label>
            <input type="password" class="form-control" name="password"placeholder="Your Password Here..">
        </div>
        <input type="submit" class="btn btn-info btn-lg btn-block" value="login">
    </form>
<?php
include 'templets/footer.php';

}?>

