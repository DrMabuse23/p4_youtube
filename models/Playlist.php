<?php

namespace p4_youtube\models;

use Yii;

/**
 * This is the model class for table "p4_youtube_playlist".
 *
 * @property integer $id
 * @property string $playlistId
 * @property string $youtubePlaylistId
 * @property string $title
 * @property string $url
 * @property integer $isActive
 * @property integer $isCurrent
 * @property integer $sort
 *
 * @property P4YoutubeVideos[] $p4YoutubeVideos
 */
class Playlist extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'p4_youtube_playlist';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['playlistId', 'youtubePlaylistId', 'title', 'url'], 'required'],
            [['title'], 'string'],
            [['isActive', 'isCurrent', 'sort'], 'integer'],
            [['playlistId', 'youtubePlaylistId'], 'string', 'max' => 255],
            [['url'], 'string', 'max' => 355]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'playlistId' => Yii::t('app', 'Playlist ID'),
            'youtubePlaylistId' => Yii::t('app', 'Youtube Playlist ID'),
            'title' => Yii::t('app', 'Title'),
            'url' => Yii::t('app', 'Url'),
            'isActive' => Yii::t('app', 'Is Active'),
            'isCurrent' => Yii::t('app', 'Is Current'),
            'sort' => Yii::t('app', 'Sort'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getP4YoutubeVideos()
    {
        return $this->hasMany(Video::className(), ['playlistId' => 'id']);
    }

}
