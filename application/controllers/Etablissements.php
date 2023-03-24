<?php
class Etablissements extends CI_Controller {
    const LIMIT = 12;
    public function __construct()
    {
        parent::__construct();
        $this->load->model("EtablissementsModel", "m_etablissements");
    }

    public function maps($option,$query,$page=1)
    {
        // option: region 
        // query: Bretagne
        $count = $this->m_etablissements->count($option,urldecode($query));
        $pagination_active = $count > self::LIMIT;
        $page = (int)$page;
        $offset = ($page - 1) * self::LIMIT;
        $nbre_page = ceil($count / self::LIMIT);


        echo json_encode([
            "markers" => $this->m_etablissements->getMaps($option,urldecode($query),$offset),
            "pagination" => [
                "active" => $pagination_active,
                "page" => $page,
                "nbre_page" => $nbre_page,
                "counter" => $this->m_etablissements->count($option,urldecode($query)),
            ]
        ]);
    }

    public function showing_info($id) {
        echo json_encode([
            "markers" => $this->m_etablissements->showEtablissementsByID($id),
        ]);
    }

    public function mapsVisible($type,$option)
    {
        $lists_id = $_POST["data"] ?? [];
        $pagination = json_decode($_POST["pagination"]);
        $data = $this->m_etablissements->getMapsVisible($lists_id);
        $this->load->view("accueil/sousnav_result/etablissement_card", [
            "etablissements" => $data,
            "pagination" => $pagination,
            "type" => $type ,
            "option" => $option ,
        ]);
    }
}