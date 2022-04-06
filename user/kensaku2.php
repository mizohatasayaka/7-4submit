<?php
require_once 'dbconnect.php';
$kensaku = $_POST;	

$recommends = 'recommends';


function getselectramen()
{
    $result = false; 


try{
    $db= connect();
$stt = $db->prepare('SELECT * FROM ramens WHERE recommends = :recommends');
$stt->bindParam(':recommends', $recommends);
$stt->execute();
return $result;
}catch(PDOException $e){
die('エラーメッセージ:'.$e->getMessage());
}
}



?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>検索結果一覧</title>
</head>
<body>

<?php foreach($result as $ramen): ?>
    <img src="../<?php echo "{$ramen['imagepath']}"; ?>" alt="" class="friendsramen-img">
    <br>
   <td class="store_recommends"><?php echo "{$ramen['storename']}"; ?></td>
   <br>
   <td ><?php echo "{$ramen['recommends']}"; ?></td>
   <br>
   <?php endforeach; ?>
    
</body>
</html>



