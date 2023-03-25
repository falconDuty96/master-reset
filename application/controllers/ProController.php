<?php

class ProController extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if(!$this->session->userdata("connected"))
        {
            redirect(base_url("home/loginProfessionnel"));
            exit();
        }
        if($this->session->userdata("users_type") !== "professionnel")
        {
            redirect(base_url("home/loginProfessionnel"));
            exit();
        }
    }
}