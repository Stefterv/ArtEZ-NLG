<? 
include "dbObject.php";

function get_header(){
	include "includes/header.php";
}

function get_footer(){
	include "includes/footer.php";
}

function object(){
  return new stdClass();
}
function dump($variable){
	echo "<pre>";
	var_dump($variable);
	echo "</pre>";
}
?>