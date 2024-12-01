<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Models\Employee;
use App\Http\Controllers\Api\BaseController;

class EmployeeController extends BaseController
{
    public function index(){

        $data=Employee::with('department','attendance')->get();
        return $this->sendResponse($data,"Employee data");
    }

    public function store(Request $request){
        $input=$request->all();
        unset($input['is_trusted'],$input['is_trusted']);
        $data=Employee::create($input);
        return $this->sendResponse($data,"Employee created successfully");
    }
    public function show(Employee $employee){
        return $this->sendResponse($employee,"Employee created successfully");
    }

    public function update(Request $request,$id){

        $data=Employee::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Employee updated successfully");
    }

    public function destroy(Employee $employee)
    {
        $employee=$employee->delete();
        return $this->sendResponse($employee,"Employee deleted successfully");
    }
}
