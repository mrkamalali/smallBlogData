<?php


session_start();
require '../inc/functions.php';
$post = new post;
if (isset($_SESSION['logged_in'])) {
    if (isset($_GET['id']))
    {
        $id=$_GET['id'];
        $query = $pdo->prepare('DELETE FROM posts WHERE  id = ?');
        $query->bindValue(1,$id);
        $query->execute();
        header('location:delete.php');
    }
    $posts = $post->fetch_all();
    include 'templets/header.php';
    ?>
        <div class="row">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th><h4>CMS - BLOG TITLE</h4></th>
                        <th>Require</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <form action="delete.php" method="get">
                    <?php foreach ($posts as $post) : ?>
                        <tr>
                            <td><label><?php echo $post['title']; ?></label></td>
                            <td><input type="checkbox" name="id" value=" <?php echo $post['id'];  ?> " > </td>
                            <td><button name="submit" class="btn btn-info" value="Delete"> Delete </td>
                        </tr>
                    <?php endforeach; ?>
                </form>
            </table>
        </div>

        <a class="btn btn-success" href="../index.php">Home</a>

    <?php
    include 'templets/footer.php';
}else{header('location:index.php');}

?>