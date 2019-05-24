<?php require 'connection.php';?>
<?php
//
//function posts(){
//    global $pdo;
//
////    $query = $pdo->prepare('SELECT * FROM posts');
//    $query = $pdo->prepare('SELECT  id,title,content, LEFT (content,150) as excerpt FROM posts');
//    $query->execute();
//    return $query->fetchAll();
//}
//
 class Post
 {
     public function fetch_all(){
         global $pdo;

        $query = $pdo->prepare('SELECT  id,title,image,content, LEFT (content,150) as excerpt FROM posts');
        $query->execute();
        return $query->fetchAll();
         }
    public function fetch_data($id)
    {
        global $pdo;

        $query = $pdo->prepare("SELECT * FROM posts where id = ? ");
        $query->bindValue(1,$id);
        $query->execute();
        return $query->fetch();


    }




 }








?>



