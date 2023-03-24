<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('FrontModel', 'front');
		$this->load->model('UsersModel', 'users');
	}

	public function sousnav_result($type, $option, $page = 1)
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'sousnav_result' => true,
			'page' => (int)$page,
			'type' => $type,
			'option' => $option,
		];

		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/sousnav_result/index', $data);
		$this->load->view('accueil/footer');
	}
	public function favoris()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'favory_page' => true
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/user/favoris');
		$this->load->view('accueil/footer', $data);
	}

	public function profil()
	{

		$user = $this->users->getUsersById($_SESSION['users_id']) ;

		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'profil_page' => true,
			'users_info' => $user[0] ,
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/user/profil');
		$this->load->view('accueil/footer', $data);
	}

	public function detail_result($id)
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'detail_result' => true,
			'id' => $id,
		];
		$this->load->view('accueil/detail_result/header', $data);
		$this->load->view('accueil/detail_result/index', $data);
		$this->load->view('accueil/detail_result/footer');
	}


	public function index()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
		];
		$this->load->view('template-parts/header');
		$this->load->view('index', $data);
		$this->load->view('template-parts/footer');
	}

	public function loginUsers()
	{
		$this->load->view('login_utilisateur');
	}
	public function loginProfessionnel()
	{
		$this->load->view('login');
	}
	public function connectProfessionnel()
	{
		$this->load->view('inscription');
	}
	public function connectUsers()
	{
		$this->load->view('inscription_utilisateur');
	}
	public function faq()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'faq_page' => true,
			"faq" => $this->front->getFAQByType('particulier'),
			"su" => $this->front->getSU()
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/propos/faq');
		$this->load->view('accueil/footer', $data);
	}

	public function cgu()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'cg_page' => true,
			"cgu" => $this->front->getCGU(),
			"su" => $this->front->getSU()
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/propos/cgu');
		$this->load->view('accueil/footer', $data);
	}

	public function cgv()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'cg_page' => true
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/propos/cgv');
		$this->load->view('accueil/footer', $data);
	}
	public function confidentialite()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'propos_page' => true
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/propos/confidentialite');
		$this->load->view('accueil/footer', $data);
	}

	public function mentions()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'propos_page' => true
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/propos/mentions');
		$this->load->view('accueil/footer', $data);
	}

	public function aide()
	{
		$data = [
			'ccm' => $this->selectCcm(),
			'blogs' => $this->selectBlogs(),
			'categ' => $this->selectCategories(),
			'propos_page' => true
		];
		$this->load->view('accueil/header', $data);
		$this->load->view('accueil/propos/aide');
		$this->load->view('accueil/footer', $data);
	}
	public function showCGU($id)
	{
		$data = $this->front->getCGUById($id);
		$this->load->view('template-parts/header');
		$this->load->view('cgu', [
			'cgu' => $this->getParticulierCGU(),
			"id" => $id,
			'resultat' => $data[0]->cgu_contenu,

		]);
		$this->load->view('template-parts/footer');
	}
	public function showCGV($id)
	{
		$data = $this->front->getCGVById($id);
		$this->load->view('template-parts/header');
		$this->load->view('cgv', [
			'cgv' => $this->front->getCGV(),
			"id" => $id,
			'resultat' => $data[0]->cgv_contenu,

		]);
		$this->load->view('template-parts/footer');
	}

	public function selectCcm()
	{
		return $this->front->getCcm();
	}
	public function selectBlogs()
	{
		return $this->front->getBlogs();
	}
	public function selectCategories()
	{
		return $this->front->getAllCategories();
	}
	public function getParticulierFAQ()
	{
		return $this->front->getFAQByType("particulier");
	}
	public function getParticulierCGU()
	{
		return $this->front->getCGUByType("particulier");
	}
}
