<?php

class AbonnementsModel extends SuperModel{
    protected $table = "abonnements";

    public function findByUser($userId)
    {
        return DB::customQuery("SELECT * FROM {$this->table}
                    INNER JOIN etablissements ON etablissements.etablissements_id={$this->table}.etablissements_id
                    WHERE {$this->table}.users_id=?
                    ORDER BY abonnements_id DESC", [$userId]);
    }
    public function findOneById($id)
    {
        return DB::customQuery("SELECT * FROM {$this->table}
                    INNER JOIN etablissements ON etablissements.etablissements_id={$this->table}.etablissements_id
                    WHERE {$this->table}.abonnements_id=?", [$id], false);
    }
    public function update($fields, $values)
    {
        DB::update("abonnements")
            ->setParametters($fields)
            ->where("abonnements_id","=")
            ->execute($values);
    }
    public function delete($id)
    {
        DB::delete("abonnements")
            ->where("abonnements_id","=")
            ->execute([$id]);
    }
}