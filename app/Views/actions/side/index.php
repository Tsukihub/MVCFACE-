        <ul>
        <?php foreach($category as $categorie): ?>
            <li><a href="<?= $categorie->url; ?>"><?= $categorie->titre; ?></a></li>
        <?php endforeach; ?>
        </ul>