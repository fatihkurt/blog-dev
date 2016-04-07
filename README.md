# Blog application 

Instructions:

 * composer install
 * npm install
 * grunt 
 * ```bin/console doctrine:schema:update --force``` (Or full sample db dump has given as dump.sql)
 * Create session table (Or full sample db dump has given as dump.sql)
 ```sql
 CREATE TABLE `sessions` (
    `sess_id` VARBINARY(128) NOT NULL PRIMARY KEY,
    `sess_data` BLOB NOT NULL,
    `sess_time` INTEGER UNSIGNED NOT NULL,
    `sess_lifetime` MEDIUMINT NOT NULL
) COLLATE utf8_bin, ENGINE = InnoDB;
 ```
 

### Additional notes

 * ```bin/console fos:user:create test test@example.com p@ssword --super-admin``` for generate user.
 * App working on app_dev.php due to lack of my ngnix setup.
 * Symfony 3 and nginx has some session problem.
