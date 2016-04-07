# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.46-0ubuntu0.14.04.2)
# Database: blog
# Generation Time: 2016-04-07 16:51:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table fos_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fos_user`;

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`)
VALUES
	(1,'test','test','test@example.com','test@example.com',1,'h99wek0lrtw00sgoskkwggkgwo84gog','$2y$13$HyoRFPnTCl5K92AYy0Z6.O9ReMmNtNLFkgh24AiclDdjU5GS/JiCm','2016-04-07 16:40:38',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL),
	(2,'test2','test2','test@test.com','test@test.com',1,'cf6ptp73ll44c848kkkswwg0go8s0oc','$2y$13$FLD/XTMBrUoAUJJaJARvDeTTkxlCTssAl5vWtdY9iaiyzZSYXLWsW','2016-04-07 11:31:28',0,0,NULL,NULL,NULL,'a:0:{}',0,NULL);

/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`id`, `title`, `slug`, `summary`, `content`, `author_email`, `published_at`)
VALUES
	(2,'Sample blog post','test-title','This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.','<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n            <blockquote>\r\n              <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n            </blockquote>\r\n            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n            <h2>Heading</h2>\r\n            <p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n            <h3>Sub-heading</h3>\r\n            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n            <pre><code>Example code block</code></pre>\r\n            <p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n            <h3>Sub-heading</h3>\r\n            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n            <ul>\r\n              <li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n              <li>Donec id elit non mi porta gravida at eget metus.</li>\r\n              <li>Nulla vitae elit libero, a pharetra augue.</li>\r\n            </ul>\r\n            <p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n            <ol>\r\n              <li>Vestibulum id ligula porta felis euismod semper.</li>\r\n              <li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n              <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n            </ol>\r\n            <p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>','kurt.fth@gmail.com','2016-04-06 13:13:00'),
	(3,'Hooks','hooks','Bower provides 3 separate hooks that can be used to trigger other automated tools during Bower usage.','Bower provides 3 separate hooks that can be used to trigger other automated tools during Bower usage. Importantly, these hooks are intended to allow external tools to help wire up the newly installed components into the parent project and other similar tasks. These hooks are not intended to provide a post-installation build step for component authors. As such, the configuration for these hooks is provided in the .bowerrc file in the parent project’s directory.\r\n\r\nIn .bowerrc do:\r\n\r\n{\r\n  \"scripts\": {\r\n    \"preinstall\": \"<your command here>\",\r\n    \"postinstall\": \"<your command here>\",\r\n    \"preuninstall\": \"<your command here>\"\r\n  }\r\n}\r\nThe value of each script hook may contain a % character. When your script is called, the % will be replaced with a space-separated list of components being installed or uninstalled.\r\n\r\nYour script will also include an environment variable BOWER_PID containing the PID of the parent Bower process that triggered the script. This can be used to verify that a preinstall and postinstall steps are part of the same Bower process.','kurt.fth@gmail.com','2016-04-07 16:45:00');

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `sess_id` varbinary(128) NOT NULL,
  `sess_data` blob NOT NULL,
  `sess_time` int(10) unsigned NOT NULL,
  `sess_lifetime` mediumint(9) NOT NULL,
  PRIMARY KEY (`sess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`sess_id`, `sess_data`, `sess_time`, `sess_lifetime`)
VALUES
	(X'303036686171336574346F32716A36716D633132726B34706534',X'5F7366325F617474726962757465737C613A343A7B733A31303A225F637372662F666F726D223B733A34333A227568785771717A7643777A7176684674496B45734957314876593948683678755F67305677626F63623541223B733A31383A225F637372662F61757468656E746963617465223B733A34333A227273357267676D36525042566B516C706252363557594C6A6F4162424951356534795078474F555A316F49223B733A31343A225F73656375726974795F6D61696E223B733A3732323A22433A37343A2253796D666F6E795C436F6D706F6E656E745C53656375726974795C436F72655C41757468656E7469636174696F6E5C546F6B656E5C557365726E616D6550617373776F7264546F6B656E223A3633343A7B613A333A7B693A303B4E3B693A313B733A343A226D61696E223B693A323B733A3539343A22613A343A7B693A303B433A32313A2241707042756E646C655C456E746974795C55736572223A3236333A7B613A31333A7B693A303B733A36303A222432792431332448796F5246506E54436C354B3932415979305A362E4F3952654D6D4E744E4C466B676832344169636C44646A553547532F4A69436D223B693A313B733A33313A2268393977656B306C727477303073676F736B6B7767676B67776F3834676F67223B693A323B733A343A2274657374223B693A333B733A343A2274657374223B693A343B623A303B693A353B623A303B693A363B623A303B693A373B623A313B693A383B693A313B693A393B4E3B693A31303B4E3B693A31313B733A31363A2274657374406578616D706C652E636F6D223B693A31323B733A31363A2274657374406578616D706C652E636F6D223B7D7D693A313B623A313B693A323B613A323A7B693A303B4F3A34313A2253796D666F6E795C436F6D706F6E656E745C53656375726974795C436F72655C526F6C655C526F6C65223A313A7B733A34373A220053796D666F6E795C436F6D706F6E656E745C53656375726974795C436F72655C526F6C655C526F6C6500726F6C65223B733A31303A22524F4C455F41444D494E223B7D693A313B4F3A34313A2253796D666F6E795C436F6D706F6E656E745C53656375726974795C436F72655C526F6C655C526F6C65223A313A7B733A34373A220053796D666F6E795C436F6D706F6E656E745C53656375726974795C436F72655C526F6C655C526F6C6500726F6C65223B733A393A22524F4C455F55534552223B7D7D693A333B613A303A7B7D7D223B7D7D223B733A31303A225F637372662F706F7374223B733A34333A224A566272384A63424D7A7149364464786B4A4F51386A385644575F4B6C39557076707974427537515A5734223B7D5F7366325F666C61736865737C613A303A7B7D5F7366325F6D6574617C613A333A7B733A313A2275223B693A313436303034373733353B733A313A2263223B693A313436303034373233383B733A313A226C223B733A313A2230223B7D',1460047735,1440);

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
