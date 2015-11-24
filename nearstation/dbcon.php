<?php
	$link = @mysql_connect("localhost","enb","enb") or die("Database connection failed ".mysql_error());
	@mysql_select_db("nearstation", $link) or die("Database selection failed ".mysql_error());

?>