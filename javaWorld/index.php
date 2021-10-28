<?php
class javaWorld{
  public function __construct(){
    echo "<h1>Wellcome To Java World.</h1>";
    echo "<p>Here Are the Projects:</p>";
  }
  public function displ(){
  $dirs = dir(getcwd());
  echo "<ul>";
  while(($f = $dirs->read())){
    echo "<li><a href='".$f."'>".$f."</a></li>";
  }
  echo "</ul>";
  }
}
$jw = new javaWorld();
$jw->displ();
?>
