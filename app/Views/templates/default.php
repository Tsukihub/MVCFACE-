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
        <a href="#" class="btn btn-default" role="button" id="boutonDon"> Soutenez-nous : Faire un <span>don</span></a>
      </div>
    </div>

    <div class="container">

    <header class="row">
                    <!--Logo Face-->
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <a href="index.html"><img src="../public/img/logo.svg" alt="logo Face territoire bourbonnais" id="logo" /></a>
                    </div>
                    <!--Barre de navigation-->
                    <nav class="navbar navbar-default col-md-10 col-sm-10 col-xs-12">
                        <div class="container-fluid">
                            <ul class="nav navbar-nav">
                  <!--Bouton-->
                  <li class="dropdown">
                    <a href="index.html" role="button">Accueil</a>
                  </li>   
                  <!--Bouton-->
                  <li class="dropdown">
                    <a href="index.php?p=actions.index">Actions</a>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Galerie<span class="caret"></span></a>
                        <ul class="dropdown-menu" id="menuGalerie">
                            <li><a href="galerie.html">Photos</a></li>
                            <li><a href="galerie.html#pageVideo">Médias</a></li>
                            <li><a href="galerie.html#CV video">CV Video</a></li>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">La Fabrik<span class="caret"></span></a>
                        <ul class="dropdown-menu sousMenu">
                            <li><a href="laFabrik.html">Présentation</a></li>
                            <li><a href="laFabrik.html#pageProjet">Projets</a></li>
                            <li><a href="apprenants.html">Les apprenants</a></li>
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
        <div class="col-md-8">
            <?= $content; ?>
        </div>
        <div class="col-md-4">
            <?= $sidecontent; ?>
        </div>
    </main>

    </div><!-- /.container -->


    <footer id="footer" class="row-fluid">
        <h4 class="text-center col-xs-12 col-md-12" onclick="affichageFooter('planSite');" id="titrePlanSite">Plan du site</h4>
            <div class="col-md-12 col-xs-12" id="planSite">
          <div class="row-fluid">
            <div class="col-md-2 col-sm-2">
              <h4><a href="index.html">Accueil</a></h4>
            </div>
            <div class="col-md-2 col-sm-2">
              <h4><a href="presentation.html">Présentation</a></h4>
              <h6><a href="presentation.html">Histoire</a></h6>
              <h6><a href="presentation.html#pagePalmares">Action</a></h6>
            </div>
            <div class="col-md-2 col-sm-2">
              <h4><a href="galerie.html">Galerie</a></h4>
              <h6><a href="galerie.html">Photos</a></h6>
              <h6><a href="galerie.html#pageVideo">Médias</a></h6>
            </div>
            <div class="col-md-2 col-sm-2">
              <h4><a href="partenariat.html">Partenariat</a></h4>
              <h6><a href="partenariat.html">Les entreprises</a></h6>
              <h6><a href="partenariat.html#pageAsso">Les associations</a></h6>
              <h6><a href="partenariat.html#pageInstitution">Les institutions</a></h6>
              <h6><a href="partenariat.html#pageParticulier">Les particuliers</a></h6>
            </div>
            <div class="col-md-2 col-sm-2">
              <h4><a href="laFabrik.html">La Fabrik</a></h4>
              <h6><a href="laFabrik.html">Présentation</a></h6>
              <h6><a href="laFabrik.html#pageActu">Les actualités</a></h6>
              <h6><a href="laFabrik.html#pageProjet">Projets</a></h6>
              <h6><a href="laFabrik.html#pagePhoto">Photos</a></h6>
              <h6><a href="apprenants.html">Les apprenants</a></h6>
            </div>
            <div class="col-md-2 col-sm-2">
              <h4><a href="contact.php">Contact</a></h4>
            </div>
          </div>
        </div>
        <div class="row" id="lienMentions">
                <p class="text-center"><a href="mentions.html">Mentions légales</a></p>
        </div>
    </footer>

     <script src="../public/js/jquery.js"></script>
    <script src="../public/js/bootstrap.js "></script>
    <script type="text/javascript" src="../public/js/script.js"></script>
</body>

</html>
