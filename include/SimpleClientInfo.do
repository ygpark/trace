<?php
/*
 * Example:
 *
 *      $client = new SimpleClientInfo();
 *      echo $client->getIPAddress();
 *      echo $client->getReferer();
 *      echo $client->toString();
 *
 * */
class SimpleClientInfo
{
	//return IP주소
	public function getIPAddress() {
		if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
				$ip = $_SERVER['HTTP_CLIENT_IP'];
		} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
				$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		} else {
				$ip = $_SERVER['REMOTE_ADDR'];
		}
		return $ip;
	}

	//return 유입경로
	public function getReferer() {
		$referer='';
		if(isset($_SERVER['HTTP_REFERER'])) {
			$referer = $_SERVER['HTTP_REFERER'];
		} else {
			$referer = '';
		}
		return $referer;
	}

	public function toString() {
		return "SimpleClientInfo {getIPAddress():\"".$this->getIPAddress()."\"".
			", getReferer():"."\"".$this->getReferer()."\""."}";
	}
}
?>
