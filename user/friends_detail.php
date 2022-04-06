<?php
if(!isset($_SESSION)){
    session_start();
}

require_once 'UserLogic.php';
require_once 'functions.php';
require_once '../dbconnect.php';

$id =  $_GET['id'];

$dbh = connect();

//SQLの準備
$stmt =  $dbh->prepare('SELECT * FROM users Where id = :id');
$stmt->bindValue(':id', (int)$id, PDO::PARAM_INT);

//SQLの実行
$stmt->execute();

//結果を取得
$result =  $stmt->fetch(PDO::FETCH_ASSOC);

if(!$result){
    exit('投稿者のページが見れません');
}




//ログインしているかを判定し、していなかったら新規登録画面へ返す
//$result = UserLogic::checkLogin();

//if (!$result){
   //$_SESSION['login_err'] =  'ユーザーを登録してログインしてください';
  // return;
//}
//$login_user =  $_SESSION['login_user'];

//$my_ramens = getMyRamen($_SESSION['login_user']['id']);
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>他ユーザーのプロフィール</title>
    <link rel="stylesheet" href="../css/mypage.css">
    <link rel="stylesheet" href="../header/header2.css">
    <link rel="stylesheet" href="../footer/footer.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../js/mypage.js"></script>
</head>
 <!-- ====== ヘッダー ======= -->
 <?php
    include("../header/header2.php");
  ?>
<body>
 
<section>
<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>
  <div class="infomation">
   <h2>プロフィール情報</h2>
   <p>ユーザー名:<?php echo ($result['name']) ?></p>
   <p>好きならーめん:<?php echo ($result['favorite_ramen']) ?></p>
   <p>運動目標:<?php echo ($result['exercise_goal']) ?></p>

   

   </div>
  
   </section>

   <br>



   
 
</body>
   <!-- ====== フッター ======= -->
 <?php
   include("../footer/footer.php");
  ?>
</html>