<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Practice;

class ContentController extends Controller
{
    public function indexPractices(){
        return view('admin.content.practices_index');
    }

    public function dataPractices(Request $request){
        $model = new Practice();

        $filter = false;

        $items = $model->getAll(
            $request->input('start'),
            $request->input('length'),
            $filter,
            $request->input('sort_field'),
            $request->input('sort_dir'),
        );

        $data = json_encode(array('data' => $items['data'], 'recordsFiltered' => $items['count'], 'recordsTotal'=> $items['count']));
        return $data;
    }

    public function publishPractices(Request $request){

        $id = $request['pubItemId'];

        $item = Practice::find($id);
        if($item->published == 0){
            $item->published = 1;    
        }else{
            $item->published = 0;    
        }
        $item->save();
        $data = json_encode(array('status' => 1, 'id' => $id, 'published' => $item->published));
     
        return $data;
    }

    public function getPractices(Request $request){
        
        $id = (int)$request['id'];
        $item = Practice::find($id);

        $data = json_encode(
            array('data' => 
                (String) view('admin.content.practices_item', array(
                    'item'=>$item,
                )),
                'status' => 1)
            );

        return $data; 
    }
}