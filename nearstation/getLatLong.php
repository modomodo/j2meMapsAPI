<?php
    include "dbcon.php";
	$locationid = $_GET['locationid'];
	$brandid = $_GET['brandid'];

	//create a query to select all locations
	$query = @mysql_query("SELECT * from petrostations where locationid = '$locationid' AND brandid = '$brandid'");
	$latlong = "";
	while($row = mysql_fetch_array($query)){
		$latlong = $latlong.$row['latlong']."#";
	}
	echo $latlong;
?>