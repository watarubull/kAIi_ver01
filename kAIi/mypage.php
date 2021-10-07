<?php include './header.php';?>

    <main id="top"><div class="full-h-box">
        <div class="layout flex">
            <?php include './sidebar.php';?>
            <div class="content">
                <h2 class="heading">マイページ</h2>
                <div class="input-area">
                    <div class="box">
                        <dl class="input-list">
                            <dt>タイトル</dt>
                            <dd><input type="text" name="ep-title"></dd>
                            <dt>エピソード内容</dt>
                            <dd><textarea name="episode" name="episode"></textarea></dd>
                        </dl>
                        <button id="post-btn" class="send-btn">投稿する</button>
                    </div>
                </div>
            </div>
        </div>
    </div></main>

    <?php include './footer.php';?>
