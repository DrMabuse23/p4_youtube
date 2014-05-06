<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var yii\web\View $this
 * @var p4_youtube\models\VideoQuery $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="video-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'playlistId') ?>

    <?= $form->field($model, 'start') ?>

    <?= $form->field($model, 'videoId') ?>

    <?= $form->field($model, 'thumbnail') ?>

    <?php // echo $form->field($model, 'title') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
