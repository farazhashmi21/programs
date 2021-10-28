<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ListModel;
use DB;
use Illuminate\Support\Facades\Redirect;
class ListsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function checkStatus()
    {
        $statusMessage = "<div class='alert alert-success'>
  <strong>Success!</strong> It's Working PERFECTLY!.
</div>";
        return $statusMessage;
    }
    public function index()
    {
      $lM = ListModel::all();
//      return $lM;
      return view('showroom.all_models')->with('listModel',$lM);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('showroom.add_models');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $getData = array(
            'Car Make' => $request->input('Make'),
            'Car Model' => $request->input('Model'),
            'Car Year' => $request->input('Year'),
            'Car Details' => $request->input('Description'),
            'Car Picture' => $request->input('Image'));
        $model = new ListModel();
        $model->Make = $getData['Car Make'];
        $model->Model = $getData['Car Model'];
        $model->Year = $getData['Car Year'];
        $model->Description = $getData['Car Details'];
        $model->Image = $getData['Car Picture'];
        $model->save();
        return redirect('/lists');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $getModel = ListModel::find($id);
//      return $getModel;
      return view('showroom.showModel')->with('allModels',$getModel);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $getModel = ListModel::find($id);
        return view('showroom.editModel')->with('eM',$getModel);
//        return "<h1 class='alert alert-success'>Working</h1>";
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
        $getEditModel = ListModel::find($id);
        $getEditModel->Make = $request->input('make');
        $getEditModel->Model = $request->input('model');
        $getEditModel->Description = $request->input('description');
        $getEditModel->Year = $request->input('year');
        $getEditModel->Image = $request->input('image');
        $getEditModel->save();
        return redirect('/lists');
//        return ListsController::checkStatus();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $getDeletingModel = ListModel::find($id);
        $getDeletingModel->delete();
        return redirect('/lists');
    }
}
