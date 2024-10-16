<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Models\Payroll;
use App\Http\Controllers\Api\BaseController;

class PayrollController extends BaseController
{
    public function index(){
        $data=Payroll::get();
        return $this->sendResponse($data,"Payroll data");
    }

    public function store(Request $request){
        $data=Payroll::create($request->all());
        return $this->sendResponse($data,"Payroll created successfully");
    }
    public function show(Payroll $payroll){
        return $this->sendResponse($payroll,"Payroll created successfully");
    }

    public function update(Request $request,$id){

        $data=Payroll::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Payroll updated successfully");
    }

    public function destroy(Payroll $payroll)
    {
        $payroll=$payroll->delete();
        return $this->sendResponse($payroll,"Payroll deleted successfully");
    }
}
