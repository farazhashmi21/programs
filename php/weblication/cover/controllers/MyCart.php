<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MyCart extends CI_Controller {

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
	public function __construct()
   {
        parent::__construct();
        // $this->load->library('cart');
        }
      public function index()
	{
          $shoppingCart = array(
          'id'      => 'sku_123ABC',
          'qty'     => 21,
          'price'   => 39.95,
          'name'    => 'T-Shirt',
          'options' => array('Size' => 'L', 'Color' => 'Red')
          ); $this->cart->insert($shoppingCart);
          //$this->load->view('cart',$data);
          print_r($this->cart->contents());
	}
      public function cartUpdate(){
        $shoppingCart = array(
          'rowid' => '0256a32c98ce49afbe2a4eb8c96c5884',
          'qty'   => 34
        );
       $this->cart->update($shoppingCart);
       //$this->load->view('cart',$data);
       echo print_r($this->cart->contents());
     }
}
