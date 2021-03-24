<?php

namespace simplerest\controllers;

use simplerest\core\Controller;
use simplerest\core\Request;
use simplerest\libs\Factory;
use simplerest\libs\Debug;
use simplerest\libs\DB;
use simplerest\core\Model;
use simplerest\models\KidsModel;
use PHPMailer\PHPMailer\PHPMailer;
use simplerest\libs\Utils;
use simplerest\libs\Strings;
use simplerest\libs\Validator;
use simplerest\libs\Files;
use simplerest\libs\Time;
use simplerest\core\Schema;

class DumbController extends Controller
{
    protected function renamer ($uid) {
        $prefix = ($uid ?? '0').'-';
        return uniqid($prefix, true);
    }

    function import_ar(){
        $country = 'ar';

        $this->conn = DB::getConnection($country);

        $json = file_get_contents("/home/www/missing_childs_parser/missingchildren_ar.json"); 
        $kids = json_decode($json, true);
        
        $kid = $kids[10];
        unset($kid['extras']);

        //Debug::dd($kid);
        
        foreach ((array) $kids as $ix => $kid){
            if ($kid['found']){
                continue;
            }
            
            $thumb_url = $kid['thumbnail'];
            $file_ext = pathinfo($kid['thumbnail'], PATHINFO_EXTENSION);

            unset($kid['thumbnail']);
            unset($kid['extras']);

            $thumb = file_get_contents($thumb_url);  

            $kid_id = DB::table('kids')->create(
                $kid        
            );
            
            $filename_as_stored = $this->renamer($kid_id) . ".$file_ext";
            $path = UPLOADS_PATH . $country . '/' . $filename_as_stored;
            file_put_contents($path, $thumb);        
            
            $filename = str_replace(' ', '_', $kid['fullname']) . ".$file_ext";            

            $file_id = DB::table('files')
            ->fill(['filename_as_stored'])
            ->create([
                        'filename' => $filename,  
                        'file_ext' => $file_ext,
                        'filename_as_stored' => $filename_as_stored,
                        'belongs_to' => $belongs_to ?? NULL,
                        'guest_access' => $data['guest_access'] ?? 0
            ]);

            $ok = DB::table('kids')
            ->where(['id' => $kid_id])
            ->update([
                'thumbnail' => $file_id
            ]);

        }
        
    }

}