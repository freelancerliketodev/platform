<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Practitioner;

class PractitionerController extends Controller
{
    public function index(){
        return view('app.practitioner.index');
    }

    public function setWorkingTime(Request $request){

        
        $request->validate([
            'from' => 'required|numeric',
            'to' => 'required|numeric|gte:from',
        ]);

        $data['from'] = $request['from'];
        $data['to'] = $request['to'];

        $model = new Practitioner();
        return $model->setWorkingTime($data);
    }
}