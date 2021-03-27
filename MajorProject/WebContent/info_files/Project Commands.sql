create database major_project_snake_n_ladder;

use major_project_snake_n_ladder;

-- ==================== User ====================

desc user;
select * from user;
update user set active = 1 where id =1;
delete from user where id=4;

SELECT * FROM user WHERE email="sumitvyas786@gmail.com" or username="sumit";

-- ==================== Leaderboard ====================

desc leaderboard;
select * from leaderboard;
update leaderboard set id=1 where id=8;
delete from leaderboard where leaderboardId=3;



-- =============== Compulsary to run ====================

ALTER TABLE `major_project_snake_n_ladder`.`leaderboard` 
CHANGE COLUMN `gameInstanceNo` `gameInstanceNo` INT(11) NOT NULL AUTO_INCREMENT ;

