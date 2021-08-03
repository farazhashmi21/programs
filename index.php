<?php
  // PHP Index.php File.

class index{
	public function __construct(){
		echo "<p>Project List:</p>";
	}
	public function displ(){
		phpinfo();
	}
}
?>
<?php
  $i = new index(); $i->displ();
?>
