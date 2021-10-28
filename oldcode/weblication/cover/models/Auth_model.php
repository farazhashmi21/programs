<?php
// Auth_model;
  class Auth_model extends CI_Model{
    public function construct(){
      parent::__construct();
    }
    public function check_login($user_name, $password){
      $sql = $this->db->get_where("users",array("user_name" => $user_name, "password" => $password));
      return $sql->row_array();
    }
}
?>
