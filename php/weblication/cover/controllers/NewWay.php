<?php
class NewWay extends CI_Controller{
    public function index() {
        echo "<h1>Hello World</h1>";
        $this->OneoOne();
    }
    public function OneoOne() {
        $this->load->view('tempFile');
        $this->load->model('Test_model');
        $this->load->library('NewLab');
        echo "<p>One-o-One function executed.</p>";
        $this->Test_model->testCheck();
        $this->newlab->testLab();
        $this->load->helper('myfirsthelp');
        testHelp();
    }
}
