<?php
namespace App\Table;

use Core\Table\Table;

class CategoryTable extends Table{

    protected $table = "categories";

public function categoryRelativeTo(){
	if(isset($_GET['p'])){
	    $contentType = $_GET['p'];
		$contentType = explode('.', $contentType);
			if($contentType[0] == 'admin'){
		    $contentType = $contentType[1];
			} else{
		    $contentType = $contentType[0];
			}
		}else{
			$contentType = "posts";
		}
	        return $this->query("
            SELECT *
            FROM categories
            WHERE categories.contentType = ?", [$contentType]);
}

}