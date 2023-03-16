<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('FrontModel','front') ;
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

	public function selectCcm() {
		return $this->front->getCcm() ;
	}
	public function selectBlogs() {
		return $this->front->getBlogs() ;
	}
	public function selectCategories() {
		return $this->front->getAllCategories() ;
	}
	
	
}

