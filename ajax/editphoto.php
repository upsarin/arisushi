<?
session_start();
require_once ("/home/a/arisushi/public_html/app/classes/User.php");
require_once ("/home/a/arisushi/public_html/app/classes/Main_classes.php");
require_once ("/home/a/arisushi/public_html/app/core/dbo.php");

	if($_POST && $_POST['id'] != "" && $_SESSION['user']['permissions'] < 3){
		$where = array('id' => $_POST['id']);
		$table = "files";

        Element::Delete($where, $table);
		//if(Element::Delete($where, $table)){
			echo "deleted";
		//} else {
		//	echo "not";
		//}
	}

?>