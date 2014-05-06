<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var yii\web\View $this
 * @var p4_youtube\models\Video $model
 * @var yii\widgets\ActiveForm $form
 */
?>

<div class="video-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'playlistId')->textInput() ?>

    <?= $form->field($model, 'videoId')->textInput(['maxlength' => 355]) ?>

    <?= $form->field($model, 'thumbnail')->textInput(['maxlength' => 355]) ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => 355]) ?>

    <?= $form->field($model, 'start')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
