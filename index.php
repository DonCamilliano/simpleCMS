<?php
require('header.php');
require_once("connect.php");
require_once("class.php");
$action = isset( $_GET['action'] ) ? $_GET['action'] : "";

switch ($action) {
    case 'viewArticle':
       viewArticle();
       break;
    default:
       homepage();   
}

function homepage() {
   $data = Article::getList();
   $result["articles"] = $data["results"];
   require("homepage.php");
}

function viewArticle() {
    if ( !isset($_GET["artId"]) || !$_GET["artId"] ) {
    homepage();
    return;
    }

    $id = $_GET["artId"];
    $data = Article::getById($id);
    $result["articles"] = $data["results"];
    //print_r($data["results"]);
    require("article.php");
}
?>


</body>
</html>