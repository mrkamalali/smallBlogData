<?php session_start();
require '../inc/connection.php';?>
<?php include 'templets/header.php'; ?>

<?php
if (isset($_SESSION['logged_in'])) {
        if (isset($_GET['edit_id']) && !empty($_GET['edit_id'])) {
            $id = $_GET['edit_id'];
            $stmt_edit = $pdo->prepare('SELECT * FROM posts WHERE  id = :uid');
            $stmt_edit->execute(array(':uid' => $id));
            $edit_row = $stmt_edit->fetch();
            extract($edit_row);


//print_r($edit_row);

//            $stmt_edit->bindValue(1,$id);
//            $stmt_edit->execute();
//
//          $edit_row =   $stmt_edit->fetch();




        } else

            {
                header("Location: index.php");
            }
if(isset($_POST['btn-save']))

{

    $title = $_POST['title'];
    $content = $_POST['content'];
    $images=$_FILES['image']['name'];
    $tmp_dir=$_FILES['image']['tmp_name'];
    $imageSize=$_FILES['image']['size'];

    $upload_dir='uploads/';
    $imgExt=strtolower(pathinfo($images,PATHINFO_EXTENSION));
    $valid_extensions=array('jpeg', 'jpg', 'png', 'gif', 'pdf');
    $picProfile=rand(1000, 1000000).".".$imgExt;
    unlink($upload_dir.$edit_row['image']);
    move_uploaded_file($tmp_dir, $upload_dir.$picProfile);
    $stmt=$pdo->prepare('UPDATE posts SET title = :title, content = :content, image=:upc WHERE id=:uid');
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':content', $content);
    $stmt->bindParam(':upc', $picProfile);
    $stmt->bindParam(':uid', $id);
    if($stmt->execute())
    {
        ?>
        <script type="text/javascript">
            alert('Successfully Update');
            window.location.href="index.php";
        </script>
        <?php
    }else

        ?>
        <script type="text/javascript">
            alert('Error while update data and image');
            window.location.href="index.php";
        </script>
        <?php

}

?>





<form method="post" role="form" enctype="multipart/form-data">
    <div class="form-group">
        <label>New Article Or Post</label>
        <input class="form-control" type="text" name="title" placeholder="Article Title" value="<?php echo $edit_row['title']; ?> ">

        <label>profile Picture</label>
        <input type="file" name="image" class="form-control" required="" accept="*/image">
    </div>

    <div class="form-group">
        <label>Content</label>
        <textarea class="form-control" cols="50"
                  rows="20" name="content" placeholder="Article Content" value="<?php $edit_row['content']; ?>"><?php  echo $edit_row['content']; ?></textarea>
    </div>

    <button type="submit" class="btn btn-info btn-lg
         btn-block" name="btn-save">Add New
    </button>


</form>

    <?php
    include 'templets/footer.php';
} else{
    header('location: index.php');
}
?>