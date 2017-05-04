<?
session_start();
require_once ("/home/a/arisushi/public_html/app/classes/User.php");
require_once ("/home/a/arisushi/public_html/app/classes/Main_classes.php");
require_once ("/home/a/arisushi/public_html/app/core/dbo.php");

if($_POST){ ?>

    <?
    if(!$_SESSION['user']['summ']){
        $_SESSION['user']['summ'] = 0;
    }
    if($_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']] && $_POST['action'] == "add"){
        $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['count'] += 1;
        $_SESSION['user']['summ'] += $_POST['price'];
    } else if($_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']] && $_POST['action'] == "delete"){
        $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['count'] -= 1;
        $_SESSION['user']['summ'] -= $_POST['price'];
    } else if(!$_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]) {
        $element = Element::SelectAll('content', array("id" => $_POST['elementId']), null, null);
        $free = Element::SelectAll('field_value', array("element_id" => $_POST['elementId'], "code" => "free"), null, null);

        $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']] = $_POST;
        $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['cat'] = $element[0]['cat'];
        $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['free'] = $free[0]['value'];
        $_SESSION['user']['busket'][$_POST['sizeName']][$_POST['elementId']]['count'] = 1;
        $_SESSION['user']['summ'] += $_POST['price'];
    }


    ?>
    <div id="basket_all">
        <div class="order-coast-text"><?=$_SESSION['user']['summ']?> руб.</div>
        <a href="/busket" class="order-bottom">оформить</a>
        <div style="clear:both"></div>
    </div>
<? } ?>