<?
date_default_timezone_set("Europe/Amsterdam");
require(dirname(dirname(__FILE__))."/src/config.php");
$filename = dirname(__FILE__)."/".strftime("%G_%m_%d-%X",time()).".sql";
echo $filename;
$command = "/Applications/MAMP/Library/bin/mysqldump --user=".DB_USER." --password=".DB_PASS." --host=".DB_LOC." ".DB_NAME." > ".$filename;
echo $command;
exec($command);
?>