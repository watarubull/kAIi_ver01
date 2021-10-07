<?php 
  function connect_to_db(){
    $dbn='mysql:dbname=gsacs_d03_01;charset=utf8;port=3306;host=localhost';
    $user = 'root';
    $pwd = '';
    try {
      return new PDO($dbn, $user, $pwd);
    } catch (PDOException $e) {
      exit('dbError:'.$e->getMessage());
    }
  }

  function check_session_id(){
    if (!isset($_SESSION["session_id"]) ||$_SESSION["session_id"] != session_id()) {
      $login_status = 0;
      $_SESSION["login_status"] = $login_status;
      $uri = rtrim($_SERVER["REQUEST_URI"], '/');
      $uri = substr($uri, strrpos($uri, '/') + 1);
      if($uri != "index.php"){
        header('Location:index.php');
      }
    } else {
      $login_status = 1;
      session_regenerate_id(true);
      $_SESSION["session_id"] = session_id();
      $_SESSION["login_status"] = $login_status;
    }
  }
?>