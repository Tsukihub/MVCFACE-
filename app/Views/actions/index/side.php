        <h1 class="titreSection col-md-12">Catégorie</h1>
          <section class="col-md-12 col-xs-12 presentation">
          <!--Palmarès-->
          <article id="Palmares">
        <ul>
        <?php foreach($category as $categorie): ?>
            <li><a href="<?= $categorie->url; ?>"><?= $categorie->titre; ?></a></li>
        <?php endforeach; ?>
        </ul>
        </article>
        </section>