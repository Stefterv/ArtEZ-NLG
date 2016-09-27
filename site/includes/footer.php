<div class="footergradient"></div>

<?
$info = "DEBUG INFO:\n";
$info .= $_SERVER['HTTP_USER_AGENT']."\n";
$info .= $_SERVER['REQUEST_URI']."\n";
$info = rawurlencode($info);
?>
<div class="feedback"><a href="mailto:stef@steftervelde.nl?subject=NLG%20Toolkit%20Issue&body=<?=$info?>">beta</a></div>
</body>
</html>
