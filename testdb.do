<?php
include 'include/Initialize.do';
include 'include/SimpleClientInfo.do';

$rows = $db->query("select * from image");
foreach($rows as $row) {
	echo $row['id'].", ".$row['referer'].", ".$row['ipaddr']."<br>";
}

$client = new SimpleClientInfo();
echo $client->toString();
	
?>
