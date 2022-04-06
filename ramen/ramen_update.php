<?php

require_once 'dbconnect.php';

$ramen =  $_POST;

$file =  $_FILES['image'];
$filename =  basename($file['name']);
$tmp_path =  $file['tmp_name'];
$file_err =  $file['error'];
$filesize =  $file['size'];
$upload_dir =  'upload/images';
$save_filename =  date('YmdHis'). $filename;
$err_msgs =  array();
$save_path =  $upload_dir . $save_filename;


if (empty($ramen['storename'])){
    array_push($err_msgs,'店舗名を入力してください');
    echo '<br>';
}

if (empty($ramen['kindoframen'])){
    array_push($err_msgs,'らーめんの系統を入力してください');
    echo '<br>';
}

if (empty($ramen['recommends'])){
    array_push($err_msgs,'おすすめ度を入力してください');
    echo '<br>';
}

if (empty($ramen['price'])){
    array_push($err_msgs,'値段を入力してください');
    echo '<br>';
}

if (empty($ramen['station'])){
    array_push($err_msgs,'最寄駅を入力してください');
    echo '<br>';
}

if (empty($ramen['impression'])){
    array_push($err_msgs,'感想を入力してください');
    echo '<br>';
}

if (mb_strlen($ramen['impression']) > 300){
    array_push($err_msgs,'感想は300文字以下にしてください');
    echo '<br>';
}

if (empty($ramen['exercise_comment'])){
    array_push($err_msgs,'運動目標を入力してください');
    echo '<br>';
}

if (mb_strlen($ramen['exercise_comment']) > 300){
    array_push($err_msgs,'運動目標は300文字以下にしてください');
    echo '<br>';
}

 

//ファイルのバリテーション
if ($filesize > 1048576){
    array_push($err_msgs, 'ファイルサイズは１MB未満にしてください');  
}

$allow_ext =  array('jpg' , 'jpeg', 'png');
$file_ext =  pathinfo($filename, PATHINFO_EXTENSION);

if(!in_array(strtolower($file_ext), $allow_ext)){
    array_push($err_msgs,'ファイルを添付してください');
}

if (count($err_msgs) === 0){


 //ファイルがあるかどうか？
 if(is_uploaded_file($tmp_path)){
     if(move_uploaded_file($tmp_path, $save_path)){
        //echo $filename . 'をアップしました';
        //echo '<br>';
        //DBに保存（ファイル名、ファイルパス）
       
     }else{
        echo 'ファイルが保存できませんでした';
     }  
 }else{
     echo 'ファイルが選択されていません';
 }
 }else{
     foreach($err_msgs as $msg){
         echo $msg;
         exit;
     }
}
//$user_id = $_SESSION['login_user']['id'];


$sql =  'UPDATE ramens SET
   storename = :storename, kindoframen = :kindoframen, recommends = :recommends, price = :price, station = :station, impression = :impression, exercise_comment = :exercise_comment, imagename = :imagename,imagepath = :imagepath
WHERE
   id = :id';

$dbh = connect();
$dbh->beginTransaction();

try{
$stmt = $dbh->prepare($sql);
$stmt->bindValue(':storename',$ramen['storename'], PDO::PARAM_STR);
$stmt->bindValue(':kindoframen',$ramen['kindoframen'], PDO::PARAM_STR);
$stmt->bindValue(':recommends',$ramen['recommends'], PDO::PARAM_STR);
$stmt->bindValue(':price',$ramen['price'], PDO::PARAM_STR);
$stmt->bindValue(':station',$ramen['station'], PDO::PARAM_STR);
$stmt->bindValue(':impression',$ramen['impression'], PDO::PARAM_STR);
$stmt->bindValue(':exercise_comment',$ramen['exercise_comment'], PDO::PARAM_STR);
$stmt->bindValue(':imagename',$filename, PDO::PARAM_STR);
$stmt->bindValue(':imagepath',$save_path, PDO::PARAM_STR);
$stmt->bindValue(':id',$ramen['id'], PDO::PARAM_INT);
$stmt->execute();
$dbh->commit();
//echo 'らーめんを編集しました';
}catch(PDOException $e){
$dbh->rollBack();
exit($e);
}

?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/signup.css">
    <link rel="stylesheet" href="../header/header2.css">
    <link rel="stylesheet" href="../footer/footer.css">
    <title>らーめん編集完了</title>
</head>
<!-- ====== ヘッダー ======= -->
<?php
    include("../header/header2.php");
  ?>
<body>

<div class="bg"></div>
<div class="bg bg2"></div>
<div class="bg bg3"></div>
<div class="ramenhensyuu">
<h2>らーめんを編集しました</h2>
<br>
    <a href="../login/mypage.php" class="annnai">マイページへ</a>
</div>
</body>
 <!-- ====== フッター ======= -->
 <?php
   include("../footer/footer.php");
  ?>
</html>