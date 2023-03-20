<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Pro extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("FrontModel", "front");
        $this->load->model("ProModel", "pro");
    }
    public function index()
    {
        $this->load->view('pro/index');
    }
    public function abonnement()
    {
        $this->load->view('pro/abonnement');
    }
    public function mails()
    {
        $this->load->view('pro/mails');
    }
    public function notifications()
    {
        $this->load->view('pro/notifications');
    }
    public function profil()
    {
        $this->load->view('pro/profil', ['profil' => $this->pro->getProUserById($_SESSION['users_id'])]);
    }
    public function faq()
    {
        $this->load->view('pro/faq', ['faq' => $this->front->getFAQByType('professionnel')]);
    }
    public function cgu()
    {
        $this->load->view('pro/cgu', ['cgu' => $this->front->getCGUByType("professionnel")]);
    }
    public function cgv()
    {
        $this->load->view('pro/cgv', ['cgv' => $this->front->getCGV()]);
    }
    public function transactions()
    {
        $this->load->view('pro/transactions');
    }
    public function modifProfil($id)
    {
        $profil = $this->pro->getProUserById($id);
        $oldImage = $profil[0]->users_photo;
        $target_dir = "pro/uploads/";
        $target_file = $target_dir . basename($_FILES["users_photo"]["name"]);
        $image = "";
        if ($_FILES['users_photo']['size'] == 0) {
            $image = $oldImage;
        } else {
            if (file_exists('publics/' . $target_dir . $oldImage)) {
                unlink('publics/' . $target_dir . $oldImage);
            }
            // unlink('publics/'.$target_dir.$oldImage) ;
            move_uploaded_file($_FILES["users_photo"]["tmp_name"], 'publics/' . $target_file);
            $image = $target_file;
        }
        $data = [
            $this->input->post('users_nom'),
            $this->input->post('users_prenoms'),
            $this->input->post('users_email'),
            $this->input->post('users_telephone'),
            $image,
            $id,
        ];
        $this->pro->updateProUser($data);
        redirect('Pro/profil');
    }
    public function modifPassword($id)
    {
        $d = $this->pro->getProUserById($id);
        if ($d[0]->users_motdepasse == $this->input->post('new_pass')) {
            $data = [
                sha1($this->input->post('new_pass')),
                $id,
            ];
            $this->pro->updatePassword($data);
            redirect('Pro/deconnect');
        } else {
            redirect('Pro/profil');
        }
    }
    public function deconnect()
    {
        session_destroy();
        redirect('Home/');
    }

    // etablissement:
    public function addEtablissement()
    {
        $image = "";
        $activite = "";
        $id_categories = "";
        $sous_categories_id = $this->input->post("sous_categories_id");

        $categ = $this->input->post('categorie');
        switch ($categ) {
            case "categ-1":
                $id_categories = 1;
                break;
            case "categ-2":
                $id_categories = 2;
                break;
            case "categ-3":
                $id_categories = 3;
                break;
            case "categ-4":
                $id_categories = 4;
                break;
            case "categ-5":
                $id_categories = 5;
                break;
            case "categ-6":
                $id_categories = 6;
                break;
        }

        $target_dir = "pro/uploads/";
        $target_file = $target_dir . basename($_FILES["etablissements_photo"]["name"]);
        $image = $target_file ;
        move_uploaded_file($_FILES["etablissements_photo"]["tmp_name"], 'publics/' . $target_file);

        
        $data = [
            $this->input->post("etablissements_nom"),
            $this->input->post("etablissements_presentation"),
            $this->input->post("etablissement_adresse"),
            $this->input->post("etablissements_motcle"),
            $this->input->post("etablissements_longitude"),
            $this->input->post("etablissements_latitude"),
            $this->input->post("etablissements_codepostal"),
            $this->input->post("etablissements_departement"),
            $this->input->post("etablissements_region"),
            $this->input->post("etablissements_pays"),
            $this->input->post("etablissements_telephone"),
            $this->input->post("etablissements_email"),
            $this->input->post("etablissements_website"),
            $this->input->post("etablissements_fb"),
            $this->input->post("etablissements_insta"),
            $image,
            $activite,
            $_SESSION['users_id'],
            $id_categories,
            date('Y-m-d'),
            $this->input->post("etablissements_ville"),
            $sous_categories_id ,
        ];

        $this->pro->insertEtablissement($data);
        redirect('Pro/');
    }
}
