<?php

    class UsersModel extends CI_Model
    {
        public function __construct()
        {
            parent::__construct() ;
        }
        public function getUsers() 
        {
            return DB::select("users")->execute(null) ;
        }
        public function getUsersById($id) 
        {
            return DB::select("users")
                       ->where('users_id',"=")
                       ->execute(array($id)) ;
        }

        public function getSpecificUsers($email,$mdp,$usertype) 
        {
            return DB::select("users")
                       ->where('users_email',"=")
                       ->and('users_motdepasse',"=")
                       ->and('users_type',"=")
                       ->execute(array($email,$mdp,$usertype)) ;
        }

        public function getSpecificUsersByEmail($email,$usertype)
        {
            return DB::select("users")
                       ->where('users_email',"=")
                       ->and('users_type',"=")
                       ->execute(array($email,$usertype)) ;
        }

        public function addUsers($fields,$datas) 
        {
            DB::insert("users")
                ->parametters($fields)
                ->execute($datas) ;
        }
        public function alterUsersParticuliers($data) {
            DB::update('users')
              ->parametters(['users_motdepasse'])
              ->where('users_id',"=")
              ->execute($data) ;
        }
        public function alterUsersParticuliersPhoto($data) {
            DB::update('users')
              ->parametters(['users_photo'])
              ->where('users_id',"=")
              ->execute($data) ;
        }
        
    }
