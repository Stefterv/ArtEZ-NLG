<?
echo "<pre>";
var_dump($_POST);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Site Title</title>
	<link href="style.css" type="text/css" rel="stylesheet" />
	<meta charset="UTF-8" />
</head>
<body>
	<form method="POST">
		<input type="text" name="item[0][name]">
		<input type="email" name="item[0][email]">

		<input type="text" name="item[1][name]">
		<input type="email" name="item[1][email]">

		<input type="text" name="item[2][name]">
		<input type="email" name="item[2][email]">
		<button type="submit">submit</button>
	</form>
</body>
</html>