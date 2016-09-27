<div class="footergradient"></div>

<?
$info = "DEBUG INFO:\n";
$info .= $_SERVER['HTTP_USER_AGENT']."\n";
$info .= $_SERVER['REQUEST_URI']."\n";
$info = rawurlencode($info);
?>
<!-- <div class="feedback"><a href="mailto:stef@steftervelde.nl?subject=NLG%20Toolkit%20Issue&body=<?=$info?>">beta</a></div> -->
<div class="feedback"><a target="_blank" href="https://docs.google.com/document/d/1lY-xdufTCZ158wfyUmQdsFG0pA3B8ZNnEyev5_BOEl4/edit?usp=sharing">feedback</a></div>
</body>
</html>
