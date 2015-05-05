<?
require 'vendor/autoload.php';
define('DOMPDF_ENABLE_AUTOLOAD', false);
require_once 'vendor/dompdf/dompdf/dompdf_config.inc.php';

if (isset($_POST['content'])) {
	$dompdf = new DOMPDF();
	$dompdf->load_html($_POST['content']);
	

	// $dompdf->set_paper($_POST["paper"], $_POST["orientation"]); // HIER PAPIER FORMAAT
	$dompdf->render();
	$return = $dompdf->stream("dompdf_out.pdf", array("Attachment" => true));

	exit(0);
}
?>