<?php

    class FrontModel extends CI_Model
    {
        public function __construct()
        {
            parent::__construct() ;
        }
        public function getCcm() 
        {
            return DB::select("ccm")->execute(null) ;
        }
        public function modifCcm($data) 
        {
            return DB::update("ccm")->parametters(['ccm_entete','ccm_texte'])->where('ccm_id','=')->execute($data) ;
        }
        public function getBlogs() 
        {
            return DB::select("blogs")->execute(null) ;
        }
        public function getBlogsById($id) {
            return DB::select('blogs')->where('blogs_id','=')->execute([$id]) ;
        }
        public function insertBlogs($data) {
            DB::insert("blogs")
                ->parametters(['blogs_presentation','blogs_lien','blogs_image','blogs_createdAt'])
                ->execute($data) ;
        }
        public function deleteBlogs($id) {
            DB::delete('blogs')
                ->where('blogs_id','=')
                ->execute(array($id)) ;
        }
        public function udpateBlogs($data) {
            DB::update('blogs')
                ->parametters(['blogs_presentation','blogs_lien','blogs_image'])
                ->where('blogs_id', "=")
                ->execute($data) ;
        }
        public function getAllCategories() {
            return DB::select('categories')
                       ->execute(null) ;
        }
        public function getCategoriesById($id) {
            return DB::select('categories')->where('categories_id','=')->execute([$id]) ;
        }
        public function modifCategories($data) {
            DB::update('categories')
                ->parametters(['categories_nom','categories_texte','categories_image1','categories_image2'])
                ->where('categories_id','=')
                ->execute($data) ;
        }
        public function showFAQ() {

        }
        public function showCGU() {

        }
        public function getSU() {
            return DB::select('superuser')->execute(null) ;
        }
        public function updateSU($data) {
            DB::update('superuser')
                ->parametters(['superuser_pseudo','superuser_motdepasse'])
                ->where('superuser_id','=') 
                ->execute($data) ;
        } 
        public function getSUSpecified($data) {
            return DB::select('superuser')
                       ->where('superuser_pseudo', '=')
                       ->and('superuser_motdepasse', '=')
                       ->execute($data) ;
        }
    }
