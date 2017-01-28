<body class="newArt">
    <section class="container">
      <div class="row">
        <div class="col-xs-12">
          <h1>Edycja artykułu</h1>
        <h2>Tytuł:</h2>
        <form action="admin_panel.php?action=update&amp;artId=<?php echo $result['articles']['id'] ?>" method="POST">
            <textarea name="editor1" id="editor1" rows="10" cols="80">
              <?php echo $result['articles']['title']?>
            </textarea>
            <script>
              // Replace the <textarea id="editor1"> with a CKEditor
              // instance, using default configuration.
              CKEDITOR.replace('editor1');
            </script>
          
        <h2>Opis:</h2>
          
            <textarea name="editor2" id="editor2" rows="10" cols="80">
              <?php echo $result['articles']['summary'] ?>
            </textarea>
            <script>
              // Replace the <textarea id="editor1"> with a CKEditor
              // instance, using default configuration.
              CKEDITOR.replace('editor2');
            </script>
          
          <h2>Treść:</h2>
            <textarea name="editor3" id="editor3" rows="10" cols="80">
              <?php echo $result['articles']['content'] ?>
            </textarea>
            <script>
              // Replace the <textarea id="editor1"> with a CKEditor
              // instance, using default configuration.
              CKEDITOR.replace('editor3');
            </script>
            <input class="btn btn-primary btn-lg" type="submit" value="Zatwierdź">
            <a href='admin_panel.php' class="btn btn-danger btn-lg">Wróć</a>
          </form>
        </div>
      </div>
    </section>
</body>