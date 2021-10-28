<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Calculator extends CI_Controller {

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
	 private $var = 2; private $num = 4;
	 public function index(){
		 $this->load->view('calcs/looks/header');
		 $this->load->view('calcs/index');
		 $this->load->view('calcs/looks/links');
		 $this->load->view('calcs/looks/footer');
	 }
        public function add(){
					$this->load->view('calcs/looks/header');
					$this->load->view('calcs/looks/links');
            $var = $this->input->post('numb1');
            $num = $this->input->post('numb2');
            $res = $var + $num;
            $data = array("numb1" => $var, "numb2" => $num, "res" => $res);
            $this->load->view("calcs/add",$data);
						$this->load->view('calcs/looks/footer');
        }
        public function subs(){
					$this->load->view('calcs/looks/header');
					$this->load->view('calcs/looks/links');
					$var = $this->input->post('numb1');
					$num = $this->input->post('numb2');
					$res = $var - $num;
					$data = array("numb1" => $var, "numb2" => $num, "res" => $res);
					$this->load->view("calcs/subs",$data);
					$this->load->view('calcs/looks/footer');
        }
        public function multi(){
					$this->load->view('calcs/looks/header');
					$this->load->view('calcs/looks/links');
					$var = $this->input->post('numb1');
					$num = $this->input->post('numb2');
					$res = $var * $num;
					$data = array("numb1" => $var, "numb2" => $num, "res" => $res);
					$this->load->view("calcs/multi",$data);
					$this->load->view('calcs/looks/footer');
        }
        public function divi(){
					$this->load->view('calcs/looks/header');
					$this->load->view('calcs/looks/links');
					$var = $this->input->post('numb1');
					$num = $this->input->post('numb2');
					$res = $var / $num;
					$data = array("numb1" => $var, "numb2" => $num, "res" => $res);
					$this->load->view("calcs/divi",$data);
					$this->load->view('calcs/looks/footer');
        }
}
