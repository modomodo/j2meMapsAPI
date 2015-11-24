<?php
    include "dbcon.php";
	//create a query to select all brands
	$query = @mysql_query("SELECT * from brands");
	$brands = "";
	while($row = mysql_fetch_array($query)){
		$brands = $brands.$row['brandid']."|".$row['brand_name']."#";
	}
	echo $brands;
?>