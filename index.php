<html lang="en-GB">
  <head>
    <meta charset = "UTF-8"/>
    <meta name="viewport" content = "width:device-width" initial-scale="1.0"/>
    <link rel="stylesheet" type="text/css" href=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
  <!--
  <script src=""></script>
  -->
  </head>
  <body>
    <div class="main container">
      <div class="header">
        <h1 class="text-center">Hashmi Server</h1>
        <p class="text-center">Assalam-O-Alaikum</p>
      </div>
      <div class="row">
        <div class="col">
          <article>
            <p>These are the list of projects in different programming languages.</p>
          </article>
<?php
  class languages_list{
    public function __construct(){}
    public function showProgrammingLanguages(){
      $list = dir(getcwd());
      ?>
      <ul class="list-group">
        <?php
      while($l = $list->read()){
        if($l === "."){
          continue;
        }
        else if($l === ".."){
          continue;
        }
        else if($l === ".git"){
          continue;
          }
          else if($l === "index.php"){
            continue;
            }
            else if($l === "programs.sh"){
              continue;
              }
              else if($l === "README.md"){ 
                continue;
                }
        else{
          echo "<li class='list-group-item'><a class='stretched-link' href='$l' target='_blank'>$l</a></li>";
        }
      }
        ?>
        </ul>
<?php      }
      }
?>
<?php
  $Ll = new languages_list();
  $Ll->showProgrammingLanguages();
?>
        </div>
      </div>
</div>
<footer>
  <p class="text-center">Copyright - &#169; - <script>document.write(new Date().getFullYear());</script> | <a class="link" href="https://hashmiwebsol.com/" title="Hashmi Web Sol">Hashmi Web Sol</a></p>
</footer>
</body>
</html>
