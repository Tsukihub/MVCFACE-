  <h1 class="col-xs-12 titlenews text-center">Face est dans les médias</h1>
  <section class="col-xs-12" id="sectionApprenant">
    <div class="row">
     <!--Profil de Andréa Lopez-->
     <?php foreach ($news as $news): ?> 
      <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="well well-sm">
          <div class="row" id="cadre">
            
            <h4><?= $news->title ?></h4><br/></h4>
            <div class="col-md-5">
            <h5><?= $news->fromwhere ?></h5>
            <small>
              <?= $news->newsdatefr; ?>
              <!--         <i class="glyphicon glyphicon-map-marker"></i> -->

            </small>
          </div>
          <?php if($news->link!==''): ?>
          <a class="col-md-7" href="<?= $news->link; ?>" target="blank"><button type="button" class="btn btn-default boutonMobile pull-right">Voir l'article</button></a>
        <?php else : ?>
           <div class="col-md-7"  ><div class="newspaper pull-right">Presse papier</div></div>
        <?php endif ?>

        </div>
      </div>
    </div>
  <?php endforeach ?>
</div>
</section>


