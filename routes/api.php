<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\EmployeeController;
use App\Http\Controllers\Api\ProjectController;
use App\Http\Controllers\Api\AttendanceController;

// use App\Http\Controllers\Api\DesignationController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::controller(AuthController::class)->group(function(){
    Route::post('register','_register');
    Route::post('login','_login');
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::controller(EmployeeController::class)->group(function(){
    Route::get('employee/index','index');
    Route::post('employee/create','store');
    Route::get('employee/{employee}','show');
    Route::post('employee/edit/{id}','update');
    Route::delete('employee/{employee}','destroy');
    // Route::post('designation/create','store');
});

Route::controller(ProjectController::class)->group(function(){
    Route::get('project/index','index');
    Route::post('project/create','store');
    Route::get('project/{project}','show');
    Route::post('project/edit/{id}','update');
    Route::delete('project/{project}','destroy');
    // Route::post('designation/create','store');
});
Route::controller(AttendanceController::class)->group(function(){
    Route::get('attendance/index','index');
    Route::post('attendance/create','store');
    Route::get('attendance/{attendance}','show');
    Route::post('attendance/edit/{id}','update');
    Route::delete('attendance/{attendance}','destroy');
    // Route::post('designation/create','store');
});

