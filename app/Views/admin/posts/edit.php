<form method="post">
    <?= $form->input('titre', 'Titre de l\'article'); ?>
    <?= $form->input('contenu', 'Contenu', ['type' => 'textarea']); ?>
    <?= $form->select('articles_category_id', 'Catégorie', $categories); ?>
    <?= $form->input('name', 'Image'), ['type' => 'upload']); ?>
    <button class="btn btn-primary">Sauvegarder</button>
</form>