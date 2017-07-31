<form method="post">
    <?= $form->input('title', 'Titre de l\'action'); ?>
    <?= $form->input('accroche', 'Accroche', ['type' => 'textarea']); ?>
    <?= $form->input('content', 'Contenu', ['type' => 'textarea']); ?>
    <?php if(isset($_GET['img'])): ?>
    <?= $form->input('actions_img_name', 'Nom de l\'image à afficher', ['type' => 'text'], $_GET['img']); ?>
    <?php endif; ?>
    <?php if(!isset($_GET['img'])): ?>
    <?= $form->input('actions_img_name', 'Nom de l\'image à afficher'); ?>
     <?php endif; ?>
    <p>Copiez le nom de l'image à utiliser si celle-ci a déja été utilisée.</p>
    <?= $form->select('actions_category_id', 'Catégorie', $categories); ?>
    <button class="btn btn-primary">Sauvegarder</button>
</form>