<?php
session_start();

  $login = $_POST['login'];
  $haslo = $_POST['haslo'];
  require_once "connect.php";

  $polaczenie = @new mysqli($host, $db_user, $db_password, $db_name);

  if ($polaczenie->connect_errno!=0) {
      echo "Error:".$polaczenie->connect_errno;
  } else {
      $result = $polaczenie->query('SELECT * FROM admin');
      $wiersz = $result->fetch_assoc();
      if (($login==$wiersz['login'])  && ($haslo==$wiersz['password'])) {
          $_SESSION['username'] = $login;
          header('Location: admin_panel.php');
      } else {
          $_SESSION['blad'] = true;
          header('Location: logowanie.php');
      }
      $polaczenie->close();
  }

 
?>