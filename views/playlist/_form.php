<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var yii\web\View $this
 * @var p4_youtube\models\Playlist $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="playlist-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'playlistId')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'youtubePlaylistId')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'title')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'url')->textInput(['maxlength' => 355]) ?>

    <?= $form->field($model, 'isActive')->textInput() ?>

    <?= $form->field($model, 'isCurrent')->textInput() ?>

    <?= $form->field($model, 'sort')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
