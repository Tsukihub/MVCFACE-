  <h1 class="col-xs-12 titreSection"><strong>Face dans les medias</strong></h1>
      <section class="col-xs-12" id="sectionApprenant">
        <div class="row">
         <!--Profil de Andréa Lopez-->
         <?php foreach ($news as $news): ?> 
        <div class="col-xs-6 col-sm-4 col-md-4">
          <div class="well well-sm">
            <div class="row" id="cadre">
                <h4 class="text-center"><?= $news->title ?></h4><br/><?= $news->fromwhere ?></h4>
                <small>
                  <cite title="Moulins, france"><?= $news->date; ?>
                    <i class="glyphicon glyphicon-map-marker"></i>
                  </cite>
                </small>
                <a href="<?= $news->link; ?>" ><button type="button" class="btn btn-default boutonMobile pull-right">lire</button></a>
             
            </div>
          </div>
        </div>
      <?php endforeach ?>
        </div>
        </section>
