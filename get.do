<html>
<?php

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

