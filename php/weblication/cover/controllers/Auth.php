<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
        public function __construct(){
          parent::__construct();
        }
	public function index()
	{
	  $this->load->view('login');
	}
  public function create_session(){
          $user_data = array('user_id' => 101, 'user_email' => 'cvf21@gmail.com', 'user_name' => 'prankster101');
          $this->session->user_data = $user_data;
          echo "<p>Session has been created successfully</p>";
          echo "<p>".$this->session->user_data['user_name']."</p>";
        }
        public function session_dump(){
            $getSession = $this->session->user_data;
            print_r($getSession);
        }
        public function check_login(){
          if(isset($_POST['uname'])){
            $this->load->model('Auth_model');
            $user_name = $_POST['uname'];
            $password = $_POST['psw'];
            $user = $this->Auth_model->check_login($user_name, $password);
            if(!empty($user)){
              $data = array($this->session->loggedInuser = $user);
              $this->load->view('profile',$data);
            }
            else{
              $this->session->set_flashdata('msg','OOPS! Invalid User...');
              redirect('login');
           }
          }
          else{
            redirect('hello');
          }
        }
      public function profile(){
        if(empty($this->session->loggedInuser['user_id'])){
          $this->session->set_flashdata('msg',"Login First");
          redirect('login');
        } else{
            $this->load->view('profile');
        }
      }
}
