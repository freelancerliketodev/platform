<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Practice;
use App\Models\Admin\Speciality;

class ContentController extends Controller
{
    //Practices
    public function indexPractices(){
        view()->share('menu', 'practices');
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
        if($id){
            $item = Practice::find($id);
            $mode = "Edit";
        }else{
            $item = new Practice();
            $item->id = 0;
            $mode= "add";  
        }
        $data = json_encode(
            array('data' => 
                (String) view('admin.content.practices_item', array(
                    'item'=>$item,
                    'mode' => $mode
                )),
                'status' => 1)
            );

        return $data; 
    }

    public function savePractices(Request $request){
        $id = (int)$request['id'];

        if(!$id){
            $item = new Practice();
            $item->save();
        }else{
            $item = Practice::find($id);
        }

        $item->title = $request['title'];
        $item->published = (int)$request['published'];
        $item->save();
        return json_encode(array('status' => 1));
    }

    public function removePractices(Request $request){
        $ids = $request['ids'];
        foreach ($ids as $id) {
            $item = Practice::find($id);
            if($item){
                $item->delete();
            }else{
                return json_encode(array('status' => 0, 'message' => "Can't remove"));
            }
        }
        
        $data = json_encode(array('status' => 1));
        return $data;   
    }

    //Specialities
    public function indexSpecialities(){
        view()->share('menu', 'specialities');
        return view('admin.content.specialities_index');
    }

    public function dataSpecialities(Request $request){
        $model = new Speciality();

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

    public function publishSpecialities(Request $request){

        $id = $request['pubItemId'];

        $item = Speciality::find($id);
        if($item->published == 0){
            $item->published = 1;    
        }else{
            $item->published = 0;    
        }
        $item->save();
        $data = json_encode(array('status' => 1, 'id' => $id, 'published' => $item->published));
     
        return $data;
    }

    public function getSpecialities(Request $request){
        
        $id = (int)$request['id'];
        if($id){
            $item = Speciality::find($id);
            $mode = "Edit";
        }else{
            $item = new Speciality();
            $item->id = 0;
            $mode= "add";  
        }
        $data = json_encode(
            array('data' => 
                (String) view('admin.content.specialities_item', array(
                    'item'=>$item,
                    'mode' => $mode
                )),
                'status' => 1)
            );

        return $data; 
    }

    public function saveSpecialities(Request $request){
        $id = (int)$request['id'];

        if(!$id){
            $item = new Speciality();
            $item->save();
        }else{
            $item = Speciality::find($id);
        }

        $item->title = $request['title'];
        $item->published = (int)$request['published'];
        $item->save();
        return json_encode(array('status' => 1));
    }

    public function removeSpecialities(Request $request){
        $ids = $request['ids'];
        foreach ($ids as $id) {
            $item = Speciality::find($id);
            if($item){
                $item->delete();
            }else{
                return json_encode(array('status' => 0, 'message' => "Can't remove"));
            }
        }
        
        $data = json_encode(array('status' => 1));
        return $data;   
    }
}