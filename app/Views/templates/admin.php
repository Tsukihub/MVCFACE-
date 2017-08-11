<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><?= App::getInstance()->title; ?></title>

    <!-- Bootstrap core CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../public/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

</head>

<body>

    <div class="row-fluid" id="barre">
      <div id="placementDon">
        <a href="index.php" class="btn btn-default" role="button" id="boutonDon"> Cliquez pour : retourner au <span>site</span></a>
    </div>
</div>

<div class="container">

    <header class="row">
        <!--Logo Face-->
        <div class="col-md-3 col-sm-3 col-xs-12 logoFace">
            <a href="index.php?p=admin.posts.index"><img src="../public/img/logo.svg" alt="logo Face territoire bourbonnais" id="logo" /></a>
        </div>
        <!--Barre de navigation-->
        <nav class="navbar navbar-default col-md-9 col-sm-10 col-xs-9">
            <div class="container-fluid">
                <ul class="nav navbar-nav">

                  <!--Bouton-->
                  <li class="dropdown">
                    <a href="index.php?p=admin.actions.index">Actions</a>
                </li>





                <!--Bouton-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Présentation<span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Histoire</a></li>
                        <li><a href="#pagePalmares">Action</a></li>
                    </ul>
                </li>
                <!--Bouton-->
                <li class="dropdown">
                    <a href="index.php?p=admin.news.index">Presse</a>
                </li>
                <!--Bouton-->
                <!--Bouton-->
                <li class="dropdown">
                <a href="index.php?p=admin.presentations.index" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Qui sommes nous?<span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu">
                    <li><a href="index.php?p=admin.presentations.index">Face Territoire Bourbonnais</a></li>
                    <li><a href="#ancrepartenaires">Partenaires</a></li>
                </ul>
            </li>
            <!--Bouton-->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Partenariat<span class="caret"></span></a>
                <ul class="dropdown-menu sousMenu">
                    <li><a href="partenariat.html">Les entreprises</a></li>
                    <li><a href="partenariat.html#pageAsso">Les associations</a></li>
                    <li><a href="partenariat.html#pageInstitution">Les institutions</a></li>
                    <li><a href="partenariat.html#pageParticulier">Les particuliers</a></li>
                </ul>
            </li>

            <!--Bouton-->
            <li class="dropdown">
                <a href="contact.php" role="button">Contact</a>
            </li>
        </ul>
    </div>
</nav>
</header>






<main class="row">
    <div class="col-md-6">
        <?= $content; ?>
    </div>
    <div class="col-md-6">
        <?= $sidecontent; ?>
    </div>
</main>

</div><!-- /.container -->


<script src="../public/js/jquery.js"></script>
<script src="../public/js/bootstrap.js "></script>
<script type="text/javascript" src="../public/js/script.js"></script>
</body>

</html>
