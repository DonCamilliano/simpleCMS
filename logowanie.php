<?php 
  session_start();
?>

<!Doctype html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <title>Logowanie do CMS</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
    </head>

    <body class="loginPanel container">
       <form class="loginForm" action="zaloguj.php" method="POST">
         <h1>Panel logowania</h1>
         <p>Login: (admin)</p>
         <input type="text" name="login" class="form-control">
         <p>Hasło: (pass)</p>
         <input type="text" name="haslo" class="form-control">
         </br>
         <?php
           if (isset($_SESSION['blad'])) {
               echo "<p style='color: red'>Błędny login lub hasło.</p>";
               unset($_SESSION['blad']);
           }
         ?>
         <input type="submit" value="Zaloguj się" class="btn btn-lg btn-primary btn-block">
         <a href="index.php">Wróć do strony głównej</a>
       </form> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>