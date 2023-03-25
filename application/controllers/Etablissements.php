<?php
class Etablissements extends CI_Controller {
    const LIMIT = 12;
    public function __construct()
    {
        parent::__construct();
        $this->load->model("EtablissementsModel", "m_etablissements");
        $this->load->model("FavorisModel", "m_favoris");
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
        $users_favoris = $this->_getUsersFavoris();
        $this->load->view("accueil/sousnav_result/etablissement_card", [
            "etablissements" => $data,
            "pagination" => $pagination,
            "type" => $type ,
            "option" => $option ,
            "users_favoris" => $users_favoris,
        ]);
    }
    public function addFavorite()
    {
        $etablissements_id = (int)$_POST["id"];
        $users_id = $this->session->userdata("users_id");

        $favoris = $this->m_favoris->findOneBy(["users_id" => $users_id, "etablissements_id" => $etablissements_id]);
        $action = null;
        if(!$favoris)
        {
            $this->m_favoris->insert(["etablissements_id","users_id","favoris_createdAt"],[$etablissements_id,$users_id,date("Y-m-d")]);
            $action = "add";
        }
        else
        {
            $this->m_favoris->delete($favoris->favoris_id);
            $action = "delete";
        }
        echo json_encode(["success" => true, "action" => $action]);
    }

    private function _getUsersFavoris()
    {
        if(!$this->session->userdata("connected"))
        {
            return [];
        }
        if($this->session->userdata("users_type") === "admin")
        {
            return [];
        }
        $users_id = $this->session->userdata("users_id");
        $data = $this->m_favoris->findBy(["users_id" => $users_id]);
        $favoris = [];

        foreach($data as $d)
        {
            $favoris[] = $d->etablissements_id;
        }

        return $favoris;
    }
}