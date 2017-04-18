<?
session_start();

require_once ("/home/a/arisushi/public_html/app/core/dbo.php");
require_once ("/home/a/arisushi/public_html/app/classes/Main_classes.php");

if($_POST['name'] != "" && $_POST['text'] != ""){
    $post['form']['iblock_name'] = 'content';
    $post['form']['main'] = array(
        "name" => $_POST['name'],
        "cat" => "6",
        "title" => $_POST['name'],
        "user" => "0",
        "active_from" => date("Y-m-d H:i:s"),
        "alias" => md5($_POST['name'] . "comment" . date("Y-m-d H:i:s")),
        "desc" => $_POST['text'],
        "page_id" => "103",
        "active" => "N",
        "fields" => "N",
        "parent_temp" => "default",
        "child_temp" => "default",
        "temp_folder" => "default"
    );
    Element::SaveElementsWithImages(array($post['form']));
}

?>