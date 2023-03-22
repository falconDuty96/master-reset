<?php

class EtablissementsModel extends CI_Model {

    public function getMaps($offset)
    {
        $data = DB::customQuery("SELECT * FROM etablissements 
            INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
            INNER JOIN users ON users.users_id=etablissements.users_id
            GROUP BY etablissements_nom
            LIMIT " . Etablissements::LIMIT . " " .
            "OFFSET {$offset}"
        );

        foreach($data as $k => $v)
        {
            $data[$k]->etablissements_activites = json_decode($v->etablissements_activites);
        }

        return $data;
    }
    public function getMapsVisible($id_lists)
    {
        $res = [];
        foreach($id_lists as $id)
        {
            $data = DB::customQuery("SELECT * FROM etablissements 
                INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
                INNER JOIN users ON users.users_id=etablissements.users_id
                WHERE etablissements_id=?", [$id], false
            );
            $data->etablissements_activites = json_decode($data->etablissements_activites);

            $res[] = $data;
        }
        

        return $res;
    }

    public function count()
    {
        $res = DB::customQuery("SELECT COUNT(DISTINCT etablissements_nom) AS count FROM etablissements",[], false);
        return (int)$res->count;
    }
}