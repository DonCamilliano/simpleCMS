<body class="adminPanel">
    <header class="container">
      <div class="row">
        <div class="panel panel-primary">
          <div class="panel-heading">Witaj w panelu admina.<span><a class="btn btn-info moveRight" href=admin_panel.php?action=logout class='logout'>Wyloguj</a></span></div>
            <div class="panel-body">
              <a href=admin_panel.php.?action=newArt>Nowy artykuł</a>
              <ul class="list-group">
                  <?php foreach ( $result['articles'] as $article ) { 
                    echo "<li class='list-group-item'>".$article['title']." "."<a class='moveRight' href=admin_panel.php.?action=editArticle&amp;artId=".$article['id'].">Edytuj</a>"." "."<a class='moveRight' href=admin_panel.php.?action=delete&amp;artId=".$article['id'].">Usuń artykuł</a></li>";
                  }  ?>
              </ul>
            </div>
          </div>
      </div>
    </header>
</body>