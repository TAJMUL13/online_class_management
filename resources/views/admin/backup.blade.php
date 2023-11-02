<?php
if(!function_exists("export_database")){
    function export_database($bkpFileName = null){

        //$ci =& get_instance();
        $targetTables = [];
        $newLine = "\r\n";

        $queryTables = DB::select(DB::raw('SHOW TABLES'));

        foreach($queryTables->result() as $table){
            $targetTables[] = $table->Tables_in_my_database;
        }

        foreach($targetTables as $table){
            $tableData = DB::select(DB::raw('SELECT * FROM '.$table));
            $res = DB::select(DB::raw('SHOW CREATE TABLE '.$table));

            $cnt = 0;
            $content = (!isset($content) ?  '' : $content) . $res->row_array()["Create Table"].";" . $newLine . $newLine;
            foreach($tableData as $row){
                $subContent = "";
                $firstQueryPart = "";
                if($cnt == 0 || $cnt % 100 == 0){
                    $firstQueryPart .= "INSERT INTO {$table} VALUES ";
                    if(count($tableData) > 1)
                        $firstQueryPart .= $newLine;
                }

                $valuesQuery = "(";
                foreach($row as $key => $value){
                    $valuesQuery .= $value . ", ";
                }

                $subContent = $firstQueryPart . rtrim($valuesQuery, ", ") . ")";

                if( (($cnt+1) % 100 == 0 && $cnt != 0) || $cnt+1 == count($tableData))
                    $subContent .= ";" . $newLine;
                else
                    $subContent .= ",";

                $content .= $subContent;
                $cnt++;
            }
            $content .= $newLine;
        }

        $content = trim($content);

        //check for stored procedures
        $storedProcedures = DB::select(DB::raw("SHOW PROCEDURE STATUS WHERE Db = '{$ci->db->database}'");
        if($storedProcedures->count() > 0){
            foreach($storedProcedures->result() as $procedure){
                $data = DB::select(DB::raw("SHOW CREATE PROCEDURE {$procedure->Name}"));
                if($data->count() > 0){
                    $dropProcedureSQL = "DROP PROCEDURE IF EXISTS {$procedure->Name};";
                    $sqlQuery = $data->row_array()["Create Procedure"];
                    $sqlQuery = preg_replace("/CREATE DEFINER=.+? PROCEDURE/", "CREATE PROCEDURE IF NOT EXISTS", $sqlQuery);
                    $sqlQuery = "\r\n" . $sqlQuery . "//";
                    $content .=  $newLine . $newLine . $dropProcedureSQL . $sqlQuery ;
                }
            }
        }

        //check for functions
        $functions = DB::select(DB::raw("SHOW FUNCTION STATUS WHERE Db = '{$ci->db->database}';"));
        if($functions->count() > 0){
            foreach($functions->result() as $function){
                $data = DB::select(DB::raw("SHOW CREATE FUNCTION {$function->Name}");
                if($data->count() > 0){
                    $dropFunctionSQL = "DROP function IF EXISTS {$function->Name};";
                    $sqlQuery = $data->row_array()["Create Function"];
                    $sqlQuery = preg_replace("/CREATE DEFINER=.+? FUNCTION/", "CREATE FUNCTION IF NOT EXISTS", $sqlQuery);
                    $sqlQuery = "\r\n" . $sqlQuery . "//";
                    $content .=  $newLine . $newLine . $dropFunctionSQL . $sqlQuery ;
                }
            }
        }

        /*$dbBackupFile = FCPATH . BKP_FILE_DIR;
        if(is_null($bkpFileName))
            $dbBackupFile .= "{$ci->db->database}.sql";
        else
            $dbBackupFile .= "{$bkpFileName}.sql";

        $handle = fopen($dbBackupFile, "w+");
        fwrite($handle, $content);
        fclose($handle);*/

        return $content;
    }
}

?>