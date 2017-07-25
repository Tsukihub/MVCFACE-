<h1 class="titreSection col-md-12" id="pagePalmares">Action</h1>
    <section class="col-md-12 col-xs-12 presentation">
     	<article class="articles">
            <div class="row">
            <?php if ($actions->actions_img_name):?>
              <img src="<?= $path->img_path.$actions->actions_img_name; ?>" class="col-md-7 col-xs-1 col-sm-7" alt="<?= $actions->actions_img_description; ?> " />

              <div class="col-md-5 col-xs-10 col-sm-12">
                <h2><?= $actions->title; ?></h2>
                <blockquote><p><?= $actions->accroche; ?></p></blockquote>
                <p class="actioncontent"><?= $actions->content; ?></p>
              </div>
              <?php endif ?>
              <?php if (!$actions->actions_img_name):?>
              <div class="col-md-12 col-xs-12 col-sm-12">
                <h2><?= $actions->title; ?></h2>
                <blockquote><p><?= $actions->accroche; ?></p></blockquote>
                <p class="actioncontent"><?= $actions->content; ?></p>
              </div>
              <?php endif ?>
            </div>
          </article>
          <p><em class="pull-right category"><a href="<?= $categorie->url ?>"><?= $categorie->titre ?></a></em></p>
    </section>




