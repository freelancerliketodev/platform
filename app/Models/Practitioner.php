<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Practitioner extends Authenticatable
{
    use HasFactory, Notifiable;

    protected $table = 'practitioner';

	public function setWorkingTime($data){

		// $user_id =  Auth::guard('practitioner')->user()->id;
		$user_id =  12;
		
		$query = DB::table('working_time');
		
		$query->select('id');
		$query->where('practitioner_id',$user_id);
		
		$from = $data['from'];
		$to = $data['to'];

		$query->Where(function($query) use ($from) {
			$query->where('from', '>=',$from)
				  ->where('to', '<=',$from);
		});
		$query->orWhere(function($query) use ($to) {
			$query->where('from', '>=',$to)
				  ->where('to', '<=',$to);
		});
		$check = $query->first();

		if(!$check){
			$insertArray = array('practitioner_id' => $user_id, 'from' => $from, 'to' => $to);
			$kk = DB::table('working_time')->insert($insertArray)->toSql();
		var_dump($kk);
		}
		exit();
		$data = $query->first();
	}
}
