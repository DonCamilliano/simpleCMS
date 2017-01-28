<?php
session_start();
if (!isset($_SESSION['username']) === TRUE) {
   header('Location: logowanie.php');
};
require_once("admin_header.php");
require_once("connect.php");
require_once("class.php");
$action = isset( $_GET['action'] ) ? $_GET['action'] : "";

switch ($action) {
    case 'editArticle':
       editArticle();
       break;
    case 'update':
       update();
       break;
    case 'addArticle':
       addArt();
       break;
    case 'newArt':
       newArt();
       break;             
    case 'delete':
       deleteArt();
       break;
    case 'logout':
       logout();
       break;   
    default:
       admin();   
}

  function admin() {
   $data = Article::getList();
   $result["articles"] = $data["results"];
   require("adminArticles.php");
}
 
  function editArticle() {
    if ( !isset($_GET["artId"]) || !$_GET["artId"] ) {
    admin();
    return;
    }

    $id = $_GET["artId"];
    $data = Article::getById($id);
    $result["articles"] = $data["results"];
    require("editArticle.php");
}

  function update() {
    $id = $_GET["artId"];
    $title = $_POST['editor1'];
    $summary = $_POST['editor2'];
    $content = $_POST['editor3'];
    $data = Article::update($id, $title, $summary, $content);
  }
  
  function newArt() {
    require("newArticle.php");
  }

  function addArt() {
    $title = $_POST['editor1']; 
    $summary = $_POST['editor2'];
    $content = $_POST['editor3'];
    $data = Article::insert($title, $summary, $content);
  }

  function deleteArt() {
    $id = $_GET["artId"];
    $data = Article::delete($id);
  }

  function logout() {
    unset( $_SESSION['username'] );
    header( "Location: logowanie.php" );
  }
?>

