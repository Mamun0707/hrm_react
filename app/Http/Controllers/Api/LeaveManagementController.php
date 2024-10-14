<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\LeaveManagement;

class LeaveManagementController extends BaseController
{
    public function index(){
        $data=LeaveManagement::get();
        return $this->sendResponse($data,"LeaveManagement data");
    }

    public function store(Request $request){
        $data=LeaveManagement::create($request->all());
        return $this->sendResponse($data,"LeaveManagement created successfully");
    }
    public function show(LeaveManagement $leavemanagement){
        return $this->sendResponse($leavemanagement,"LeaveManagement created successfully");
    }

    public function update(Request $request,$id){

        $data=LeaveManagement::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"LeaveManagement updated successfully");
    }

    public function destroy(LeaveManagement $leavemanagement)
    {
        $leavemanagement=$leavemanagement->delete();
        return $this->sendResponse($leavemanagement,"LeaveManagement deleted successfully");
    }
}
