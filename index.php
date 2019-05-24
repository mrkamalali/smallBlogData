 <?php include 'templete/header.php'; ?>
<div class="conrainer">
    <div class="row">

        <?php

        foreach ($posts as $post) : ?>
            <article class="col-md-6">
                <div class="thumbnail">
                    <div class="caption">
                        <h2> <a href="post.php?id=<?=  $post['id'] ; ?>"> <?php echo $post ['title']; ?></a> </h2>
                        <div class="content"><?= $post ['excerpt']; ?>
                        </div><br>
                          <img src= "admin/uploads/<?php echo $post['image'] ?> " style=" width: 250px; height: 200px">

                        <a href="post.php?id=<?=  $post['id'] ; ?>" class="btn btn-info btn-lg btn-block">Show More</a>


                    </div>
                </div>


            </article>
        <?php endforeach; ?>
    </div>

</div>
<?php include 'templete/footer.php'; ?>
