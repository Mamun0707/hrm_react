<?php

namespace App\Http\Controllers\Api;


use Illuminate\Http\Request;
use App\Models\attendance;
use App\Http\Controllers\Api\BaseController;

class AttendanceController extends BaseController
{
    public function index(Request $request){
        $data=attendance::with('employee');
        if($request->attendance_date){
            $data=$data->where('attendance_date',$request->attendance_date);
        }
        $data=$data->get();
        return $this->sendResponse($data,"attendance data");
    }

    public function store(Request $request){
        /* delete all data if insert before this date */
        attendance::where('attendance_date',$request->attendance_date)->delete();

        $data=[];
        if($request->employee_id){
            foreach($request->employee_id as $k=>$v){
                $data[]=array(
                    'employee_id'=>$v,
                    'attendance_date'=>$request->attendance_date,
                    'check_in'=>$request->check_in[$k],
                    'check_out'=>$request->check_out[$k],
                    'status'=>$request->status[$k],
                    'created_at'=>date('Y-m-d H:i:s'),
                    'updated_at'=>date('Y-m-d H:i:s')
                );
            }
        }

        $data=attendance::insert($data);
        return $this->sendResponse($data,"attendance created successfully");
    }
    public function show(Request $request){
        $data=attendance::with('employee')->get();
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
