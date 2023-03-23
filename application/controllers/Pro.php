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

    public function showCategorie()
    {
        $categ = $this->front->getAllCategories();
        $design = "";
        for ($i = 0; $i < count($categ); $i++) {
            $design .= "<option value='categ-" . $categ[$i]->categories_id . "'>" . $categ[$i]->categories_nom . "</option>";
        }
        echo $design;
    }

    public function index()
    {
        $this->load->view('pro/index', [
            'sc' => $this->pro->getCategories_sous_categories(),
            'data' => $this->pro->selectEtablissements(),
        ]);
        // $this->pro->getCategories_sous_categories() ;
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
    public function etablissement() {
        $this->load->view('pro/etablissement', ['profil' => $this->pro->getProUserById($_SESSION['users_id'])]);
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
        $_SESSION['users_nom'] = $this->input->post('users_nom');
        $_SESSION['users_prenoms'] = $this->input->post('users_prenoms');
        $_SESSION['users_email'] = $this->input->post('users_email');
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

    public function editEtablissement($id)
    {
        $image = "";
        $activite = "";
        $id_categories = "";
        $sous_categories_id = "";

        $categ = $this->input->post('categorie');

        switch ($categ) {
            case "categ-1":
                $day = "";
                if ($this->input->post("nuits") == "on" && $this->input->post("jours") == "") {
                    $day = " euros/nuit";
                } else if ($this->input->post("jours") == "on" && $this->input->post("nuits") == "") {
                    $day = " euros/jour";
                }
                $id_categories = 1;
                $activite = array(
                    "Piscines" => $this->input->post("piscines"),
                    "Salle de bain et W.C" => $this->input->post("salle_de_bain_et_wc"),
                    "Animaux" => $this->input->post("animaux"),
                    "Lits doubles" => $this->input->post("lits_doubles"),
                    "Lits superposés" => $this->input->post("lits_superposes"),
                    "Bain à remous" => $this->input->post("bain_a_remous"),
                    "Accès à Internet" => $this->input->post("acces_a_internet"),
                    "Enfants" => $this->input->post("enfants"),
                    "Lits d'appoints" => $this->input->post("lits_appoints"),
                    "Accessible aux handicapés" => $this->input->post("accessible_handicapes"),
                    "Sauna" => $this->input->post("sauna"),
                    "Ménage inclus" => $this->input->post("menage_inclus"),
                    "Petit déjeuner inclus" => $this->input->post("petit_dejeuner"),
                    "Lits pour bébé" => $this->input->post("lits_pour_bebe"),
                    "Possibilité de manger sur place" => $this->input->post("manger_sur_place"),
                    "Cuisines" => $this->input->post("cuisines"),
                    "Draps et linges inclus" => $this->input->post("draps_et_linges"),
                    "Lits simples" => $this->input->post("lits_simples"),
                    "Canapés lits" => $this->input->post("canapes_lits"),
                    "Tarif" => $this->input->post("tarif") . $day,
                    "Capacité" => $this->input->post("capacite"),
                    "Age minimum" => $this->input->post("age_minimum"),
                    "Nombre de couchage" => $this->input->post("nombre_de_couchage"),
                );
                $sous_categories_id = $this->input->post("sc_1");
                break;
            case "categ-2":
                $id_categories = 2;
                $activite = array(
                    "Heure d'ouverture" => $this->input->post("heure_ouverture_2"),
                    "Heure de fermeture" => $this->input->post("heure_fermeture_2"),
                    "Tarif" => $this->input->post("tarif_2"),
                    "Adapté aux handicapés" => $this->input->post("adapte_handicap_2"),
                );
                $sous_categories_id = $this->input->post("sc_2");
                break;
            case "categ-3":
                $id_categories = 3;
                $activite = array(
                    "Jours non ouverts" => $this->input->post("jours_non_ouverts"),
                    "Famille avec enfants" => $this->input->post("famille_enfants"),
                    "Livraisons" => $this->input->post("livraisons"),
                    "Heure d'ouverture" => $this->input->post("heure_ouverture"),
                    "Conseillé pour groupes" => $this->input->post("conseille_groupes"),
                    "Accessible aux handicapés" => $this->input->post("accessible_handicapes"),
                    "Heure de fermeture" => $this->input->post("heure_fermeture"),
                    "Repas sur place" => $this->input->post("repas_place"),
                    "Repas emportés" => $this->input->post("repas_emportes"),
                );
                $sous_categories_id = $this->input->post("sc_3");
                break;
            case "categ-4":
                $id_categories = 4;
                $activite = array(
                    "Durée de la balade" => $this->input->post("duree_balade"),
                    "Tarif à partir de" => $this->input->post("tarif_a_partir"),
                    "Distance du parcours (en Km)" => $this->input->post("distance_parcours"),
                );
                $sous_categories_id = $this->input->post("sc_4");
                break;
            case "categ-5":
                $id_categories = 5;
                $activite = array();
                $sous_categories_id = $this->input->post("sc_5");
                break;
            case "categ-6":
                $id_categories = 6;
                $activite = array();
                $sous_categories_id = $this->input->post("sc_6");
                break;
        }

        $data_photo = [];

        if (!empty($_FILES['etablissements_photo']['name'][0])) {
            // do something
            foreach ($_FILES['etablissements_photo']['name'] as $cle => $valeur) {
                $target_dir = "pro/uploads/";
                $target_file = $target_dir . basename($_FILES["etablissements_photo"]["name"][$cle]);
                $image = $target_file;
                move_uploaded_file($_FILES["etablissements_photo"]["tmp_name"][$cle], 'publics/' . $target_file);
                array_push($data_photo, $target_file);
            }
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
                json_encode($data_photo),
                json_encode($activite),
                $_SESSION['users_id'],
                $id_categories,
                date('Y-m-d'),
                $this->input->post("etablissements_ville"),
                $sous_categories_id,
                $id,
            ];
        } else {
            $etab = $this->pro->selectEtablissementID($id);
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
                $etab[0]->etablissements_photo,
                json_encode($activite),
                $_SESSION['users_id'],
                $id_categories,
                date('Y-m-d'),
                $this->input->post("etablissements_ville"),
                $sous_categories_id,
                $id,
            ];
        }

        // $target_dir = "pro/uploads/";
        // $target_file = $target_dir . basename($_FILES["etablissements_photo"]["name"]);
        // $image = $target_file;
        // move_uploaded_file($_FILES["etablissements_photo"]["tmp_name"], 'publics/' . $target_file);




        $this->pro->updateEtablissement($data);
        redirect('Pro/');
    }


    public function addEtablissement()
    {
        $image = "";
        $activite = "";
        $id_categories = "";
        $sous_categories_id = "";

        $categ = $this->input->post('categorie');

        switch ($categ) {
            case "categ-1":
                $day = "";
                if ($this->input->post("nuits") == "on" && $this->input->post("jours") == "") {
                    $day = " euros/nuit";
                } else if ($this->input->post("jours") == "on" && $this->input->post("nuits") == "") {
                    $day = " euros/jour";
                }
                $id_categories = 1;
                $activite = array(
                    "Piscines" => $this->input->post("piscines"),
                    "Salle de bain et W.C" => $this->input->post("salle_de_bain_et_wc"),
                    "Animaux" => $this->input->post("animaux"),
                    "Lits doubles" => $this->input->post("lits_doubles"),
                    "Lits superposés" => $this->input->post("lits_superposes"),
                    "Bain à remous" => $this->input->post("bain_a_remous"),
                    "Accès à Internet" => $this->input->post("acces_a_internet"),
                    "Enfants" => $this->input->post("enfants"),
                    "Lits d'appoints" => $this->input->post("lits_appoints"),
                    "Accessible aux handicapés" => $this->input->post("accessible_handicapes"),
                    "Sauna" => $this->input->post("sauna"),
                    "Ménage inclus" => $this->input->post("menage_inclus"),
                    "Petit déjeuner inclus" => $this->input->post("petit_dejeuner"),
                    "Lits pour bébé" => $this->input->post("lits_pour_bebe"),
                    "Possibilité de manger sur place" => $this->input->post("manger_sur_place"),
                    "Cuisines" => $this->input->post("cuisines"),
                    "Draps et linges inclus" => $this->input->post("draps_et_linges"),
                    "Lits simples" => $this->input->post("lits_simples"),
                    "Canapés lits" => $this->input->post("canapes_lits"),
                    "Tarif" => $this->input->post("tarif") . $day,
                    "Capacité" => $this->input->post("capacite"),
                    "Age minimum" => $this->input->post("age_minimum"),
                    "Nombre de couchage" => $this->input->post("nombre_de_couchage"),
                );
                $sous_categories_id = $this->input->post("sc_1");
                break;
            case "categ-2":
                $id_categories = 2;
                $activite = array(
                    "Heure d'ouverture" => $this->input->post("heure_ouverture_2"),
                    "Heure de fermeture" => $this->input->post("heure_fermeture_2"),
                    "Tarif" => $this->input->post("tarif_2"),
                    "Adapté aux handicapés" => $this->input->post("adapte_handicap_2"),
                );
                $sous_categories_id = $this->input->post("sc_2");
                break;
            case "categ-3":
                $id_categories = 3;
                $activite = array(
                    "Jours non ouverts" => $this->input->post("jours_non_ouverts"),
                    "Famille avec enfants" => $this->input->post("famille_enfants"),
                    "Livraisons" => $this->input->post("livraisons"),
                    "Heure d'ouverture" => $this->input->post("heure_ouverture"),
                    "Conseillé pour groupes" => $this->input->post("conseille_groupes"),
                    "Accessible aux handicapés" => $this->input->post("accessible_handicapes"),
                    "Heure de fermeture" => $this->input->post("heure_fermeture"),
                    "Repas sur place" => $this->input->post("repas_place"),
                    "Repas emportés" => $this->input->post("repas_emportes"),
                );
                $sous_categories_id = $this->input->post("sc_3");
                break;
            case "categ-4":
                $id_categories = 4;
                $activite = array(
                    "Durée de la balade" => $this->input->post("duree_balade"),
                    "Tarif à partir de" => $this->input->post("tarif_a_partir"),
                    "Distance du parcours (en Km)" => $this->input->post("distance_parcours"),
                );
                $sous_categories_id = $this->input->post("sc_4");
                break;
            case "categ-5":
                $id_categories = 5;
                $activite = array();
                $sous_categories_id = $this->input->post("sc_5");
                break;
            case "categ-6":
                $id_categories = 6;
                $activite = array();
                $sous_categories_id = $this->input->post("sc_6");
                break;
        }

        $data_photo = [];
        foreach ($_FILES['etablissements_photo']['name'] as $cle => $valeur) {
            $target_dir = "pro/uploads/";
            $target_file = $target_dir . basename($_FILES["etablissements_photo"]["name"][$cle]);
            $image = $target_file;
            move_uploaded_file($_FILES["etablissements_photo"]["tmp_name"][$cle], 'publics/' . $target_file);
            array_push($data_photo, $target_file);
        }

        // $target_dir = "pro/uploads/";
        // $target_file = $target_dir . basename($_FILES["etablissements_photo"]["name"]);
        // $image = $target_file;
        // move_uploaded_file($_FILES["etablissements_photo"]["tmp_name"], 'publics/' . $target_file);


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
            json_encode($data_photo),
            json_encode($activite),
            $_SESSION['users_id'],
            $id_categories,
            date('Y-m-d'),
            $this->input->post("etablissements_ville"),
            $sous_categories_id,
        ];

        $this->pro->insertEtablissement($data);
        redirect('Pro/');
    }

    public function dropEtablissement($id)
    {
        $this->pro->deleteEtablissement($id);
        redirect('Pro/');
    }
}
