<?php
  //User Controller
  class User extends CI_Controller{
    public function construct(){
      parent::__construct();
    }
    public function index(){
      $user_data = $this->User_model->getAll();
      $data = array("user_data" => $user_data);
      $this->load->view("user/index",$data);
    }
    public function add(){
      if(isset($_POST["submit"])){
        $this->User_model->add($_POST);
        redirect("user/index");
      }
      else{
        $this->load->view("user/add");
      }
    }
    public function edit($user_id){
      if(isset($_POST["submit"])){
        $this->User_model->edit($_POST);
        redirect("user/index");
      }
      else{
        $getUserById = $this->User_model->getByID($user_id);
        $data = array("user_name" => $getUserById["user_name"],"user_email" => $getUserById["user_email"], "user_designation" => $getUserById["user_designation"],"user_id" => $getUserById["user_id"]);
        $this->load->view("user/edit");
      }
    }
    public function delete($user_id){
      if(!empty($user_id)){
        $this->User_model->delete($user_id);
        redirect("user/index");
      }
    }
  }
?>
