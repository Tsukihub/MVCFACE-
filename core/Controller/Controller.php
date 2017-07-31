<?php

namespace Core\Controller;

class Controller{

    protected $viewPath;
    protected $template;

    // protected function render($view, $variables = []){
    //     ob_start();
    //     extract($variables);
    //     require($this->viewPath . str_replace('.', '/', $view) . '.php');
    //     $content = ob_get_clean();
    //     require($this->viewPath . 'templates/' . $this->template . '.php');
    // }
    protected function render($mainview, $mainvariables = [], $sideview ='defaultsidecontent', $sidevariables = []){
        ob_start();
        extract($mainvariables);
        require($this->viewPath . str_replace('.', '/', $mainview) . '.php');
        $content = ob_get_clean();
        ob_start();
        extract($sidevariables);
        require($this->viewPath . str_replace('.', '/', $sideview) . '.php');
        $sidecontent = ob_get_clean();
        require($this->viewPath . 'templates/' . $this->template . '.php');

    }
    protected function forbidden(){
        header('HTTP/1.0 403 Forbidden');
        die('Acces interdit');
    }

    protected function notFound(){
        header('HTTP/1.0 404 Not Found');
        die('Page introuvable');
    }

public function upload($way='public/img'){
    $dir = ROOT.$way;
    echo ($dir);
    // Check if the form was submitted


    if(isset($_FILES["img"]) && $_FILES["img"]["error"] == 0){

        $allowed = array("jpg" => "image/jpg", "jpeg" => "image/jpeg", "gif" => "image/gif", "png" => "image/png");

        $filename = $_FILES["img"]["name"];

        $filetype = $_FILES["img"]["type"];

        $filesize = $_FILES["img"]["size"];

    

        // Verify file extension

        $ext = pathinfo($filename, PATHINFO_EXTENSION);

        if(!array_key_exists($ext, $allowed)) die("Error: Please select a valid file format.");

    

        // Verify file size - 5MB maximum

        $maxsize = 5 * 1024 * 1024;

        if($filesize > $maxsize) die("Error: File size is larger than the allowed limit.");

    

        // Verify MYME type of the file

        if(in_array($filetype, $allowed)){

            // Check whether file exists before uploading it

            if(file_exists($dir.$_FILES["img"]["name"])){

                echo $_FILES["img"]["name"] . " is already exists.";

            } else{

                move_uploaded_file($_FILES["img"]["tmp_name"], $dir."/" . $_FILES["img"]["name"]);

                echo "Your file was uploaded successfully.";

            } 

        } else{

            echo "Error: There was a problem uploading your file. Please try again."; 

        }

    } else{

        echo "Error: " . $_FILES["img"]["error"];

    }

}

}
