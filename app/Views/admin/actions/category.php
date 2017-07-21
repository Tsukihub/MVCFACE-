<h1 class="titreSection col-md-12" id="pagePalmares"><?= $categorie->titre ?></h1>
<section class="col-md-12 presentation">
          <!--Palmarès-->
          <article id="Palmares">

        <?php foreach ($action as $action): ?>

            <h2><a href="<?= $action->url ?>"><?= $action->title; ?></a></h2>

            <p><?= $action->content; ?></p>

        <?php endforeach; ?>
</article>
</section>

