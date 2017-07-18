<h1><?= $categorie->titre ?></h1>

        <?php foreach ($articles as $post): ?>

            <h2><a href="<?= $post->url ?>"><?= $post->titre; ?></a></h2>

            <p><em><?= $post->categorie; ?></em></p>

            <p><?= $post->extrait; ?></p>

        <?php endforeach; ?>
