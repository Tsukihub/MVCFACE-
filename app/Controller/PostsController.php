<?php

namespace App\Controller;

use Core\Controller\Controller;

class PostsController extends AppController{

    public function __construct(){
        parent::__construct();
        $this->loadModel('Post');
        $this->loadModel('Category');

    }

    public function index(){
        $posts = $this->Post->last();
        $category = $this->Category->categoryRelativeTo();
        $this->render('posts.index', compact('posts'), 'actions.index.side', compact('category'));
    }

    public function category(){
        $category = $this->Category->find($_GET['id']);
        if($categorie === false){
            $this->notFound();
        }
        $articles = $this->Post->lastByCategory($_GET['id']);
        $categories = $this->Category->categoryRelativeTo();
        $this->render('posts.category', compact('articles', 'categories', 'category'));
    }

    public function show(){
        $article = $this->Post->findWithCategory($_GET['id']);
        $this->render('posts.show', compact('article'));
    }

}