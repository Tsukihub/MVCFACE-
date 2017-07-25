<?php if ($post->actions_img_name):?>
<p>Image actuelle :</p>
              <img src="<?= $path->img_path.$post->actions_img_name; ?>" class="col-md-2 col-xs-1 col-sm-7" />
<p>Nom :</p>
<?= $post->actions_img_name ;?>
<?php endif ?>

<p>Image disponibles :</p>
<?php foreach($actions as $action): ?>
<?php if ($action->actions_img_name):?>
  <div>
              <img src="<?= $path->img_path.$action->actions_img_name; ?>" class="col-md-2 col-xs-1 col-sm-7" />
<p>Nom : <?= $action->actions_img_name ;?></p>

<p>actions liées à l'image: <?= $action->title ;?></p>
</div>
<?php endif; ?>
<?php endforeach; ?>