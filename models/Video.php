<?php

namespace p4_youtube\models;

use Yii;

/**
 * This is the model class for table "p4_youtube_videos".
 *
 * @property integer $id
 * @property integer $playlistId
 * @property integer $start
 * @property string $videoId
 * @property string $thumbnail
 * @property string $title
 *
 * @property P4YoutubePlaylist $playlist
 */
class Video extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'p4_youtube_videos';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['playlistId', 'videoId', 'thumbnail', 'title'], 'required'],
            [['playlistId', 'start'], 'integer'],
            [['videoId', 'thumbnail', 'title'], 'string', 'max' => 355]
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
            'start' => Yii::t('app', 'Start'),
            'videoId' => Yii::t('app', 'Video ID'),
            'thumbnail' => Yii::t('app', 'Thumbnail'),
            'title' => Yii::t('app', 'Title'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPlaylist()
    {
        return $this->hasOne(P4YoutubePlaylist::className(), ['id' => 'playlistId']);
    }
}
