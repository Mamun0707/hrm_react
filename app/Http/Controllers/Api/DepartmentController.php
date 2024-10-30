<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Models\Departments;
use App\Http\Controllers\Api\BaseController;

class DepartmentController extends BaseController
{
    public function index(){
        $data=Departments::get();
        return $this->sendResponse($data,"Departments data");
    }

    public function store(Request $request){
        $data=Departments::create($request->all());
        return $this->sendResponse($data,"Departments created successfully");
    }
    public function show(Departments $departments){
        return $this->sendResponse($departments,"Departments created successfully");
    }

    public function update(Request $request,$id){

        $data=Departments::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Departments updated successfully");
    }

    public function destroy(Departments $departments)
    {
        $departments=$departments->delete();
        return $this->sendResponse($departments,"Departments deleted successfully");
    }
}
