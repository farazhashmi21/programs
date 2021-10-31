<?php
  class phpWorld{
    public function __construct(){
      //echo("Hello World");
    }
    public function switchLocation(){
	    $rootLocation = "/home/pi/programs";
      $locations = array('home' => 'http://hashmiserver');
      //print_r($locations);
      header("Location: ".$locations['home']);
    }
    public function showDirectoryContent(){
      $projectList = dir(getcwd());
        echo "<ul>";
      while(($proj = $projectList->read())){
        echo "<li><a href='".$proj."' title = '".$proj."'>".$proj."</a></li>";
      }
        echo "</ul>";
    }
  }
$way = new phpWorld();
// $way->switchLocation();
$way->showDirectoryContent();
?>
