<?php
  // PHP Index.php File.

class index{
	public function __construct(){
		echo "<p>Project List:</p>";
	}
	public function displ(){
		phpinfo();
	}
	public function directions(){?>
		<ol>
			<li>CPP</li>
			<li>Perl</li>
			<li>PHP</li>
			<li>Python</li>
		</ol>
	<?php }
}
?>
<?php
  $i = new index();
  //$i->displ();
  $i -> directions();
?>
