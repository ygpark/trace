<html>
<?php

$cleardata=""; //값을 지움
$cleardata=array(); // 배열을 만듬 
function filter($nameasdferwer){
	$nameasdferwer=htmlspecialchars($nameasdferwer); //html엔티티문자변환
	$nameasdferwer=strip_tags($nameasdferwer); //모든 html태그제거
	$nameasdferwer=mysql_real_escape_string($nameasdferwer);
}
filter($_POST[id]); //아이디를 필터링
filter($_POST[pw]); //비밀번호를 필터링

for($i=0; $i<count($_GET); $i++) {
	$_GET[$i] = filter($_GET[$i]);
}

echo "<H1>GET 변수</H1>";
foreach($_GET as $key => $value) {
	echo "$key = $value";
	echo '<br/>';

}
echo '<br/><br/>';
echo '<hr>';
		

echo "<H1>POST 변수</H1>";
foreach($_POST as $key => $value) {
	echo "$key = $value";
	echo '<br/>';
}
echo '<br/><br/>';
echo '<hr>';

?>

<form action="get.do" method='get'>
	<p>
	Key1 <input type='text' name='Key1' value='value1'/>
	Key2 <input type='text' name='Key2' value='value2'/>
	<input type='submit' value='GET'/>
	</p>
</form>

<form action="get.do" method='post'>
	<p>
	Key1 <input type='text' name='key1' value='value1'/>
	Key2 <input type='text' name='key2' value='value2'/>
	<input type='submit' value='POST'/>
	</p>
</form>
</html>

