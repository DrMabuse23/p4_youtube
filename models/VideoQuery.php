<?php

namespace app\modules\p4_youtube\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\modules\p4_youtube\models\Video;

/**
 * VideoQuery represents the model behind the search form about `app\modules\p4_youtube\models\Video`.
 */
class VideoQuery extends Video
{
    public function rules()
    {
        return [
            [['id', 'playlistId', 'start'], 'integer'],
            [['videoId', 'thumbnail', 'title'], 'safe'],
        ];
    }

    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    public function search($params)
    {
        $query = Video::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'playlistId' => $this->playlistId,
            'start' => $this->start,
        ]);

        $query->andFilterWhere(['like', 'videoId', $this->videoId])
            ->andFilterWhere(['like', 'thumbnail', $this->thumbnail])
            ->andFilterWhere(['like', 'title', $this->title]);

        return $dataProvider;
    }
}
