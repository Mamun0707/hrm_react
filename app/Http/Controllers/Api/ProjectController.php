<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Models\project;
use App\Http\Controllers\Api\BaseController;

class ProjectController extends BaseController
{
    public function index(){
        $data=project::get();
        return $this->sendResponse($data,"project data");
    }

    public function store(Request $request){
        $data=project::create($request->all());
        return $this->sendResponse($data,"project created successfully");
    }
    public function show(project $project){
        return $this->sendResponse($project,"project created successfully");
    }

    public function update(Request $request,$id){

        $data=project::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"project updated successfully");
    }

    public function destroy(project $project)
    {
        $project=$project->delete();
        return $this->sendResponse($project,"project deleted successfully");
    }
}
