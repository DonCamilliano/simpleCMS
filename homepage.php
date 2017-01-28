<main class="container">
  <div class="row">
      <?php foreach ( $result['articles'] as $article ) {
    echo "<div class='col-xs-6 articles'><h2>".$article['title']."</h2><p>".$article['summary']."</p><p>"."<a href=.?action=viewArticle&amp;artId=".$article['id'].">Czytaj więcej...</a>"."</p></div>";
}  ?>
  <a class="btn btn-info" href="logowanie.php">Panel admina</a>
  </div>

</main>



