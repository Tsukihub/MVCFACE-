<?php
namespace App\Table;

use Core\Table\Table;

class NewsTable extends Table{

    protected $table = 'news';

    /**
     * Récupère les derniers article
     * @return array
     */
    public function last(){
        return $this->query("
            SELECT * 
            FROM news 
            ORDER BY news.date DESC");
    }

}