<?php
session_start();
require '../inc/connection.php';
if (isset($_SESSION['logged_in'])) {

    if (isset($_POST['btn-add'])) {
        $title = $_POST['title'];
        $content = $_POST['content'];
        $images = $_FILES['image']['name'];
        // $tmp_dir = $_FILES['image']['tmp_name'];
        $tmpName  = $_FILES['image']['tmp_name']; 
        $imageSize = $_FILES['image']['size'];
      
        $upload_dir ='uploads/';
        $imgExt = strtolower(pathinfo($images, PATHINFO_EXTENSION));
        $valid_extensions = array('jpg', 'jpeg', 'png', 'gif', 'pdf',);

        $picProfile = rand(1000, 100000) . "." . $imgExt;

        move_uploaded_file($tmpName, $upload_dir . $picProfile);


        {




            if (empty($title) or empty($content))
            {
                $error = 'Empty Title Or Content';

            }

            else
            {
                $query = $pdo->prepare('INSERT INTO posts(title,content,image) VALUES(:title,:content,:upic) ');
                $query->bindparam(':title', $title); 
                $query->bindparam(':content', $content);
                $query->bindparam(':upic', $picProfile);
//                $query->bindValue(3, $thumbnail,$newname);
                $query->execute();

                header('location: ../index.php');

            }

        }

    }
    include 'templets/header.php';
    ?>
    <?php if (isset($error)) {
        ?>
        <p class="bg-danger btn-lg">  <?php echo $error ?> </p>


    <?php } ?>


    <form action="add.php" method="post" role="form"  enctype="multipart/form-data">
        <div class="form-group">
            <label>New Article Or Post</label>
            <input class="form-control" type="text"
                   name="title" placeholder="Article Title">

                   <label>profile Picture</label>
            <input type="file" name="image" class="form-control" required="" accept="*/image">
        </div>

        <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" cols="50"
                      rows="20" name="content" placeholder="Article Content"></textarea>
        </div>

          <button type="submit" class="btn btn-info btn-lg
         btn-block" name="btn-add">Add New</button>




    </form>

    <?php
        include 'templets/footer.php';
} else{
        header('location: index.php');
    }
?>