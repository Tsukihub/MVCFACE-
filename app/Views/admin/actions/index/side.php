        <h1 class="titreSectionside col-md-12">Gestion des Catégories d'actions</h1>
          <section class="col-md-12 col-xs-12 presentation">
          <!--Palmarès-->
          <article id="Palmares">
        <ul class='category'>
        <?php foreach($actioncategory as $categorie): ?>
            <li><a href="<?= $categorie->url; ?>"><?= $categorie->titre; ?></a></li>
        <?php endforeach; ?>
        </ul>
        </article>
        </section>