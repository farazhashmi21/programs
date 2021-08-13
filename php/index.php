<?php
  class phpWorld{
    public function __construct(){
      //echo("Hello World");
    }
    public function switchLocation(){
	    $rootLocation = "/home/farazhashmi/development/learnings/programs/php/";
      $locations = array('wordpress' => 'wordpressweb/index.php', 'laravel' => 'laralweb/public/index.php');
      //print_r($locations);
      header("Location: ".$locations['laravel']);
    }
  }
?>
<?php
  $way = new phpWorld();
  $way->switchLocation();
?>
