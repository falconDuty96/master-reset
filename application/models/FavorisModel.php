<?php
class FavorisModel extends SuperModel {

    protected $table = "favoris";

    public function delete($id)
    {
        DB::delete("favoris")
            ->where("favoris_id", "=")
            ->execute([$id]);
    }

}