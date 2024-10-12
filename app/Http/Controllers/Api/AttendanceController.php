<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Models\attendance;
use App\Http\Controllers\Api\BaseController;

class AttendanceController extends BaseController
{
    public function index(){
        $data=attendance::get();
        return $this->sendResponse($data,"attendance data");
    }

    public function store(Request $request){
        $data=attendance::create($request->all());
        return $this->sendResponse($data,"attendance created successfully");
    }
    public function show(attendance $attendance){
        return $this->sendResponse($attendance,"attendance created successfully");
    }

    public function update(Request $request,$id){

        $data=attendance::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"attendance updated successfully");
    }

    public function destroy(attendance $attendance)
    {
        $attendance=$attendance->delete();
        return $this->sendResponse($attendance,"attendance deleted successfully");
    }
}
