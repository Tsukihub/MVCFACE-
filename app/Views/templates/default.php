<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../public/img/favicon.png">

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
      <div class="col-md-3 col-sm-3 col-xs-12 logoFace">
        <a href="index.php?p=posts.index"><img src="../public/img/logo.svg" alt="logo Face territoire bourbonnais" id="logo" /></a>
      </div>
      <!--Barre de navigation-->
      <nav class="navbar navbar-default col-md-9 col-sm-10 col-xs-9">
        <div class="container-fluid">
          <ul class="nav navbar-nav">
            
            <!--Bouton-->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Qui sommes nous?<span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <li><a href="#">Face Territoire Bourbonnais</a></li>
                <li><a href="#ancrepartenaires">Partenaires</a></li>
              </ul>
            </li>
            <!--Bouton-->
            <li class="dropdown">
              <a href="index.php?p=actions.index">Actions</a>
            </li>






            <!--Bouton-->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Presse</a>
<!--           <ul class="dropdown-menu" id="menuGalerie">
                <li><a href="galerie.html">Photos</a></li>
                <li><a href="galerie.html#pageVideo">Médias</a></li>
                <li><a href="galerie.html#CV video">CV Video</a></li>
              </ul> -->
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

<!-- 

https://www.solodev.com/blog/web-design/adding-an-infinite-client-logo-carousel-to-your-website.stml -->



<div class="row-fluid footerext">

<h3 class="text-center" id='ancrepartenaires'>Nos partenaires</h3>
</div>
<div id=partners-slider>
   <section class="customer-logos slider" >
   <?php $files = array_slice(scandir('../public/img/partenaires'), 2);
    foreach($files as $logo){
  
    echo ("<div class='slide'><img style='height: 70px;'' src='../public/img/partenaires/$logo' ></div>");
  }
    ?><!-- 

    <div class="slide"><img style="height: 50px;" src="../public/img/actions/AE.png"></div>
    <div class="slide"><img style="height: 50px;" src="../public/img/actions/petitvelorouge.png"></div>
    <div class="slide"><img style="height: 50px;" src="../public/img/actions/double.png"></div>
    <div class="slide"><img style="height: 50px;" src="../public/img/partenaires/cciallier.jpg"></div>
    <div class="slide"><img style="height: 50px;" src="../public/img/partenaires/cciallier.jpg"></div>
    <div class="slide"><img style="height: 50px;" src="../public/img/partenaires/cciallier.jpg"></div>
    <div class="slide"><img style="height: 50px;" src="../public/img/partenaires/cciallier.jpg"></div> -->


  </section>
</div>
<div class="row-fluid footer">

  <a href="#placementDon"><div style="background-color: #679FA6; height: 30px; width: 30px; padding: 8px; margin : 8px;" class="pull-right text-center">^</div></a>
  <div id="plan-site">
    <h4 class="text-center col-xs-12 col-md-12" onclick="affichageFooter('planSite');" id="titrePlanSite">Plan du site</h4>
    <div class="col-md-12 col-xs-12" id="planSite">
      <div class="row-fluid planDuSite">
          <div class="col-md-1 col-sm-1">
        
        </div>
        <div class="col-md-2 col-sm-2">
          <h4><a href="index.html">Accueil</a></h4>
        </div>
        <div class="col-md-2 col-sm-2">
          <h4><a href="presentation.html">Qui sommes nous?</a></h4>
          <h6><a href="presentation.html">Face Territoire Bourbonnais</a></h6>
          <h6><a href="presentation.html#pagePalmares">Fondation Face</a></h6>
          <h6><a href="#ancrepartenaires">Partenaires</a></h6>
        </div>
        <div class="col-md-2 col-sm-2">
          <h4><a href="galerie.html">Actions</a></h4>

        </div>
        <div class="col-md-2 col-sm-2">
          <h4><a href="partenariat.html">Presse</a></h4>
        </div>
        <div class="col-md-2 col-sm-2">
          <h4><a href="laFabrik.html">Contact</a></h4>
        </div>
      </div>
    </div>
    <div class="row" id="lienMentions">
      <p class="text-center"><a href="mentions.html">Mentions légales</a></p>
    </div>

    </div>
  </footer>

  <script src="../public/js/jquery.js"></script>
  <script src="../public/js/bootstrap.js "></script>
  <script type="text/javascript" src="../public/js/script.js"></script>



  <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>






</body>

</html>
