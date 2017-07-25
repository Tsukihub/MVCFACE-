<?php

namespace App\Controller\Admin;

use Core\HTML\BootstrapForm;

class ActionsController extends AppController{

    public function __construct(){
        parent::__construct();
        $this->loadModel('Action');
        
 
    }

    public function index(){
        $actions = $this->Action->all();
        $this->render('admin.actions.index', compact('actions'));
    }

    public function add(){
        if (!empty($_POST)) {
            $result = $this->Action->create([
                'title' => $_POST['title'],
                'accroche' => $_POST['accroche'],
                'content' => $_POST['content'],
                'actions_category_id' => $_POST['actions_category_id']
            ]);
            if($result){
                return $this->index();
            }
        }
        $this->loadModel('Category');
        $categories = $this->Category->extract('id', 'titre');
        $form = new BootstrapForm($_POST);
        $this->render('admin.actions.edit', compact('categories', 'form'));
    }

    public function edit(){
        if (!empty($_POST)) {
            $result = $this->Action->update($_GET['id'], [
                'title' => $_POST['title'],
                'accroche' => $_POST['accroche'],
                'content' => $_POST['content'],
                'actions_img_name' => $_POST['actions_img_name'],
                'actions_category_id' => $_POST['actions_category_id']
            ]);
            if($result){
                return $this->index();
            }
        }
        $post = $this->Action->find($_GET['id']);
        $this->loadModel('Category');
        $actions = $this->Action->all();
        $this->loadModel('Img_path');
        $path = $this->Img_path->findPath();
        $categories = $this->Category->extract('id', 'titre');
        $form = new BootstrapForm($post);
        $this->render('admin.actions.edit.main', compact('categories', 'form'), 'admin.actions.edit.side', compact('post', 'actions', 'path'));



        //
        // $action = $this->Action->find($_GET['id']);
        // $this->render('admin.actions.index.main', compact('actions'), 'admin.actions.index.side', compact('action', 'actions', 'path'));
    }

    public function delete(){
        if (!empty($_POST)) {
            $result = $this->Action->delete($_POST['id']);
            return $this->index();
        }
    }

}