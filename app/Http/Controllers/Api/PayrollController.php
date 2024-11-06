<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Models\Payroll;
use App\Http\Controllers\Api\BaseController;

class PayrollController extends BaseController
{
    public function index(Request $request){
        $data=Payroll::with('employee');
        if($request->salary_month){
            $data=$data->where('salary_month',$request->salary_month)
                ->where('salary_year',$request->salary_year);
        }
        $data=$data->get();

        return $this->sendResponse($data,"Payroll data");
    }

    public function store(Request $request){
        /* delete all data if insert before this date */
        Payroll::where('salary_month',$request->salary_month)
                ->where('salary_year',$request->salary_year)
                ->delete();

        $data=[];
        if($request->employee_id){
            foreach($request->employee_id as $k=>$v){
                $netsalary=0;
                $netsalary=(
                            $request->basic[$k] +
                            $request->h_rent[$k] +
                            $request->medical[$k] +
                            $request->conveyance[$k]
                            ) - (
                                $request->fine[$k] +
                                $request->provident_fund[$k]
                            );
                $data[]=array(
                    'employee_id'=>$v,
                    'basic'=>$request->basic[$k],
                    'h_rent'=>$request->h_rent[$k],
                    'medical'=>$request->medical[$k],
                    'fine'=>$request->fine[$k],
                    'conveyance'=>$request->conveyance[$k],
                    'provident_fund'=>$request->provident_fund[$k],
                    'net_pay'=>$netsalary,
                    'salary_month'=>$request->salary_month,
                    'salary_year'=>$request->salary_year,
                    'created_at'=>date('Y-m-d H:i:s'),
                    'updated_at'=>date('Y-m-d H:i:s')
                );
            }
        }

        $data=Payroll::insert($data);

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
