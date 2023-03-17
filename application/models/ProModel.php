<?php

    class ProModel extends CI_Model {
        public function __construct()
        {
            parent::__construct() ;
        }
        public function getProUser() {
            return DB::select('users')
                       ->where('users_type',"=")
                       ->execute(['professionnel']) ;
        }
        public function getProUserById($id) {
            return DB::select('users')
                       ->where('users_type',"=")
                       ->and('users_id', "=")
                       ->execute(['professionnel',$id]) ;
        }
        public function updateProUser($data) {
            DB::update('users')
                ->parametters(['users_nom','users_prenoms','users_email','users_telephone','users_photo'])
                ->where("users_id","=")
                ->execute($data) ;
        }

    }