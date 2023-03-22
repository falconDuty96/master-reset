<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('FrontModel','front') ;
	}
	
	public function sousnav_result()
	{
		$data = [
			'ccm' => $this->selectCcm() ,
			'blogs' => $this->selectBlogs() ,
			'categ' => $this->selectCategories() ,
			'sousnav_result' => true ,
			'sousnav_data'=> $this->front->getEtablissement() ,
		] ;
		$this->load->view('accueil/header', $data) ;
		$this->load->view('accueil/sousnav_result/index',$data) ;
		$this->load->view('accueil/footer') ;
	}

	
	public function detail_result()
	{
		$data = [
			'ccm' => $this->selectCcm() ,
			'blogs' => $this->selectBlogs() ,
			'categ' => $this->selectCategories() ,
			'detail_result' => true
		] ;
		$this->load->view('accueil/header', $data) ;
		$this->load->view('accueil/detail_result/index',$data) ;
		$this->load->view('accueil/footer') ;
	}


	public function index()
	{
		$data = [
			'ccm' => $this->selectCcm() ,
			'blogs' => $this->selectBlogs() ,
			'categ' => $this->selectCategories() ,
		] ;
		$this->load->view('template-parts/header') ;
		$this->load->view('index',$data) ;
		$this->load->view('template-parts/footer') ;
	}

	public function loginUsers() {
		$this->load->view('login_utilisateur') ;
	}
	public function loginProfessionnel() {
		$this->load->view('login') ;
	}
	public function connectProfessionnel() {
		$this->load->view('inscription') ;
	}
	public function connectUsers() {
		$this->load->view('inscription_utilisateur') ;
	}
	public function faq() {
		$this->load->view('template-parts/header') ;
		$this->load->view('faq', ['faq' => $this->getParticulierFAQ()]) ;
		$this->load->view('template-parts/footer') ;
	}
	public function cgu() {
		$data = $this->getParticulierCGU() ;
		$this->load->view('template-parts/header') ;
		$this->load->view('cgu', [
			'cgu' => $this->getParticulierCGU() ,
			"id" => 0 ,
			'resultat' => $data[0]->cgu_contenu ,
		
		]) ;
		$this->load->view('template-parts/footer') ;
	}
	public function cgv() {
		$data = $this->front->getCGV() ;
		$this->load->view('template-parts/header') ;
		$this->load->view('cgv', [
			'cgv' => $this->front->getCGV() ,
			"id" => 0 ,
			'resultat' => $data[0]->cgv_contenu ,
		
		]) ;
		$this->load->view('template-parts/footer') ;
	}
	public function showCGU($id) {
		$data = $this->front->getCGUById($id) ;
		$this->load->view('template-parts/header') ;
		$this->load->view('cgu', [
			'cgu' => $this->getParticulierCGU() ,
			"id" => $id ,
			'resultat' => $data[0]->cgu_contenu ,
		
		]) ;
		$this->load->view('template-parts/footer') ;
	}
	public function showCGV($id) {
		$data = $this->front->getCGVById($id) ;
		$this->load->view('template-parts/header') ;
		$this->load->view('cgv', [
			'cgv' => $this->front->getCGV() ,
			"id" => $id ,
			'resultat' => $data[0]->cgv_contenu ,
		
		]) ;
		$this->load->view('template-parts/footer') ;
	}

	public function selectCcm() {
		return $this->front->getCcm() ;
	}
	public function selectBlogs() {
		return $this->front->getBlogs() ;
	}
	public function selectCategories() {
		return $this->front->getAllCategories() ;
	}
	public function getParticulierFAQ() {
		return $this->front->getFAQByType("particulier") ;
	}
	public function getParticulierCGU() {
		return $this->front->getCGUByType("particulier") ;
	}
	
	
}

