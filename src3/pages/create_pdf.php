<?
require 'vendor/autoload.php';
define('DOMPDF_ENABLE_AUTOLOAD', false);
require_once 'vendor/dompdf/dompdf/dompdf_config.inc.php';

$dompdf = new DOMPDF();
$dompdf->load_html(file_get_contents("../index.html"));


// $dompdf->set_paper($_POST["paper"], $_POST["orientation"]); // HIER PAPIER FORMAAT
$dompdf->render();
$return = $dompdf->stream("dompdf_out.pdf", array("Attachment" => true));

exit(0);
?>