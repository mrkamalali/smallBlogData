<?php include 'templete/header.php'; ?>
<?php
    if (isset($_GET['id']))
    {
       $id =$_GET['id'] ;
    }else
    {
        header('location : index.php');
        exit();
    }
    $data = $post->fetch_data($id);
   ?>
    <div class="container">
        <div class="row">
            <section class="article">
                <ul class="list-group">
                    <li class="list-group-item">
                        <blockquotes>

                          <div>
                              <lable class="label label-primary">The Title Is :</lable>
                        <h1><?php echo$data['title'];  ?></h1>


                          </div>

                            <div>
                            <label class="label label-success">The Content is :</label>
                        <h4><?php echo$data['content'];  ?></h4>
                            </div>
        
              
                        <div>
                        <label class="label label-default"> Subject Image</label>
                            <br>
                        <img src= "admin/uploads/<?php echo $data['image'] ?> " style=" width: 250px; height: 200px">
                            <br>
                        </div>

                            <br>
                            <span></span>
                                <a class="btn btn-success" href="index.php">Back Home</a>

                            <span></span>
                            <a class="btn btn-danger" href="admin/delete.php" > Delete </a>

                            <span></span>
                            <a class="btn btn-warning" href="admin/update.php?edit_id=<?php echo $data['id']; ?>" > Edit Here </a>




                        </blockquotes>
                    </li>

                </ul>



            </section>
        </div>

    </div>




<?php include 'templete/footer.php'; ?>
