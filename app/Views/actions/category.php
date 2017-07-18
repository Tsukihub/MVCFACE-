<h1><?= $categorie->title ?></h1>

<div class="row">
    <div class="col-sm-8">
        <?php foreach ($actions as $action): ?>

            <h2><a href="<?= $action->url ?>"><?= $action->title; ?></a></h2>

            <p><em><?= $action->category; ?></em></p>

            <p><?= $action->content; ?></p>

        <?php endforeach; ?>

    </div>
