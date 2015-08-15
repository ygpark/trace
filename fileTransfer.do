<?php
include 'include/Initialize.do';
include 'include/SimpleClientInfo.do';

//Initialize
$client = new SimpleClientInfo();

//Query
$query = $db->prepare("INSERT INTO `image` (`referer`, `ipaddr`) VALUES (:referer, :ipaddr)");
$query->bindParam(':referer', $client->getReferer());
$query->bindParam(':ipaddr', $client->getIPAddress());
$query->execute();

$file = 'monkey.gif';

if (!file_exists($file)) {
	exit;
}

header('Content-Description: File Transfer');
header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename='.basename($file));
header('Expires: 0');
header('Cache-Control: must-revalidate');
header('Pragma: public');
header('Content-Length: ' . filesize($file));
readfile($file);

?>
