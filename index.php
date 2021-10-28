<?php
  // PHP Index.php File.

class index{
	public function __construct(){
		echo "<p>Project List:</p>";
	}
	public function displ(){
		phpinfo();
	}
	public function directions(){
	  $serverRoute = "http://hashmiprobook:80/";
	?>
		<ol>
			<li><a href="<?php echo $serverRoute; ?>javaWorld/index.php" >Java</a></li>
			<li>Perl</li>
			<li><a href="<?php echo $serverRoute; ?>php/index.php" title="PHP Scripting">PHP</a></li>
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
  $i->displ();
//  $i -> directions();
?>
