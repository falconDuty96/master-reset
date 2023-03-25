<?php
class Abonnement extends ProController {

    public function __construct()
    {
        parent::__construct();
        $this->load->model("AbonnementsModel","m_abonnement");
        $this->load->model("ForfaitModel","m_forfait");
    }

    
    public function getTarif()
    {
        $nbre = (int)$_POST["nbre"];
        $total = 0;
        $expiration = date("Y-m-d");

        $forfait = $this->m_forfait->findOneBy(["nbre_annee" => $nbre]);
        if($forfait) {
            $total = $forfait->prix;
            $expiration = date("Y-m-d", strtotime("+{$nbre} year"));
        }
        echo json_encode([
            "total" => $total,
            "expiration" => $expiration
        ]);
    }

    public function create()
    {
        $users_id = $this->session->userdata("users_id");
        $nbre_annee = (int)$_POST["nbre_annee"];
        $etablissement = (int)$_POST["etablissement"];
        $errors = [];
        if($nbre_annee <= 0) 
        {
            $errors[] =  "Saisissez une nombre d'année valide";
        }
        if($etablissement <= 0)
        {
            $errors[] =  "Selectionner un etablissement";
        }
        if(!empty($errors))
        {
            echo json_encode(["errors" => $errors]);
            http_response_code(400);
            exit();
        }

        $forfait = $this->m_forfait->findOneBy(["nbre_annee" => $nbre_annee]);
        $total = 0;
        if($forfait) {
            $total = $forfait->prix;
        }

        $reference = $this->_generateReference();
        $this->m_abonnement->insert([
            "abonnements_duree",
            "etablissements_id",
            "abonnements_createdAt",
            "abonnements_etat",
            "abonnements_montant",
            "users_id",
            "abonnements_reference"], [
            $nbre_annee, $etablissement, date('Y-m-d'), "non paye", $total,$users_id,$reference
        ]);

        $this->load->view("pro/components/table_abonnement", [
            "lists" => $this->m_abonnement->findByUser($users_id)
        ]);
    }

    public function delete()
    {
        $id = (int)$_POST["id"];
        $users_id = $this->session->userdata("users_id");
        $abonnement = $this->m_abonnement->findOneById($id);
        if($abonnement->abonnements_etat === "paye")
        {
            exit();
        }
        $this->m_abonnement->delete($id);
        $this->load->view("pro/components/table_abonnement", [
            "lists" => $this->m_abonnement->findByUser($users_id)
        ]);
    }

    private function _generateReference()
    {
        $reference = uniqid("ref");
        while($this->m_abonnement->findOneBy(["abonnements_reference" => $reference]))
        {
            $reference = uniqid();
        }
        return $reference ;
    }
}