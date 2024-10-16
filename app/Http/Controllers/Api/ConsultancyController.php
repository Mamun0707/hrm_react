<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Models\Consultancy;
use App\Http\Controllers\Api\BaseController;

class ConsultancyController extends BaseController
{
    public function index(){
        $data=Consultancy::get();
        return $this->sendResponse($data,"Consultancy data");
    }

    public function store(Request $request){
        $data=Consultancy::create($request->all());
        return $this->sendResponse($data,"Consultancy created successfully");
    }
    public function show(Consultancy $consultancy){
        return $this->sendResponse($consultancy,"Consultancy created successfully");
    }

    public function update(Request $request,$id){

        $data=Consultancy::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Consultancy updated successfully");
    }

    public function destroy(Consultancy $consultancy)
    {
        $consultancy=$consultancy->delete();
        return $this->sendResponse($consultancy,"Consultancy deleted successfully");
    }
}
