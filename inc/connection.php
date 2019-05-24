<?php
try {
    $pdo = new pdo("mysql:host=localhost;dbname=blog", "root", "");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}   catch (PDOException $e) {
    echo $e->getMessage();
    die();
} ?>

