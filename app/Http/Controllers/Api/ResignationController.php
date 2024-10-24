<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Resignation;

class ResignationController extends BaseController
{
    public function index(){
        $data=Resignation::with('employee')-> get();
        return $this->sendResponse($data,"Resignation data");
    }

    public function store(Request $request){
        $data=Resignation::create($request->all());
        return $this->sendResponse($data,"Resignation created successfully");
    }
    public function show(Resignation $resignation){
        return $this->sendResponse($resignation,"Resignation created successfully");
    }

    public function update(Request $request,$id){

        $data=Resignation::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Resignation updated successfully");
    }

    public function destroy(Resignation $resignation)
    {
        $resignation=$resignation->delete();
        return $this->sendResponse($resignation,"Resignation deleted successfully");
    }
}


//note is
//-ekhane controller er nam ist word boro hater deya better ar ($) diye controller er name small letter er deya better(sob controller er somoy same way tei hbe).
//upore controller model and basecontroller ta must ck kore nite hbe.. same name and same way te ase naki.
