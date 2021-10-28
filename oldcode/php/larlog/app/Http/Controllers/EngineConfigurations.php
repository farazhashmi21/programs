<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Engines;
use DB;
class EngineConfigurations extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//      $getAllEngines = Engines::all();
      $getAllEngines = Engines::orderBy('id','desc')->get();
      return view('showroom.engineShowCase')->with('allEngines',$getAllEngines);
//        return DB::select("SELECT id, EngineNo, ChassiNo, ManufacturingYear, created_at, updated_at FROM engines");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('showroom.all_engines');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $addEngines = new Engines();
        $addDetails = array(
            'enigne_no' => $request->input('engineno'),
            'chassi_no' => $request->input('chassino'),
            'manufacturing_year' => $request->input('manufacturingyear')
        );
        $addEngines->EngineNo = $addDetails['enigne_no'];
        $addEngines->ChassiNo = $addDetails['chassi_no'];
        $addEngines->ManufacturingYear = $addDetails['manufacturing_year'];
        $addEngines->save();
        return redirect('/engines');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $getEngine = Engines::find($id);
      return view('showroom.engineDetails')->with('engineDetails',$getEngine);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $getEngines = Engines::find($id);
        return view('showroom.editEngines')->with('eng',$getEngines);
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
        $editEngine = Engines::find($id);
        $editEngine->EngineNo = $request->input('engine_no');
        $editEngine->ChassiNo = $request->input('chassi_no');
        $editEngine->ManufacturingYear = $request->input('manufacturing_year');
        $editEngine->save();
        return redirect('/engines');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $findEngine = Engines::find($id);
        $findEngine->delete();
        return redirect("/engines");
    }
}
