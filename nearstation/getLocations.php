<?php
    include "dbcon.php";
	//create a query to select all locations
	$query = @mysql_query("SELECT * from locations");
	$locations = "";
	while($row = mysql_fetch_array($query)){
		$locations = $locations.$row['locationid']."|".$row['locationname']."#";
	}
	echo $locations;
?>