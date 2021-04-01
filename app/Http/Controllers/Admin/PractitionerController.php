<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\Admin\Practitioner;

class PractitionerController extends Controller
{
    public function index(){
        view()->share('menu', 'practitioners');
        return view('admin.practitioner.index');
    }

    public function data(Request $request){
        $model = new Practitioner();

        $filter = false;
        if($request->input('filter_status')){
            $filter = array(
                'status' => $request->input('filter_status'),
            );    
        }

        $practitioners = $model->getAll(
            $request->input('start'),
            $request->input('length'),
            $filter,
            $request->input('sort_field'),
            $request->input('sort_dir'),
        );

        $data = json_encode(array('data' => $practitioners['data'], 'recordsFiltered' => $practitioners['count'], 'recordsTotal'=> $practitioners['count']));
        return $data;
    }

    public function edit(Request $request){

        $id = (int)$request['id'];
        $model = new Practitioner();

        $profile = $model->getProfile($id);

        $data = json_encode(
            array('data' => 
                (String) view('admin.practitioner.item', array(
                    'profile'=>$profile,
                )),
                'status' => 1)
            );

        return $data;  
    }

    public function changeStatus(Request $request){
        $id = (int)$request['id'];  
        $status = $request['status'];
        
        $practitioner = Practitioner::find($id);
        if($practitioner && in_array($status,array('rejected','active','disabled','validation'))){
            $practitioner->status = $status;
            $practitioner->save();
            return json_encode(array('status' => 1));
        }else{
            return json_encode(array('status' => 0, 'message' => 'Something wrong'));
        }
    }
}