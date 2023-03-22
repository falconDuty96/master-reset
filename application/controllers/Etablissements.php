<?php
class Etablissements extends CI_Controller {
    const LIMIT = 12;
    public function __construct()
    {
        parent::__construct();
        $this->load->model("EtablissementsModel", "m_etablissements");
    }

    public function maps($page=1)
    {
        $count = $this->m_etablissements->count();
        $pagination_active = $count > self::LIMIT;
        $page = (int)$page;
        $offset = ($page - 1) * self::LIMIT;
        $nbre_page = ceil($count / self::LIMIT);


        echo json_encode([
            "markers" => $this->m_etablissements->getMaps($offset),
            "pagination" => [
                "active" => $pagination_active,
                "page" => $page,
                "nbre_page" => $nbre_page,
            ]
        ]);
    }
    public function mapsVisible()
    {
        $lists_id = $_POST["data"] ?? [];
        $pagination = json_decode($_POST["pagination"]);
        $data = $this->m_etablissements->getMapsVisible($lists_id);
        $this->load->view("accueil/sousnav_result/etablissement_card", [
            "etablissements" => $data,
            "pagination" => $pagination
        ]);
    }
}