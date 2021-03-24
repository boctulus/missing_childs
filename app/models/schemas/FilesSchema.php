<?php

namespace simplerest\models\schemas;

use simplerest\core\interfaces\ISchema;

### IMPORTS

class FilesSchema implements ISchema
{ 
	### TRAITS
	
	function get(){
		return [
			'table_name'	=> 'files',

			'id_name'		=> 'uuid',

			'attr_types'	=> [
			'uuid' => 'STR',
			'filename' => 'STR',
			'file_ext' => 'STR',
			'filename_as_stored' => 'STR',
			'entity' => 'STR',
			'entity_id' => 'STR',
			'belongs_to' => 'INT',
			'guest_access' => 'INT',
			'locked' => 'INT',
			'created_at' => 'STR',
			'deleted_at' => 'STR'
		],

			'nullable'		=> ['uuid', 'belongs_to', 'guest_access', 'deleted_at'],

			'rules' 		=> [
				'filename' => ['max' => 255],
				'file_ext' => ['max' => 30],
				'filename_as_stored' => ['max' => 60],
				'entity' => ['max' => 40],
				'entity_id' => ['max' => 36],
			]
		];
	}	
}

