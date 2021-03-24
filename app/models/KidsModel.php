<?php

namespace simplerest\models;

use simplerest\core\Model;
use simplerest\libs\ValidationRules;
use simplerest\libs\Factory;
use simplerest\libs\Url;
use simplerest\models\schemas\KidsSchema;

class KidsModel extends Model
{ 
	protected $hidden   = [];
	protected $not_fillable = [];

    function __construct(bool $connect = false){
        parent::__construct($connect, new KidsSchema());
	
		$this->registerOutputMutator('thumbnail', function($uuid){ 
			return Url::http_protocol() . '//' . $_SERVER['HTTP_HOST'] . '/files/download/'.$uuid.'-'. Factory::request()->getTenantId(); 
		});
	}
}
