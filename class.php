<?php
class Article {
    public $id;
    public $publicationDate;
    public $title;
    public $summary;
    public $content;
    
    public function _constuct () {//tworzy obiekt ze zmiennymi
        $this->_id = $id;
        $this->_publicationDate = $publicationDate;
        $this->_title = $title;
        $this->_summary = $summary;
        $this->_content = $content;
    }
    
    public function storeFormValues($params) {//zapisanie zmiennych ale w innym formacie, łatwiejszym do edycji. Głównie chodzi o datę.
        $this->_construct($params);
    }
    
    public function getById($id) {
        require("connect.php");
        $conn = new mysqli($host, $db_user, $db_password, $db_name);
        if ($conn->connect_errno!=0) {//connect_errno sprawdza numer błędu, jeżeli !=0 to go wyświetla
            echo "Error: ".$conn->connect_errno;
        } else {
            $rezultat = $conn->query("SELECT * FROM articles WHERE id = $id");
            $wiersz = $rezultat->fetch_assoc();
            //echo $wiersz['title'];
            $conn->close();
            return (array ('results' => $wiersz));
        }
    }
    
    public function getList() {
        require("connect.php");
        $conn = new mysqli($host, $db_user, $db_password, $db_name);
        if ($conn->connect_errno!=0) {//connect_errno sprawdza numer błędu, jeżeli !=0 to go wyświetla
            echo "Error: ".$conn->connect_errno;
        } else {
            $rezultat = $conn->query("SELECT * FROM articles");
            while ($wiersz = $rezultat->fetch_array(MYSQLI_ASSOC)) {
            //echo "<p>".$wiersz['id']." ".$wiersz['title']." ".$wiersz['summary']." ".$wiersz['content']."</p>";
            $list[] = $wiersz;
            //print_r($list);
            }
            $conn->close();  
            return (array ('results' => $list));
        }
    }
   
    public function insert($title, $summary, $content) {
       require("connect.php");
        $conn = new mysqli($host, $db_user, $db_password, $db_name);
        if ($conn->connect_errno!=0) {//connect_errno sprawdza numer błędu, jeżeli !=0 to go wyświetla
            echo "Error: ".$conn->connect_errno;
        } else {
            $res = $conn->query("SELECT * FROM articles");
            $rownr = $res->num_rows;
            $id = $rownr + 1;
            $sql = "INSERT INTO articles (id, title, summary, content) VALUES ($id, '$title', '$summary', '$content')";
            if ($conn->query($sql) === TRUE) {
            $rezultat = $conn->query($sql);
            $conn->close();
            header('Location: admin_panel.php');
            return $rezultat;
            } else {
                echo "Error updating record: " . $conn->error;
            }
        }
    }

    public function update($id, $title, $summary, $content) {
       require("connect.php");
       $conn = new mysqli($host, $db_user, $db_password, $db_name);
       if ($conn->connect_errno!=0) {//connect_errno sprawdza numer błędu, jeżeli !=0 to go wyświetla
            echo "Error: ".$conn->connect_errno;
        } else {
            $sql = "UPDATE articles SET title = '$title', summary = '$summary', content = '$content' WHERE id = $id";
            if ($conn->query($sql) === TRUE) {
            $rezultat = $conn->query($sql);
            $conn->close();
            header('Location: admin_panel.php');
            return $rezultat;
            } else {
                echo "Error updating record: " . $conn->error;
            }
        }
    }

    public function delete($id) {
       require("connect.php");
       $conn = new mysqli($host, $db_user, $db_password, $db_name);
       if ($conn->connect_errno!=0) {//connect_errno sprawdza numer błędu, jeżeli !=0 to go wyświetla
            echo "Error: ".$conn->connect_errno;
        } else {
          $rezultat = $conn->query("DELETE FROM articles WHERE id = $id");
          $conn->close();
          header('Location: admin_panel.php');
        }
    }

}
    
    ?>