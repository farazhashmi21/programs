<?php
  class languages_list{
    public function __construct(){}
    public function showProgrammingLanguages(){
      $list = dir(getcwd());
      ?>
      <ul>
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
          echo "<li><a href='$l'>$l</a></li>";
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
