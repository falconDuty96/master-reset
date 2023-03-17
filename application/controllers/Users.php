<?php
 
defined('BASEPATH') OR exit('No direct script access allowed');
class Users extends CI_Controller {
	public function __construct() 
	{
		parent::__construct();
		$this->load->model('UsersModel','users') ;
	}

	public function ConnectUsers() {
		$this->form_validation->set_error_delimiters('<p class="text-danger" style="font-weight: bold;font-size: 12px;">', '</p>');
		$this->form_validation->set_rules('users_email', 'users_email', 'required',array('required' => 'Ce champ est obligatoire')) ;
		$this->form_validation->set_rules('users_motdepasse', 'users_motdepasse', 'required',array('required' => 'Ce champ est obligatoire')) ;
		if ($this->form_validation->run() == FALSE)
		{
			
			if($this->input->post('users_type') == "particulier") {
				$this->load->view('login_utilisateur',array("login_data" => $_POST)) ;
			}
			else if($this->input->post('users_type') == "professionnel") {
				$this->load->view('login',array("login_data" => $_POST)) ;
			}
		}
		else
		{
			$infos = $this->users->getSpecificUsers($this->input->post('users_email'),sha1($this->input->post('users_motdepasse')),$this->input->post("users_type")) ;
			if(count($infos) == 0) {
				
				if($this->input->post('users_type') == "particulier") {
					$this->load->view('login_utilisateur',array(
						"message" => "Veuillez vérifier l'email et/ou le mot de passe",
						"error" => true ,
					)) ;
				}
				else if($this->input->post('users_type') == "professionnel") {
					$this->load->view('login',array(
						"message" => "Veuillez vérifier l'email et/ou le mot de passe",
						"error" => true ,
					)) ;
				}
			}
			else {
				$_SESSION['connected'] = true ;
				$_SESSION['users_nom'] = $infos[0]->users_nom ;
				$_SESSION['users_prenoms'] = $infos[0]->users_prenoms ;
				$_SESSION['users_email'] = $infos[0]->users_email ;
				$_SESSION['users_id'] = $infos[0]->users_id ;
				if($this->input->post('users_type') == "particulier") {
					$_SESSION['particulier'] = true ;
				}
				else if($this->input->post('users_type') == "professionnel") {
					$_SESSION['particulier'] = false ;
				}
				redirect('pro/') ;
			}
		}
	}
	
	public function insertUsers() {
		$this->form_validation->set_error_delimiters('<p class="text-danger" style="font-weight: bold;font-size: 12px;">', '</p>');
		
		$this->form_validation->set_rules('users_nom', 'users_nom', 'required',array('required' => 'Ce champ est obligatoire')) ;
		$this->form_validation->set_rules('users_prenoms', 'users_prenoms', 'required',array('required' => 'Ce champ est obligatoire')) ;
		$this->form_validation->set_rules('users_email', 'users_email', 'required',array('required' => 'Ce champ est obligatoire')) ;
		$this->form_validation->set_rules('users_telephone', 'users_telephone', 'required',array('required' => 'Ce champ est obligatoire')) ;
		$this->form_validation->set_rules('users_motdepasse', 'users_motdepasse', 'required',array('required' => 'Ce champ est obligatoire')) ;
		$this->form_validation->set_rules('users_type', 'users_type', 'required') ;
		$fields = ['users_nom' , 'users_prenoms', 'users_email' , 'users_telephone' , 'users_motdepasse' ,'users_type', 'users_joinedAt'] ;
		$datas = [
			$this->input->post('users_nom'),
			$this->input->post('users_prenoms'),
			$this->input->post('users_email'),
			$this->input->post('users_telephone'),
			sha1($this->input->post('users_motdepasse')),
			$this->input->post('users_type'),
			date('Y-m-m-d')
		] ;

		if ($this->form_validation->run() == FALSE)
		{
			if($this->input->post('users_type') == "particulier") {
				$this->load->view('inscription_utilisateur',array("inscription_data" => $_POST)) ;
			}
			else if($this->input->post('users_type') == "professionnel") {
				$this->load->view('inscription',array("inscription_data" => $_POST)) ;
			}
			
		}
		else
		{
			$infos = $this->users->getSpecificUsersByEmail($this->input->post('users_email'),$this->input->post("users_type")) ;
			
			if(count($infos) > 0) {
				
				if($this->input->post('users_type') == "particulier") {
					$this->load->view('inscription_utilisateur',array(
						"message" => 'Cet utilisateur existe déjà',
						"error" => true ,
					)) ;
				}
				else if($this->input->post('users_type') == "professionnel") {
					$this->load->view('inscription',array(
						"message" => 'Cet utilisateur existe déjà',
						"error" => true ,
					)) ;
				}
			}
			else {

				$_SESSION['connected'] = true ;
				$_SESSION['users_nom'] = $this->input->post('users_nom') ;
				$_SESSION['users_prenoms'] = $this->input->post('users_prenoms') ;
				$_SESSION['users_email'] = $this->input->post('users_email') ;
				if($this->input->post('users_type') == "particulier") {
					$_SESSION['particulier'] = true ;
				}
				else if($this->input->post('users_type') == "professionnel") {
					$_SESSION['particulier'] = false ;
				}
				$d = $this->users->getSpecificUsersByEmail($this->input->post('users_email'),$this->input->post("users_type")) ;
				$_SESSION['users_id'] = $d[0]->users_id ;
				$this->users->addUsers($fields, $datas) ;
				redirect('pro/') ;
			}
		}
	}

	public function deconnectUsers() {
		session_destroy();
		redirect('Home/') ;
	}
}

