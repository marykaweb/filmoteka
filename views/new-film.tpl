<?php if ($resaultSuccess != '') { ?>
	<div class="info-success"><?=$resaultSuccess?></div>
<?php } ?>

<?php if ($resaultInfo != '') { ?>
	<div class="info-notification"><?=$resaultInfo?></div>
<?php } ?>

<?php if ($resaultError != '') { ?>
	<div class="error"><?=$resaultError?></div>
<?php } ?>

<h1 class="title-1">Добавить новый фильм</h1>

<div class="panel-holder mt-30 mb-40">
        <div class="title-4 mt-0">Добавить фильм</div>
        <form action="new.php" method="POST">
          <?php
	          if ( !empty($errors) ) {
	            foreach ($errors as $key => $value) {
	              echo "<div class='error'>$value</div>";
	            }
	          }
          ?>
          <label class="label-title">Название фильма</label>
          <input class="input" type="text" placeholder="Такси 2" name="title"/>
          <div class="row">
            <div class="col">
              <label class="label-title">Жанр</label>
              <input class="input" type="text" placeholder="комедия" name="genre"/>
            </div>
            <div class="col">
              <label class="label-title">Год</label>
              <input class="input" type="text" placeholder="2000" name="year"/>
            </div>
          </div>
          <input type="submit" class="button" value="Добавить" name="add-film">
        </form>
      </div>