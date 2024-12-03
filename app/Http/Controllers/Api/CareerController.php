<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Models\Career;
use App\Http\Controllers\Api\BaseController;

class CareerController extends BaseController
{
    public function index(){
        $data=Career::get();
        return $this->sendResponse($data,"Career data");
    }

    public function store(Request $request){
        $data=Career::create($request->all());
        return $this->sendResponse($data,"Career created successfully");
    }
    public function show(Career $career){
        return $this->sendResponse($career,"Career created successfully");
    }

    public function update(Request $request,$id){

        $data=Career::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Career updated successfully");
    }

    public function destroy(Career $career)
    {
        $career=$career->delete();
        return $this->sendResponse($career,"Career deleted successfully");
    }
}
