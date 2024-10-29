<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Holidays;

class HolidaysController extends BaseController
{
    public function index(){
        $data=Holidays::with('employee')->get();
        return $this->sendResponse($data,"Holidays data");
    }

    public function store(Request $request){
        $data=Holidays::create($request->all());
        return $this->sendResponse($data,"Holidays created successfully");
    }
    public function show(Holidays $holidays){
        return $this->sendResponse($holidays,"Holidays created successfully");
    }

    public function update(Request $request,$id){

        $data=Holidays::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Holidays updated successfully");
    }

    public function destroy(Holidays $holidays)
    {
        $holidays=$holidays->delete();
        return $this->sendResponse($holidays,"Holidays deleted successfully");
    }
}
