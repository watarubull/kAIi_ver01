<?php
    session_start();
    include('./functions.php');
    check_session_id();
    $login_sta = isset($login_status) ? $login_status : "";
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kAIi</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body class="bg-black">
    <header id="page-header" class="fixed-nav">
        <div class="flex align-item-c">
            <h1 class="logo">kAIi</h1>
            <div class="box flex align-item-c">
                <?php if($_SESSION["login_status"] == 0 ): ?>
                    <div class="btn-user">
                        ゲスト
                    </div>
                    <div class="user-box">
                        <form action="./todo_login_act.php" method="POST">
                            <p><input type="text" name="username" placeholder="ユーザーネーム" /></p>
                            <p><input type="text" name="password" placeholder="パスワード" /></p>
                            <input type="submit" value="login" />
                        </form>
                    </div>
                <?php else: ?>
                    <p><a href="./mypage.php">マイページ</a></p>
                    <div class="btn-user">
                        <?php echo $_SESSION['username']; ?>
                    </div>
                    <div class="user-box">
                        <form action="./todo_logout.php" method="POST">
                            <input type="submit" value="logout" />
                        </form>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </header>