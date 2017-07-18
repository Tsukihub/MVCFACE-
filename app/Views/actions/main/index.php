
		<?php foreach ($actions as $actions): ?>
			<h2><a href="<?= $actions->url ?>"><?= $actions->title; ?></a></h2>
			<p><?= $actions->extrait; ?></p>
		<?php endforeach; ?>
