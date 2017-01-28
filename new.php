<?php

$tytul = $_POST['editor1'];
$opis = $_POST['editor2'];
$tresc = $_POST['editor3'];
require('connect.php');

$polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);

if ($polaczenie->connect_errno!=0) {
    echo "Error:".$polaczenie->connect_errno;
} else {
    mysqli_query($polaczenie,"TRUNCATE TABLE articles");
    $sql = "INSERT INTO articles (title, summary, content) VALUES ('$tytul','$opis','$tresc')";
    if ($polaczenie->query($sql) === TRUE) {
        header('Location: admin_panel.php');
    } else {
        echo "Error: " . $sql . "<br>" . $polaczenie->error;
    }
    $polaczenie->close();
}

?>