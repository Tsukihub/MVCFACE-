<?php if ($post->actions_img_name):?>
<p>Image actuelle :</p>
              <img src="<?= $path->img_path.$post->actions_img_name; ?>" class="col-md-2 col-xs-1 col-sm-7" />
<p>Nom :</p>
<?= $post->actions_img_name ;?>
<?php endif ?>

<p>Image utilisées :</p>
<?php foreach($actions as $action): ?>
<?php if ($action->actions_img_name):?>
  <div>
              <img src="<?= $path->img_path.$action->actions_img_name; ?>" class="col-md-2 col-xs-1 col-sm-7" />
<p>Nom : <?= $action->actions_img_name ;?></p>

<p>actions liées à l'image: <?= $action->title ;?></p>
</div>
<?php endif; ?>
<?php endforeach; ?>
<p>Images disponibles</p>
<p> Copier le nom de l'image dans le champ : Nom de l'image à afficher pour utiliser pour cette action :<br></p>
<?php foreach($files as $files): ?>
  <div class='row'>
              <img src="<?= $path->img_path.$files; ?>" class="col-md-2 col-xs-1 col-sm-7" />
<p>Nom <?= $files;?></p>
<br>


</div>

<?php endforeach; ?>
<form method="post" enctype="multipart/form-data">
    <?=$formulaire->input('img','image',['type'=>'file']);?>
    <button class="btn btn-primary">Sauvegarder</button>
</form>