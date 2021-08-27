<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;

class Customers extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $getCustomers = Customer::all();
      return view('showroom.allCustomers')->with('allCust',$getCustomers);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('showroom.addCust');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $getNewCustomer = array(
            'Customer_Name' => $request->input('customer_name'),
            'Customer_Email' => $request->input('customer_email'),
            'Customer_Phone' => $request->input('customer_phone'),
            'Customer_Photo' => $request->input('customer_pic')
        );
//        return dd($getNewCustomer);
        $addCustomer = new Customer();
        $addCustomer->Name = $getNewCustomer['Customer_Name'];
        $addCustomer->Email = $getNewCustomer['Customer_Email'];
        $addCustomer->Phone = $getNewCustomer['Customer_Phone'];
        $addCustomer->Image = $getNewCustomer['Customer_Photo'];
//        return dd($addCustomer);
        $addCustomer->save();
        return redirect('/cust');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $cus = Customer::find($id);
      return view('showroom.custProfile')->with('pro',$cus);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $modifyCustomer = Customer::find($id);
        return view("showroom.editCust")->with('eCust',$modifyCustomer);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $getDetails = array(
            'CName' => $request->input('cname'),
            'CEmail' => $request->input('cemail'),
            'CPhone' => $request->input('cphone'),
            'CPhoto' => $request->input('cphoto')
        );
        $bringCustomerDetails = Customer::find($id);
        $bringCustomerDetails->Name = $getDetails['CName'];
        $bringCustomerDetails->Email = $getDetails['CEmail'];
        $bringCustomerDetails->Phone = $getDetails['CPhone'];
        $bringCustomerDetails->Image = $getDetails['CPhoto'];
        $bringCustomerDetails->save();
        return redirect('/cust');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $removeCust = Customer::find($id);
        $removeCust->delete();
        return redirect('/cust');
    }
}
