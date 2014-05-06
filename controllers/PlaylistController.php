<?php

namespace p4_youtube\controllers;

use Yii;
use p4_youtube\Video;
use p4_youtube\models\Playlist;
use p4_youtube\models\PlaylistQuery;
use yii\captcha\CaptchaValidator;
use yii\helpers\VarDumper;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use ZendGData\YouTube;

/**
 * PlaylistController implements the CRUD actions for Playlist model.
 */
class PlaylistController extends Controller
{
    public $api;

    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Playlist models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PlaylistQuery;
        $dataProvider = $searchModel->search(Yii::$app->request->getQueryParams());

        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'searchModel' => $searchModel,
        ]);
    }

    /**
     * Displays a single Playlist model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Playlist model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Playlist;

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Playlist model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Playlist model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Playlist model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Playlist the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Playlist::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    /**
     * import playlist from a youtube page
     * @param $page
     */
    public function actionImportPlaylist($page)
    {
        $api            = $this->getApi();
        $playlistFeed   = $api->getPlaylistListFeed($page);
        foreach ($playlistFeed as $playlist) {
            $playlistModel                      = new Playlist();
            $playlistModel->playlistId          = $playlist->playlistId->text;
            $playlistModel->title               = $playlist->title->text;
            $playlistModel->url                 = $playlist->getPlaylistVideoFeedUrl();
            $playlistModel->isCurrent           = 1;
            $playlistModel->youtubePlaylistId   = $playlist->playlistId->text;

            $exist = Playlist::find()->where(['playlistId' => $playlist->playlistId->text ])->one();

            if( !is_null($exist)){
                $exist->load($playlistModel);
            }

            if (is_null($exist) && $playlistModel->save()) {

            }else{
                $exist->update();
            }
        }
    }

    /**
     * Import videos of the playlist
     * @param $id
     * @return bool
     */
    public function actionImportVideos($id)
    {
        $api        = $this->getApi();
        $playlist   = Playlist::findOne($id);
        $rawVideos  = $api->getPlaylistVideoFeed($playlist->url);

        if (!empty($rawVideos)) {
            foreach ($rawVideos as $rawVideo) {
                $thumbnails         = $rawVideo->getVideoThumbnails();
                $video              = new Video();
                $video->title       = $rawVideo->title->text;
                $video->videoId     = $rawVideo->videoid;
                $video->thumbnail   = $thumbnails[1]['url'];
                $video->playlistId  = $id;
                $exist = Video::find()->where(['videoId' => $rawVideo->videoid])->one();

                if(!is_null($exist)){
                    $exist->load($video);
                }

                if (is_null($exist) && $video->save()) {

                }else{
                    $exist->update();
                }
            }
        }
        return false;
    }

    /**
     * @return YouTube
     */
    private function getApi()
    {
        $api = new YouTube();
        $api->getHttpClient()->setOptions(array('sslverifypeer' => false));
        $api->setMajorProtocolVersion(2);
        return $api;
    }
}
