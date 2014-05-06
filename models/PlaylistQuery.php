<?php

namespace p4_youtube\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use p4_youtube\models\Playlist;

/**
 * PlaylistQuery represents the model behind the search form about `p4_youtube\models\Playlist`.
 */
class PlaylistQuery extends Playlist
{
    public function rules()
    {
        return [
            [['id', 'isActive', 'isCurrent', 'sort'], 'integer'],
            [['playlistId', 'youtubePlaylistId', 'title', 'url'], 'safe'],
        ];
    }

    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    public function search($params)
    {
        $query = Playlist::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'isActive' => $this->isActive,
            'isCurrent' => $this->isCurrent,
            'sort' => $this->sort,
        ]);

        $query->andFilterWhere(['like', 'playlistId', $this->playlistId])
            ->andFilterWhere(['like', 'youtubePlaylistId', $this->youtubePlaylistId])
            ->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'url', $this->url]);

        return $dataProvider;
    }
}
