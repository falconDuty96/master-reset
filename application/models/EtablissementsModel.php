<?php

class EtablissementsModel extends CI_Model
{
    protected $table = "etablissements";
    public function getMaps($option, $query, $offset)
    {
        $data = [];
        if ($option == 'region') {
            $data = DB::customQuery(
                "SELECT * FROM etablissements 
            INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
            INNER JOIN users ON users.users_id=etablissements.users_id
            WHERE etablissements.etablissements_region LIKE '%" . $query . "%'
            GROUP BY etablissements_nom
            LIMIT " . Etablissements::LIMIT . " " .
                    "OFFSET {$offset}"
            );
        } else if ($option == 'departement') {
            $data = DB::customQuery(
                "SELECT * FROM etablissements 
            INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
            INNER JOIN users ON users.users_id=etablissements.users_id
            WHERE etablissements.etablissements_departement LIKE '%" . $query . "%'
            GROUP BY etablissements_nom
            LIMIT " . Etablissements::LIMIT . " " .
                    "OFFSET {$offset}"
            );
        } else if ($option == 'motcle') {
            $data = DB::customQuery(
                "SELECT * FROM etablissements 
            INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
            INNER JOIN users ON users.users_id=etablissements.users_id
            WHERE etablissements.etablissements_motcle LIKE '%" . $query . "%'
            GROUP BY etablissements_nom
            LIMIT " . Etablissements::LIMIT . " " .
                    "OFFSET {$offset}"
            );
        } else if ($option == 'sc') {
            $data = DB::customQuery(
                "SELECT * FROM etablissements 
            INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
            INNER JOIN users ON users.users_id=etablissements.users_id
            INNER JOIN sous_categories ON users.users_id=etablissements.users_id
            WHERE sous_categories.sous_categories_nom LIKE '%" . $query . "%'
            GROUP BY etablissements_nom
            LIMIT " . Etablissements::LIMIT . " " .
                    "OFFSET {$offset}"
            );
        }
        // $data = DB::customQuery(
        //     "SELECT * FROM etablissements 
        //     INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
        //     INNER JOIN users ON users.users_id=etablissements.users_id
        //     GROUP BY etablissements_nom
        //     LIMIT " . Etablissements::LIMIT . " " .
        //         "OFFSET {$offset}"
        // );

        foreach ($data as $k => $v) {
            $data[$k]->etablissements_activites = json_decode($v->etablissements_activites);
        }

        return $data;
    }
    public function getMapsVisible($id_lists)
    {
        $res = [];
        foreach ($id_lists as $id) {
            $data = DB::customQuery(
                "SELECT * FROM etablissements 
                INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
                INNER JOIN users ON users.users_id=etablissements.users_id
                WHERE etablissements_id=?",
                [$id],
                false
            );
            $data->etablissements_activites = json_decode($data->etablissements_activites);
            $data->etablissements_photo = json_decode($data->etablissements_photo) ;
            $res[] = $data;
        }


        return $res;
    }

    public function count($option, $query)
    {
        $res = 0;
        if ($option == 'region') {
            $res = DB::customQuery("SELECT COUNT(DISTINCT etablissements_nom) AS count FROM etablissements WHERE etablissements_region LIKE '%" . $query . "%'", [], false);
        } else if ($option == 'departement') {
            $res = DB::customQuery("SELECT COUNT(DISTINCT etablissements_nom) AS count FROM etablissements WHERE etablissements_departement LIKE '%" . $query . "%'", [], false);
        } else if ($option == 'motcle') {
            $res = DB::customQuery("SELECT COUNT(DISTINCT etablissements_nom) AS count FROM etablissements WHERE etablissements_motcle LIKE '%" . $query . "%'", [], false);
        }


        // $res = DB::customQuery("SELECT COUNT(DISTINCT etablissements_nom) AS count FROM etablissements", [], false);
        return (int)$res->count;
    }

    public function showEtablissementsByID($id)
    {
        $res = DB::customQuery(
            "SELECT * FROM etablissements 
            INNER JOIN sous_categories ON etablissements.sous_categories_id=sous_categories.sous_categories_id
            INNER JOIN users ON users.users_id=etablissements.users_id
            INNER JOIN categories ON categories.categories_id=etablissements.categories_id
            WHERE etablissements_id=?",
            [$id],
            false
        );
        $res->etablissements_photo = json_decode($res->etablissements_photo) ;
        $res->etablissements_activites = json_decode($res->etablissements_activites) ;

        $data = [] ;
        array_push($data,$res) ;
        return $data ;
    }
}
