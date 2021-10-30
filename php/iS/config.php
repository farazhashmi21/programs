<?php  // Moodle configuration file

unset($CFG);
global $CFG;
$CFG = new stdClass();

$CFG->dbtype    = 'mysqli';
$CFG->dblibrary = 'native';
$CFG->dbhost    = 'localhost';
$CFG->dbname    = 'internationalschool';
$CFG->dbuser    = 'developerfarazhashmi';
$CFG->dbpass    = 'Ct56*#lA';
$CFG->prefix    = 'mdl_';
$CFG->dboptions = array (
  'dbpersist' => 0,
  'dbport' => '',
  'dbsocket' => '',
  'dbcollation' => 'utf8mb4_0900_ai_ci',
);

//$CFG->wwwroot   = 'http://school';
$CFG->wwwroot   = 'http://hashmiserver/programs/php/iS/';
//$CFG->dataroot  = '/farazData/wares/warehouse/learnings/moodledata';
//$CFG->dataroot  = '/farazData/development/learnings/iS/siteDetails/moodledata';
//$CFG->dataroot  = '/farazData/development/learnings/iS/siteDetails/moodledata';
//$CFG->dataroot  = '/home/farazhashmi/development/learnings/programs/php/moodledata';
$CFG->dataroot  = '/home/pi/hashmiServer/programs/php/moodledata';
$CFG->admin     = 'admin';

$CFG->directorypermissions = 0777;

require_once(__DIR__ . '/lib/setup.php');

// There is no php closing tag in this file,
// it is intentional because it prevents trailing whitespace problems!
