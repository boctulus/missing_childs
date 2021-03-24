<?php

namespace simplerest\models\schemas;

use simplerest\core\interfaces\ISchema;

### IMPORTS

class KidsSchema implements ISchema
{ 
	### TRAITS
	
	function get(){
		return [
			'table_name'	=> 'kids',

			'id_name'		=> 'id',

			'attr_types'	=> [
				'id' => 'INT',
				'fullname' => 'STR',
				'date_birth' => 'STR',
				'date_missing' => 'STR',
				'thumbnail' => 'STR',
				'age_photo' => 'INT',
				'place' => 'STR',

				'gender' => 'STR',
				'eye_color' => 'STR',
				'hair' => 'STR',
				'height' => 'INT',
				'weight' => 'INT',
				'distinguishing_marks' => 'STR',

				'ori_data' => 'STR',
				'ori_id' => 'STR',
				'found' => 'INT',
				'extras' => 'STR'
			],

			'nullable'		=> [
				'id', 
				'date_birth',
				'date_missing', 
				'thumbnail',
				'age_photo', 
				'place',
				'gender',
				'eye_color',
				'hair',
				'height',
				'weight',
				'distinguishing_marks',				
				'extras'
			],

			'rules' 		=> [
				'fullname' => ['max' => 100],
				'thumbnail' => ['max' => 36],
				'place' => ['max' => 255],
				'ori_data' => ['max' => 120],
				'ori_id' => ['max' => 240]
			]
		];
	}	
}

