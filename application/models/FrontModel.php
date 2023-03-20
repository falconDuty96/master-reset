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
                       ->order(['categories_id' => "ASC"])
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
        public function addCGU($data) {
            DB::insert('cgu')
                ->parametters(['cgu_type','cgu_entete','cgu_contenu'])
                ->execute($data) ;
        }
        public function addCGV($data) {
            DB::insert('cgv')
                ->parametters(['cgv_entete','cgv_contenu'])
                ->execute($data) ;
        }
        public function addFAQ($data) {
            DB::insert('faq')
                ->parametters(['faq_type','faq_question','faq_contenu'])
                ->execute($data) ;
        }
        public function alterFAQ($data) {
            DB::update('faq')
                ->parametters(['faq_type','faq_question','faq_contenu'])
                ->where('faq_id','=')
                ->execute($data) ;
        }
        public function alterCGU($data) {
            DB::update('cgu')
                ->parametters(['cgu_type','cgu_entete','cgu_contenu'])
                ->where('cgu_id','=')
                ->execute($data) ;
        }
        public function alterCGV($data) {
            DB::update('cgv')
                ->parametters(['cgv_entete','cgv_contenu'])
                ->where('cgv_id','=')
                ->execute($data) ;
        }
        public function getCGU() {
            return DB::select("cgu")
                       ->order(["cgu_id" => "ASC"])
                       ->execute(null) ;
        }
        public function getCGUById($id) {
            return DB::select("cgu")
                       ->where("cgu_id","=")
                       ->execute([$id]) ;
        }
        public function getCGUByType($type) {
            return DB::select("cgu")
                       ->where("cgu_type","=")
                       ->order(["cgu_id" => "ASC"])
                       ->execute([$type]) ;
        }
        public function getCGV() {
            return DB::select("cgv")
                       ->order(["cgv_id" => "ASC"])
                       ->execute(null) ;
        }
        public function getCGVById($id) {
            return DB::select("cgv")
                       ->where("cgv_id","=")
                       ->execute([$id]) ;
        }
        public function getFAQByType($type) {
            return DB::select("faq")
                       ->where("faq_type","=")
                       ->order(["faq_id" => "ASC"])
                       ->execute([$type]) ;
        }
        public function getFAQByTypeWithID($id,$type) {
            return DB::select("faq")
                       ->where("faq_type","=")
                       ->and("faq_id","=")
                       ->order(["faq_id" => "ASC"])
                       ->execute([$id,$type]) ;
        }
        public function getFAQ() {
            return DB::select("faq")
                       ->order(["faq_id" => "ASC"])
                       ->execute(null) ;
        }
        
        public function getFAQById($id) {
            return DB::select("faq")
                       ->where("faq_id","=")
                       ->execute([$id]) ;
        }
        public function deleteFAQ($id) {
            return DB::delete("faq")
                       ->where("faq_id","=")
                       ->execute([$id]) ;
        }
        public function deleteCGU($id) {
            return DB::delete("cgu")
                       ->where("cgu_id","=")
                       ->execute([$id]) ;
        }
        public function deleteCGV($id) {
            return DB::delete("cgv")
                       ->where("cgv_id","=")
                       ->execute([$id]) ;
        }
        
    }
