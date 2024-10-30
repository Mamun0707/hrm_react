<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Models\Payroll;
use App\Http\Controllers\Api\BaseController;

class PayrollController extends BaseController
{
    public function index(){
        $data=Payroll::with('employee')->get();
        return $this->sendResponse($data,"Payroll data");
    }

    public function store(Request $request){
        $data=Payroll::create($request->all());
        return $this->sendResponse($data,"Payroll created successfully");
    }
    public function show(Payroll $payrolls){
        return $this->sendResponse($payrolls,"Payroll created successfully");
    }

    public function update(Request $request,$id){

        $data=Payroll::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Payroll updated successfully");
    }

    public function destroy(Payroll $payrolls)
    {

        $payrolls=$payrolls->delete();
        return $this->sendResponse($payrolls,"Payroll deleted successfully");
    }
}
