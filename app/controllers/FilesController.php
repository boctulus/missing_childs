<?php

namespace simplerest\controllers;

use simplerest\core\api\v1\ResourceController;
use simplerest\core\Request;
use simplerest\libs\Factory;
use simplerest\libs\DB;
use simplerest\libs\Debug;

class FilesController extends ResourceController
{
    // caso puntual donde lo conservo:
    static protected $guest_access = true;

    function __construct()
    {
        parent::__construct();   
        
        $this->tenantid = Factory::request()->getTenantId();

        if ($this->tenantid !== null){
            $this->conn = DB::getConnection($this->tenantid);
        }
    }

    function download($id = null) {
        if (!in_array($_SERVER['REQUEST_METHOD'], ['GET','OPTIONS']))
            Factory::response()->sendError('Incorrect verb ('.$_SERVER['REQUEST_METHOD'].'), expecting GET',405);

        if ($id == null)
            return;

        $_get = [];    

        
        # Incluye tentant-id en el id?

        if ($this->tenantid === null && strlen($id) > 36 && $id[36] == '-'){
            $this->tenantid = substr($id, 37);
            $id = substr($id,0,36);

            $this->conn = DB::getConnection($this->tenantid);
        }
        
        if (!Factory::acl()->hasSpecialPermission('read_all', $this->roles)){
            if ($this->acl->isGuest()){                
                $instance = DB::table('files');
                
                if ($instance->inSchema(['guest_access'])){
                    $_get[] = ['guest_access', 1];
                }
                                         
            } else {
                $_get[] = ['belongs_to', $this->uid];
            }
        }

        $_get[] =   ['uuid', $id];   

        $row = DB::table('files')->select(['filename_as_stored'])->where($_get)->first();


        if (empty($row))
            Factory::response()->sendError('File not found', 404);
      
        if ($this->tenantid !== null){
            $sub = "{$this->tenantid}/";
        }

        $file = UPLOADS_PATH . $sub . $row['filename_as_stored'];

        if (file_exists($file)) {
            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename="'.basename($file).'"');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($file));
            readfile($file);
            exit;
        } else {
            Factory::response()->sendError('File not found', 404, "$file not found in storage");
        }
    }
}