<?php

use yii\db\Schema;

class m140506_210011_create_p4_youtube_videos extends \yii\db\Migration
{
    public function up()
    {
        $this->execute("
            CREATE TABLE IF NOT EXISTS `p4_youtube_videos` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `playlistId` int(11) NOT NULL,
            `start` int(11) NOT NULL DEFAULT '0',
            `videoId` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
            `thumbnail` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
            `title` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
            PRIMARY KEY (`id`),
            KEY `playlistId` (`playlistId`)
            ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

            ALTER TABLE `p4_youtube_videos`
            ADD CONSTRAINT `p4_youtube_videos_ibfk_1` FOREIGN KEY (`playlistId`) REFERENCES `p4_youtube_playlist` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
        ");
    }

    public function down()
    {
        $this->dropTable('p4_youtube_videos');
        echo 'table p4_youtube_videos dropped';
    }
}
