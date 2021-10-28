<?php
// User_model;
  class User_Model extends CI_Model{
    public function construct(){
      parent::__construct();
    }
    public function getAll(){
      $sql = $this->db->get("users");
      return $sql->result_array();
    }
    public function getByID($user_id){
      $sql = $this->db->get_where("users",array("user_id" => $user_id));
      return $sql->row_array();
    }
    public function add($data){
      $filter_data = elements(array("user_name","user_email","user_contact","user_designation"),$data);
     $this->db->insert("users",$filter_data);
    }
    public function edit($data){
      $filter_data = elements(array("user_name","user_email","user_contact","user_designation"),$data);
      $this->db->update("users",$filter_data,array("user_id" => $data["user_id"]));
    }
    public function delete($user_id){
      $this->db->delete("users",array("user_id" => $user_id));
    }
}
?>
