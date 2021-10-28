<?php
  class phpWorld{
    public function __construct(){
      //echo("Hello World");
    }
    public function switchLocation(){
	    $rootLocation = "/home/farazhashmi/development/learnings/programs/php/";
      $locations = array(
      'wordpress' => 'wordpressweb/index.php',
      'laravel' => 'laralweb/public/index.php',
      "sym" => "http://hashmiprobook/php/projectSymfony/public/"
      );
      //print_r($locations);
      header("Location: ".$locations['sym']);
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
