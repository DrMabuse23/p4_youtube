<?php

use yii\helpers\Html;

/**
 * @var yii\web\View $this
 * @var p4_youtube\models\Playlist $model
 */

$this->title = Yii::t('app', 'Create {modelClass}', [
  'modelClass' => 'Playlist',
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Playlists'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="playlist-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
