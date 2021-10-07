<?php

session_start();
include('functions.php');

$username = $_POST['username'];
$password = $_POST['password'];

$pdo = connect_to_db();

// username，password，is_deletedの3項目全てを満たすデータを抽出する．
$sql = 'SELECT * FROM users_table WHERE username=:username AND password=:password AND is_deleted=0';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':username', $username, PDO::PARAM_STR);
$stmt->bindValue(':password', $password, PDO::PARAM_STR);
$status = $stmt->execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
  } else {
    $val = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$val) {
      echo "<p>ログイン情報に誤りがあります</p>";
      echo "<a href='index.php'>トップへ戻る</a>";
      exit();
    } else {
      $_SESSION = array();
      $_SESSION['session_id'] = session_id();
      $_SESSION['id'] = $val['id'];
      $_SESSION['username'] = $val['username'];
      header("Location:index.php");
      exit();
    }
  }

?>