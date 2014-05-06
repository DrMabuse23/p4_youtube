<?php

use yii\db\Schema;

class m140506_205942_create_p4_youtube_playlist extends \yii\db\Migration
{
    public function up()
    {
        $this->execute("
        CREATE TABLE IF NOT EXISTS `p4_youtube_playlist` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `playlistId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
        `youtubePlaylistId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
        `title` text COLLATE utf8_unicode_ci NOT NULL,
        `url` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
        `isActive` int(11) NOT NULL DEFAULT '1',
        `isCurrent` int(11) NOT NULL DEFAULT '2',
        `sort` int(11) NOT NULL DEFAULT '1',
        PRIMARY KEY (`id`)
        ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;
        ");
    }

    public function down()
    {
        $this->dropTable('p4_youtube_playlist');
        echo 'table p4_youtube_playlist dropped';
    }
}
