<?php
namespace App\Table;

use Core\Table\Table;

class ActionTable extends Table{

    protected $table = "actions";

    /*
     * Récupère une action en liant la catégorie associée
     * @param $id int
     * @return \App\Entity\PostEntity
     */
    public function findActionsWithCategory($id){
        return $this->query("
            SELECT actions.id, actions.title, actions.content, categories.titre as categorie
            FROM actions
            LEFT JOIN categories ON category = categories.id
            WHERE actions.id = ?", [$id], true);
    }
}