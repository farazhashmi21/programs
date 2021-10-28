<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;

class Wellcome extends BaseController
{
  public function siteDown($name){
    return view('welcome')->with('name',$name);
  }
  public function enter(){
    return view('Lare.home');
  }
  public function index(){
    return view('Lare.home');
  }
  public function about(){
    return view('Lare.about');
  }
  public function services(){
    return view('Lare.services');
  }
  public function contact(){
    return view('Lare.contact');
  }
  public function login(){
    $adminGreetings = "Hello Admin";
    return view('Lare.admin');
  }
}
