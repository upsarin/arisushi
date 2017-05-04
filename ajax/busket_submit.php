<?
	
session_start();
require_once ("/home/a/arisushi/public_html/app/classes/User.php");
require_once ("/home/a/arisushi/public_html/app/classes/Main_classes.php");
require_once ("/home/a/arisushi/public_html/app/core/dbo.php");



if($_POST){
	/* получатели */
$to = "arigato-zakaz@yandex.ru" . ", arizakazberdsk@mail.ru, xcuzmex@gmail.com" ; //обратите внимание на запятую


/* тема/subject */
$subject = "Заказ с сайта Кампай суши";

/* сообщение */
$message = '
    <html>
    <head>
         <title>Новый заказ с сайта Кампай суши</title>
    
    </head>
    <body>
';

if($_POST['nodelivery']){
    $message .= '<p>Тип доставки: Самовывоз</p>';
    $message .= '<p>Адрес самовывоза: '. $_POST['delivery-select'] .'</p>';
} else {
    $message .= '<p>Адрес: '. $_POST["street"] .' '. $_POST["house"] .' '. $_POST["office"] .'</p>';
}

    $message .= '
        <p>Имя: '. $_POST["name"] .'</p>
        <p>Телефон: '. $_POST["tel"] .'</p>
        <p>Дата доставки: '. $_POST["date"] .'</p>
        <p>Время доставки: '. $_POST["time"] .'</p>
        <p>Комментарий: '. $_POST["comment"] .'</p>
        <p>Сумма заказа: '. $_SESSION['user']['summ'] .' руб.</p>
        <table>
         <tr>
            <th style="padding-right: 20px;">Название</th>
            <th style="padding-right: 20px;">кол-во</th>
            <th>цена</th>
            <th>сумма</th>
         </tr>
 ';

    foreach($_SESSION['user']['busket']['full'] as $key => $val){
         $message .= '
             <tr style="border-bottom: 1px solid black">
                <td style="padding-right: 20px;  max-width: 360px;">'. $val['name'] .'</td>
                <td style="padding-right: 20px;">'. $val['count'] .'</td>
                <td>'. $val['price'] .'</td>
                <td>'. ($val['price']*$val['count']) .'</td>
             </tr>
         ';
    }
    foreach($_SESSION['user']['busket']['half'] as $key => $val){
        $message .= '
         <tr style="border-bottom: 1px solid black">
            <td style="padding-right: 20px;  max-width: 360px;">'. $val['name'] .'</td>
            <td style="padding-right: 20px;">'. $val['count'] .'</td>
            <td>'. $val['price'] .'</td>
            <td>'. ($val['price']*$val['count']) .'</td>
         </tr>
     ';
    }
    foreach($_SESSION['user']['busket']['adds'] as $key => $val){
        $message .= '
         <tr style="border-bottom: 1px solid black">
            <td style="padding-right: 20px;  max-width: 360px;">'. $val['name'] .'</td>
            <td style="padding-right: 20px;">'. $val['count'] .'</td>
            <td>15</td>
            <td>'. (15*$val['count']) .'</td>
         </tr>
     ';
    }
  $message .= '
        <tr style="border-bottom: 1px solid black">
            <td style="padding-right: 20px;  max-width: 360px;"></td>
            <td style="padding-right: 20px;"></td>
            <td></td>
            <td>'. $_SESSION['user']['summ'] .'</td>
         </tr>
</table>
</body>
</html>
';

/* Для отправки HTML-почты вы можете установить шапку Content-type. */
$headers= "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=utf-8\r\n";

/* дополнительные шапки */
$headers .= "From: arigato-zakaz@yandex.ru\r\n"; //поставить свою почту


/* и теперь отправим из */
mail($to, $subject, $message, $headers);    //РАСКОММЕНТИРОВАТЬ КОГДА ЗАКОНЧИШЬ ДЕБАГ

	
unset($_SESSION['user']['busket']);
unset($_SESSION['user']['summ']);
unset($_POST);
echo "Ваш заказ отправлен, мы свяжемся с вами в ближайшее время, спасибо.";
}
?>