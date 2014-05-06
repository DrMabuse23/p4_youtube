<?php

use yii\helpers\Html;
use yii\grid\GridView;

/**
 * @var yii\web\View $this
 * @var yii\data\ActiveDataProvider $dataProvider
 * @var p4_youtube\models\PlaylistQuery $searchModel
 */

$this->title = Yii::t('app', 'Playlists');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="playlist-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create {modelClass}', [
  'modelClass' => 'Playlist',
]), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'playlistId',
            'youtubePlaylistId',
            'title:ntext',
            'url:url',
            // 'isActive',
            // 'isCurrent',
            // 'sort',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
