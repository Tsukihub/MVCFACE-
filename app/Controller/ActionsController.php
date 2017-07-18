<?php

namespace App\Controller;

use Core\Controller\Controller;
use \App;

class ActionsController extends AppController{
    public function __construct(){
        parent::__construct();
        $this->loadModel('Action');
        $this->loadModel('Category');
    }
    public function index(){

		$category= $this->Category->categoryRelativeTo();
        $actions = $this->Action->all();
        $this->render('actions.index.main', compact('actions'), 'actions.index.side', compact('category'));

    }
   public function show(){
        $actions = $this->Action->find($_GET['id']);
        $category= $this->Category->categoryRelativeTo();
        $this->render('actions.show', compact('actions'), 'actions.index.side', compact('category'));
    }
   public function category(){
        $categorie = $this->Category->find($_GET['id']);
        if($category === false){
            $this->notFound();
        }
        $actions = $this->Action->findActionsWithCategory($_GET['id']);
        $category = $this->Category->categoryRelativeTo();
        $this->render('actions.category', compact('actions','categorie'), 'actions.index.side', compact('category'));
    }
}