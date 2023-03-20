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
        public function updatePassword($data) {
            DB::update('users')
                ->parametters(['users_motdepasse'])
                ->where("users_id","=")
                ->execute($data) ;
        }
        public function insertEtablissement($data) {
            DB::insert('etablissements')
                ->parametters(["etablissements_nom","etablissements_presentation","etablissements_adresse","etablissements_motcle","etablissements_longitude","etablissements_latitude","etablissements_codepostal","etablissements_departement","etablissements_region","etablissements_pays","etablissements_telephone","etablissements_email","etablissements_website","etablissements_fb","etablissements_insta","etablissements_photo","etablissements_activites","users_id","categories_id","etablissements_createdAt","etablissements_ville","sous_categories_id"])
                ->execute($data) ;
        }
        public function updateEtablissement($data) {
            DB::update('etablissements')
                ->parametters(["etablissements_nom","etablissements_presentation","etablissements_adresse","etablissements_motcle","etablissements_longitude","etablissements_latitude","etablissements_codepostal","etablissements_departement","etablissements_region","etablissements_pays","etablissements_telephone","etablissements_email","etablissements_website","etablissements_fb","etablissements_insta","etablissements_photo","etablissements_activites","users_id","categories_id","etablissements_createdAt","etablissements_ville","sous_categories_id"])
                ->where('etablissements_id',"=")
                ->execute($data) ;
        }
        public function deleteEtablissement($id) {
            DB::delete('etablissements')
                ->where("etablissements_id","=")
                ->execute([$id]) ;
        }

        public function getCategories_sous_categories($idCateg) {
            return DB::select('categories')
                      ->inner("sous_categories","categories_id")
                      ->where('sous_categories.categories_id',"=")
                      ->execute([$idCateg]) ;
        }


    }