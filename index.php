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
			<li>Java</li>
			<li>Perl</li>
			<li><a href="http://hashmiprobook/php/index.php" title="PHP Scripting">PHP</a></li>
			<li>Ruby</li>
			<li>CPP</li>
			<li>Dotnet</li>
			<li>Shell</li>
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
