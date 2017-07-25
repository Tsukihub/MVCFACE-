        <h1 class="titreSectionside col-md-12 text-center">Domaines d'action</h1>
          <section class="col-md-12 col-xs-12 presentation">
          <!--Palmarès-->
          <article id="Palmares">
        <ul class='category'>
        <?php foreach($category as $categorie): ?>
            <li><a href="<?= $categorie->url; ?>"><?= $categorie->titre; ?></a></li>
        <?php endforeach; ?>
            <li><a href="index.php?p=actions.index">Toutes catégories</a></li>
        </ul>
        </article>
        </section>