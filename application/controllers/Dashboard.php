<?php

    class Dashboard extends CI_Controller {
        public function __construct() 
        {
            parent::__construct();
            $this->load->model('FrontModel','front') ;
        }
        public function index() {
            $this->load->view("dashboard/index", [
                "ccm" => $this->front->getCcm(),
                "su" => $this->front->getSU() ,
            ]) ;
        }
        public function blogs() {
            $this->load->view("dashboard/blog",["blogs" => $this->front->getBlogs(),"su" => $this->front->getSU() ,]) ;
        }
        public function categories() {
            $this->load->view("dashboard/categories",["categories" => $this->front->getAllCategories(),"su" => $this->front->getSU() ,]) ;
        }
        public function cgu() {
            $this->load->view("dashboard/cgu",["cgu" => $this->front->getCGU(),"su" => $this->front->getSU() ,]) ;
        }
        public function faq() {
            $this->load->view("dashboard/faq",["faq" => $this->front->getFAQ(),"su" => $this->front->getSU() ,]) ;
        }
        public function cgv() {
            $this->load->view("dashboard/cgv",["cgv" => $this->front->getCGV(),"su" => $this->front->getSU() ,]) ;
        }
        public function fiches() {
            $this->load->view("dashboard/fiches") ;
        }
        public function statistiques() {
            $this->load->view("dashboard/statistiques") ;
        }
        public function modifCCM($id) {
            $this->front->modifCcm([$this->input->post('ccm_entete'),$this->input->post('ccm_texte'),$id]) ;
            redirect('Dashboard/') ;
        }
        public function addBlogs() {
            $data = [] ;
            $target_dir = "dashboard/uploads/" ;
            $target_file = $target_dir.basename($_FILES["blogs_image"]["name"]) ;
            
            move_uploaded_file($_FILES["blogs_image"]["tmp_name"], 'publics/'.$target_file) ;
            $data = [
                $this->input->post('blogs_presentation') ,
                $this->input->post('blogs_lien') ,
                $target_file ,
                date('Y-m-d')
            ] ;
            $this->front->insertBlogs($data) ;
            redirect('Dashboard/blogs') ;

        }
        public function dropBlogs($id) {
            
            $blogs = $this->front->getBlogsById($id) ;
            $image = "publics/".$blogs[0]->blogs_image ;
            
            unlink($image) ;
            $this->front->deleteBlogs($id) ;
            redirect('Dashboard/blogs') ;
        }
        public function modifBlogs() {
            $blogs = $this->front->getBlogsById($this->input->post('blogs_id')) ;
            $oldImage = $blogs[0]->blogs_image ;
            $target_dir = "dashboard/uploads/" ;
            $target_file = $target_dir.basename($_FILES["blogs_image"]["name"]) ;
            $image = "" ;
            if($_FILES['blogs_image']['size'] == 0) {
                $image = $oldImage ;
            }
            else {
                unlink('publics/'.$oldImage) ;
                move_uploaded_file($_FILES["blogs_image"]["tmp_name"], 'publics/'.$target_file) ;
                $image = $target_file ;
            }
            $data = [
                $this->input->post('blogs_presentation') ,
                $this->input->post('blogs_lien') ,
                $image ,
                $this->input->post('blogs_id') ,
            ] ;
            $this->front->udpateBlogs($data) ;
            redirect('Dashboard/blogs') ;
        }

        public function alterCategories($id) {
            $categories = $this->front->getCategoriesById($id) ;
            $oldImage1 = $categories[0]->categories_image1 ;
            $oldImage2 = $categories[0]->categories_image2 ;
            $target_dir = "dashboard/uploads/" ;
            $target_file1 = $target_dir.basename($_FILES["categories_image1"]["name"]) ;
            $target_file2 = $target_dir.basename($_FILES["categories_image2"]["name"]) ;
            $image1 = "" ;
            $image2 = "" ;
            if($_FILES['categories_image1']['size'] == 0) {
                $image1 = $oldImage1 ;
            }
            else {
                unlink('publics/'.$oldImage1) ;
                move_uploaded_file($_FILES["categories_image1"]["tmp_name"], 'publics/'.$target_file1) ;
                $image1 = $target_file1 ;
            }
            if($_FILES['categories_image2']['size'] == 0) {
                $image2 = $oldImage2 ;
            }
            else {
                unlink('publics/'.$oldImage2) ;
                move_uploaded_file($_FILES["categories_image2"]["tmp_name"], 'publics/'.$target_file2) ;
                $image2 = $target_file2 ;
            }
            $data = [
                $this->input->post('categories_nom') ,
                $this->input->post('categories_texte') ,
                $image1 ,
                $image2 ,
                $id ,
            ] ;
            $this->front->modifCategories($data) ;
            redirect('Dashboard/categories') ;
        }

        public function modifSuperUser($id) {
            $this->front->updateSU([
                $this->input->post('superuser_pseudo') ,
                sha1($this->input->post('superuser_motdepasse')) ,
                $id ,
            ]) ;
            redirect("Dashboard/connect") ;
        }

        public function deconnect() {
            session_destroy() ;
            redirect("Dashboard/connect") ;
        }
        public function connect() {
            $this->load->view('dashboard/login') ;
        }
        public function doConnect() {
            $this->form_validation->set_error_delimiters('<p class="text-danger" style="font-weight: bold;font-size: 12px;">', '</p>');
            $this->form_validation->set_rules('superuser_pseudo', 'superuser_pseudo', 'required',array('required' => 'Ce champ est obligatoire')) ;
            $this->form_validation->set_rules('superuser_motdepasse', 'superuser_motdepasse', 'required',array('required' => 'Ce champ est obligatoire')) ;
            $data = [
                $this->input->post('superuser_pseudo') ,
                sha1($this->input->post('superuser_motdepasse')) ,
            ] ;

            if($this->form_validation->run() == FALSE) {
                $this->load->view("Dashboard/login",array("login_data" => $_POST)) ;
            }
            else {
                $su = $this->front->getSUSpecified($data) ;
                if(count($su) > 0) {
                    $_SESSION['superuser'] = true ;
                    $_SESSION['pseudo'] = $this->input->post('superuser_pseudo') ;
                    redirect("Dashboard/") ;
                }
                else {
                    // redirect("Dashboard/connect") ;
                    $this->load->view("Dashboard/login",array(
						"message" => "Veuillez vérifier le pseudo et/ou le mot de passe",
						"error" => true ,
					)) ;
                }
            }
            
        }

        public function faqAdding() {
            $data = [
                $this->input->post("faq_type") ,
                $this->input->post("faq_question") ,
                $this->input->post("faq_contenu") ,
            ] ;
            $this->front->addFAQ($data) ;
            redirect("Dashboard/faq") ;
        }
        public function cguAdding() {
            $data = [
                $this->input->post("cgu_type") ,
                $this->input->post("cgu_entete") ,
                $this->input->post("cgu_contenu") ,
            ] ;
            $this->front->addCGU($data) ;
            redirect("Dashboard/cgu") ;
        }
        public function cgvAdding() {
            $data = [
                $this->input->post("cgv_entete") ,
                $this->input->post("cgv_contenu") ,
            ] ;
            $this->front->addCGV($data) ;
            redirect("Dashboard/cgv") ;
        }
        public function modifFAQ($id) {
            $data = [
                $this->input->post("faq_type") ,
                $this->input->post("faq_question") ,
                $this->input->post("faq_contenu") ,
                $id ,
            ] ;
            $this->front->alterFAQ($data) ;
            redirect("Dashboard/faq") ;
        }
        public function modifCGU($id) {
            $data = [
                $this->input->post("cgu_type") ,
                $this->input->post("cgu_entete") ,
                $this->input->post("cgu_contenu") ,
                $id ,
            ] ;
            $this->front->alterCGU($data) ;
            redirect("Dashboard/cgu") ;
        }
        public function modifCGV($id) {
            $data = [
                $this->input->post("cgv_entete") ,
                $this->input->post("cgv_contenu") ,
                $id ,
            ] ;
            $this->front->alterCGV($data) ;
            redirect("Dashboard/cgv") ;
        }
        public function dropFAQ($id) {
            $this->front->deleteFAQ($id) ;
            redirect("Dashboard/faq") ;
        }
        public function dropCGU($id) {
            $this->front->deleteCGU($id) ;
            redirect("Dashboard/cgu") ;
        }
        public function dropCGV($id) {
            $this->front->deleteCGV($id) ;
            redirect("Dashboard/cgv") ;
        }
    }