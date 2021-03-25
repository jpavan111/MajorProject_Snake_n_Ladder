create database major_project_snake_n_ladder;

use major_project_snake_n_ladder;

-- ======================= User =======================

desc user;
select * from user;
update user set active = 0 where id =2;
delete from user where id=1;

-- ==================== Leaderboard ====================

desc leaderboard;
select * from leaderboard;
update leaderboard set id=1 where id=2;
delete from leaderboard where id=7;


-- =============== Compulsary to run ====================
ALTER TABLE `major_project_snake_n_ladder`.`leaderboard` 
CHANGE COLUMN `leaderboardId` `leaderboardId` INT(11) NOT NULL AUTO_INCREMENT ;

