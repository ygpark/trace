<style>
input[type="text"] {
	width:300px;
}
input[type="submit"] {
	width:350px;
}
</style>
<form>
<p>Value <input type='text' name='value' value='<?=$_GET['value']?>'></p>
<p>SHA1  <input type='text' name='sha1' value='<?=sha1($_GET['value'])?>'></p>
<p><input type='submit' name='Ok' value='Ok'></p>
</form>


