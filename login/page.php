<?php
session_start();
require_once '../user/UserLogic.php';
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>サイト説明画面</title>
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../header/header3.css">
    <link rel="stylesheet" href="../footer/footer.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../js/login.js"></script>
    <script src="../header/header.js"></script>
</head>
<!-- ====== ヘッダー ======= -->
<?php
    include("../header/header.php");
  ?>
<body>

  
  <div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>
<div class="login-info">
<h2>このサイトについて</h2>
<p class="setumei">らーめんと生きてゆく。では、皆が自由に好きなラーメンの投稿ができます。<br>
おすすめのラーメンをたくさん投稿して、情報共有に役立ててください。<br>
また、サイト内でラーメンを投稿する際には、必ず運動の目標も宣言してみてください!<br>
ラーメン欲を満たしながらも、健康やスリムな体型をみんなで一緒に維持していきましょう。
</p>
<br>
<img class="setumei-img" src="../img/junbiundou_shinkyaku.png" alt="unndou">
<img class="ramen-img2" src="../img/ramen.png" alt="ramen">

<br>
<a href=login.php>ログインへ戻る</a>   

</div>
</body>

<!-- ====== フッター ======= -->
<?php
   include("../footer/footer.php");
  ?>

    

</html>