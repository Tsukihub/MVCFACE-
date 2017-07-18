        <h1 class="titreSection col-md-12" id="pagePalmares">Action</h1>
          <section class="col-md-12 col-xs-12 presentation">
          <!--Palmarès-->
          <article id="Palmares">
		<?php foreach ($actions as $actions): ?>
			<h2><a href="<?= $actions->url ?>"><?= $actions->title; ?></a></h2>
			<p><?= $actions->extrait; ?></p>
		<?php endforeach; ?>
    </article>
        </section>