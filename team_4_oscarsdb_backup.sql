CREATE DATABASE IF NOT EXISTS team_4_oscarsdb_backup;
USE team_4_oscarsdb_backup;
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: team_4_oscars_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `bestpictures_highrating`
--

DROP TABLE IF EXISTS `bestpictures_highrating`;
/*!50001 DROP VIEW IF EXISTS `bestpictures_highrating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bestpictures_highrating` AS SELECT 
 1 AS `oscar_bestpicture_winner`,
 1 AS `oscar_year`,
 1 AS `imdb_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cameraman`
--

DROP TABLE IF EXISTS `cameraman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cameraman` (
  `dp_id` int NOT NULL AUTO_INCREMENT,
  `dp_first_name` varchar(45) DEFAULT NULL,
  `dp_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cameraman`
--

LOCK TABLES `cameraman` WRITE;
/*!40000 ALTER TABLE `cameraman` DISABLE KEYS */;
INSERT INTO `cameraman` VALUES (1,'John','Seale'),(2,'Peter','James'),(3,'Dean','Semler'),(4,'Tak','Fujimoto'),(5,'Jack','Green'),(6,'Janusz','Kaminski'),(7,'Don','Burgess'),(8,'John','Toll'),(9,'John','Seale'),(10,'Russell','Carpenter'),(11,'Richard','Greatrex'),(12,'Conrad','Hall'),(13,'John','Mathieson'),(14,'Roger','Deakins'),(15,'Dion','Beebe'),(16,'Andrew','Lesnie'),(17,'Tom','Stern'),(18,'Michael','Muro'),(19,'Michael','Ballhaus'),(20,'Roger','Deakins'),(21,'Anthony','Mantle'),(22,'Barry','Ackroyd'),(23,'Danny','Cohen'),(24,'Guillaume','Schiffman'),(25,'Rodrigo','Prieto'),(26,'Sean','Bobbitt'),(27,'Emmanuel','Lubezki'),(28,'Masanobu','Takayanagi'),(29,'James','Laxton'),(30,'Dan','Laustsen'),(31,'Sean','Porter'),(32,'Kyung-pyo','Hong'),(33,'Joshua','Richards');
/*!40000 ALTER TABLE `cameraman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `deakins_films`
--

DROP TABLE IF EXISTS `deakins_films`;
/*!50001 DROP VIEW IF EXISTS `deakins_films`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `deakins_films` AS SELECT 
 1 AS `oscar_bestpicture_winner`,
 1 AS `oscar_year`,
 1 AS `cinematographer_fullname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `director_first_name` varchar(45) DEFAULT NULL,
  `director_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Barry','Levinson'),(2,'Bruce','Beresford'),(3,'Kevin','Costner'),(4,'Jonathan','Demme'),(5,'Clint','Eastwood'),(6,'Steven','Spielberg'),(7,'Robert','Zemeckis'),(8,'Mel','Gibson'),(9,'Anthony','Minghella'),(10,'James','Cameron'),(11,'John','Madden'),(12,'Sam','Mendes'),(13,'Ridley','Scott'),(14,'Ron','Howard'),(15,'Rob','Marshall'),(16,'Peter','Jackson'),(17,'Clint','Eastwood'),(18,'Paul','Haggis'),(19,'Martin','Scorsese'),(20,'Joel','Coen'),(21,'Danny','Boyle'),(22,'Kathryn','Bigelow'),(23,'Tom','Hooper'),(24,'Micheal','Hazanavicius'),(25,'Ben','Affleck'),(26,'Steve','McQueen'),(27,'Alejandro','G. Inarritu'),(28,'Tom','McCarthy'),(29,'Barry','Jenkins'),(30,'Guillermo','del Toro'),(31,'Peter','Farrelly'),(32,'Bong','Joon Ho'),(33,'Chloe','Zhao');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `directors_highscore`
--

DROP TABLE IF EXISTS `directors_highscore`;
/*!50001 DROP VIEW IF EXISTS `directors_highscore`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `directors_highscore` AS SELECT 
 1 AS `movie_id`,
 1 AS `director_id`,
 1 AS `director_fullname`,
 1 AS `oscar_bestpicture_winner`,
 1 AS `rotten_tomatoes_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `film_production`
--

DROP TABLE IF EXISTS `film_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_production` (
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_production`
--

LOCK TABLES `film_production` WRITE;
/*!40000 ALTER TABLE `film_production` DISABLE KEYS */;
INSERT INTO `film_production` VALUES (1,'United Artists'),(2,'Warner Bros. Pictures'),(3,'Tig Productions'),(4,'Orion Pictures'),(5,'Warner Bros. Pictures'),(6,'Universal Pictures'),(7,'Paramount Pictures'),(8,'20th Century Studios'),(9,'Miramax'),(10,'20th Century Studios'),(11,'Universal Pictures'),(12,'DreamWorks Pictures'),(13,'DreamWorks Pictures'),(14,'DreamWorks Pictures'),(15,'Miramax'),(16,'New Line Cinema'),(17,'Warner Bros. Pictures'),(18,'DEJ Productions'),(19,'Warner Bros. Pictures'),(20,'Miramax'),(21,'Warner Bros. Pictures'),(22,'Summit Entertainment'),(23,'The Weinstein Company'),(24,'Studio 37'),(25,'Warner Bros. Pictures'),(26,'Plan B Entertainment'),(27,'TSG Entertainment'),(28,'Participant Media'),(29,'A24'),(30,'Searchlight Pictures'),(31,'Participant Media'),(32,'CJ Entertainment'),(33,'Searchlight Pictures');
/*!40000 ALTER TABLE `film_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `filmprod_avgscore`
--

DROP TABLE IF EXISTS `filmprod_avgscore`;
/*!50001 DROP VIEW IF EXISTS `filmprod_avgscore`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filmprod_avgscore` AS SELECT 
 1 AS `prod_name`,
 1 AS `average_rotten_tomatoes_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `films_shortruntime`
--

DROP TABLE IF EXISTS `films_shortruntime`;
/*!50001 DROP VIEW IF EXISTS `films_shortruntime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `films_shortruntime` AS SELECT 
 1 AS `oscar_bestpicture_winner`,
 1 AS `movie_runtime`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Drama'),(2,'Drama'),(3,'Adventure'),(4,'Thriller'),(5,'Western'),(6,'History'),(7,'Drama'),(8,'History'),(9,'Drama'),(10,'Drama'),(11,'Drama'),(12,'Drama'),(13,'Action'),(14,'Drama'),(15,'Musical'),(16,'Action'),(17,'Sport'),(18,'Drama'),(19,'Crime'),(20,'Western'),(21,'Drama'),(22,'War'),(23,'Drama'),(24,'Drama'),(25,'History'),(26,'History'),(27,'Drama'),(28,'History'),(29,'Drama'),(30,'Drama'),(31,'Drama'),(32,'Thriller'),(33,'Drama');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linking_director`
--

DROP TABLE IF EXISTS `linking_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linking_director` (
  `movie_oscars_movie_id` int NOT NULL,
  `director_director_id` int NOT NULL,
  PRIMARY KEY (`movie_oscars_movie_id`,`director_director_id`),
  KEY `fk_movie_oscars_has_director_director1_idx` (`director_director_id`),
  KEY `fk_movie_oscars_has_director_movie_oscars1_idx` (`movie_oscars_movie_id`),
  CONSTRAINT `fk_movie_oscars_has_director_director1` FOREIGN KEY (`director_director_id`) REFERENCES `director` (`director_id`),
  CONSTRAINT `fk_movie_oscars_has_director_movie_oscars1` FOREIGN KEY (`movie_oscars_movie_id`) REFERENCES `movie_oscars` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linking_director`
--

LOCK TABLES `linking_director` WRITE;
/*!40000 ALTER TABLE `linking_director` DISABLE KEYS */;
INSERT INTO `linking_director` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33);
/*!40000 ALTER TABLE `linking_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linking_writer`
--

DROP TABLE IF EXISTS `linking_writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linking_writer` (
  `movie_oscars_movie_id` int NOT NULL,
  `writer_writer_id` int NOT NULL,
  PRIMARY KEY (`movie_oscars_movie_id`,`writer_writer_id`),
  KEY `fk_movie_oscars_has_writer_writer1_idx` (`writer_writer_id`),
  KEY `fk_movie_oscars_has_writer_movie_oscars1_idx` (`movie_oscars_movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linking_writer`
--

LOCK TABLES `linking_writer` WRITE;
/*!40000 ALTER TABLE `linking_writer` DISABLE KEYS */;
INSERT INTO `linking_writer` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33);
/*!40000 ALTER TABLE `linking_writer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_oscars`
--

DROP TABLE IF EXISTS `movie_oscars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_oscars` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `oscar_title` varchar(45) DEFAULT NULL,
  `oscar_year` year DEFAULT NULL,
  `oscar_bestpicture_winner` varchar(45) DEFAULT NULL,
  `movie_runtime` int DEFAULT NULL,
  `movie_country` varchar(45) DEFAULT NULL,
  `genre_id` int NOT NULL,
  `dp_id` int NOT NULL,
  `prod_id` int NOT NULL,
  `rating_id` int NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `fk_movie_oscars_genres_idx` (`genre_id`),
  KEY `fk_movie_oscars_cameraman1_idx` (`dp_id`),
  KEY `fk_movie_oscars_film_production1_idx` (`prod_id`),
  KEY `fk_movie_oscars_rating1_idx` (`rating_id`),
  CONSTRAINT `fk_movie_oscars_cameraman1` FOREIGN KEY (`dp_id`) REFERENCES `cameraman` (`dp_id`),
  CONSTRAINT `fk_movie_oscars_film_production1` FOREIGN KEY (`prod_id`) REFERENCES `film_production` (`prod_id`),
  CONSTRAINT `fk_movie_oscars_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `fk_movie_oscars_rating1` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_oscars`
--

LOCK TABLES `movie_oscars` WRITE;
/*!40000 ALTER TABLE `movie_oscars` DISABLE KEYS */;
INSERT INTO `movie_oscars` VALUES (1,'61st Academy Awards',1989,'Rain Man',133,'US',1,1,1,1),(2,'62nd Academy Awards',1990,'Driving Miss Daisy',99,'US',2,2,2,2),(3,'63rd Academy Awards',1991,'Dances with Wolves',181,'US',3,3,3,3),(4,'64th Academy Awards',1992,'The Silence of the Lambs',118,'US',4,4,4,4),(5,'65th Academy Awards',1993,'Unforgiven',130,'US',5,5,5,5),(6,'66th Academy Awards',1994,'Schindler\'s List',195,'US',6,6,6,6),(7,'67th Academy Awards',1995,'Forrest Gump',142,'US',7,7,7,7),(8,'68th Academy Awards',1996,'Braveheart',178,'US',8,8,8,8),(9,'69th Academy Awards',1997,'The English Patient',162,'UK',9,9,9,9),(10,'70th Academy Awards',1998,'Titanic',194,'US',10,10,10,10),(11,'71st Academy Awards',1999,'Shakespeare in Love',123,'UK',11,11,11,11),(12,'72nd Academy Awards',2000,'American Beauty',122,'US',12,12,12,12),(13,'73rd Academy Awards',2001,'Gladiator',155,'UK',13,13,13,13),(14,'74th Academy Awards',2002,'A Beautiful Mind',135,'US',14,14,14,14),(15,'75th Academy Awards',2003,'Chicago',113,'US',15,15,15,15),(16,'76th Academy Awards',2004,'The Lord of the Rings: The Return of the King',201,'NZ',16,16,16,16),(17,'77th Academy Awards',2005,'Million Dollar Baby',132,'US',17,17,17,17),(18,'78th Academy Awards',2006,'Crash',112,'US',18,18,18,18),(19,'79th Academy Awards',2007,'The Departed',151,'US',19,19,19,19),(20,'80th Academy Awards',2008,'No Country for Old Men',122,'US',20,20,20,20),(21,'81st Academy Awards',2009,'Slumdog Millionaire',120,'IN',21,21,21,21),(22,'82nd Academy Awards',2010,'The Hurt Locker',131,'US',22,22,22,22),(23,'83rd Academy Awards',2011,'The King Speech',118,'UK',23,23,23,23),(24,'84th Academy Awards',2012,'The Artist',100,'US',24,24,24,24),(25,'85th Academy Awards',2013,'Argo',120,'US',25,25,25,25),(26,'86th Academy Awards',2014,'12 Years a Slave',134,'US',26,26,26,26),(27,'87th Academy Awards',2015,'Birdman',119,'US',27,27,27,27),(28,'88th Academy Awards',2016,'Spotlight',129,'US',28,28,28,28),(29,'89th Academy Awards',2017,'Moonlight',111,'US',29,29,29,29),(30,'90th Academy Awards',2018,'The Shape of Water',123,'US',30,30,30,30),(31,'91st Academy Awards',2019,'Green Book',130,'US',31,31,31,31),(32,'92nd Academy Awards',2020,'Parasite',132,'KR',32,32,32,32),(33,'93rd Academy Awards',2021,'Nomadland',107,'US',33,33,33,33);
/*!40000 ALTER TABLE `movie_oscars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `oscars_international`
--

DROP TABLE IF EXISTS `oscars_international`;
/*!50001 DROP VIEW IF EXISTS `oscars_international`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `oscars_international` AS SELECT 
 1 AS `movie_country`,
 1 AS `number_of_bestpicturefilms`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `imdb_rating` decimal(2,1) DEFAULT NULL,
  `rotten_tomatoes_score` int DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,8.0,89),(2,7.3,82),(3,8.0,83),(4,8.6,96),(5,8.2,96),(6,8.9,98),(7,8.8,71),(8,8.3,78),(9,7.4,85),(10,7.8,89),(11,7.1,92),(12,8.3,87),(13,8.5,77),(14,8.2,74),(15,7.2,86),(16,8.9,93),(17,8.1,90),(18,7.7,74),(19,8.5,90),(20,8.1,93),(21,8.0,91),(22,7.5,97),(23,8.0,94),(24,7.9,95),(25,7.7,96),(26,8.1,95),(27,7.7,91),(28,8.1,97),(29,7.4,98),(30,7.3,92),(31,8.2,77),(32,8.6,98),(33,7.5,94);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writer`
--

DROP TABLE IF EXISTS `writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writer` (
  `writer_id` int NOT NULL AUTO_INCREMENT,
  `writer_first_name` varchar(45) DEFAULT NULL,
  `writer_last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`writer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writer`
--

LOCK TABLES `writer` WRITE;
/*!40000 ALTER TABLE `writer` DISABLE KEYS */;
INSERT INTO `writer` VALUES (1,'Barry','Morrow'),(2,'Alfred','Uhry'),(3,'Michael','Blake'),(4,'Ted','Tally'),(5,'David','Peoples'),(6,'Steven','Zaillian'),(7,'Eric','Roth'),(8,'Randall','Wallace'),(9,'Anthony','Minghella'),(10,'James','Cameron'),(11,'Marc','Norman'),(12,'Alan','Ball'),(13,'David','Franzoni'),(14,'Akiva','Goldsman'),(15,'Bill','Condon'),(16,'Fran','Walsh'),(17,'Paul','Haggis'),(18,'Paul','Haggis'),(19,'William','Monahan'),(20,'Joel','Coen'),(21,'Simon','Beaufoy'),(22,'Mark','Boal'),(23,'David','Seidler'),(24,'Michel','Hazanavicius'),(25,'Chris','Terrio'),(26,'John','Ridley'),(27,'Alejandro','G. Inarritu'),(28,'Josh','Singer'),(29,'Barry','Jenkins'),(30,'Guillermo','del Toro'),(31,'Nick','Vallelonga'),(32,'Bong','Joon Ho'),(33,'Chloe','Zhao');
/*!40000 ALTER TABLE `writer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'team_4_oscars_db'
--

--
-- Final view structure for view `bestpictures_highrating`
--

/*!50001 DROP VIEW IF EXISTS `bestpictures_highrating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bestpictures_highrating` AS select `m`.`oscar_bestpicture_winner` AS `oscar_bestpicture_winner`,`m`.`oscar_year` AS `oscar_year`,`r`.`imdb_rating` AS `imdb_rating` from (`movie_oscars` `m` join `rating` `r` on((`m`.`movie_id` = `r`.`rating_id`))) where (`r`.`imdb_rating` > 8.0) order by `r`.`imdb_rating` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `deakins_films`
--

/*!50001 DROP VIEW IF EXISTS `deakins_films`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `deakins_films` AS select `m`.`oscar_bestpicture_winner` AS `oscar_bestpicture_winner`,`m`.`oscar_year` AS `oscar_year`,concat(`c`.`dp_first_name`,' ',`c`.`dp_last_name`) AS `cinematographer_fullname` from (`cameraman` `c` join `movie_oscars` `m` on((`c`.`dp_id` = `m`.`movie_id`))) where (`c`.`dp_last_name` = 'Deakins') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `directors_highscore`
--

/*!50001 DROP VIEW IF EXISTS `directors_highscore`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `directors_highscore` AS select `l`.`movie_oscars_movie_id` AS `movie_id`,`l`.`director_director_id` AS `director_id`,concat(`d`.`director_first_name`,' ',`d`.`director_last_name`) AS `director_fullname`,`m`.`oscar_bestpicture_winner` AS `oscar_bestpicture_winner`,`r`.`rotten_tomatoes_score` AS `rotten_tomatoes_score` from (((`director` `d` join `rating` `r` on((`d`.`director_id` = `r`.`rating_id`))) join `linking_director` `l` on((`d`.`director_id` = `l`.`director_director_id`))) join `movie_oscars` `m` on((`d`.`director_id` = `m`.`movie_id`))) where (`r`.`rotten_tomatoes_score` > 90) order by `r`.`rotten_tomatoes_score` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filmprod_avgscore`
--

/*!50001 DROP VIEW IF EXISTS `filmprod_avgscore`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filmprod_avgscore` AS select `p`.`prod_name` AS `prod_name`,avg(`r`.`rotten_tomatoes_score`) AS `average_rotten_tomatoes_score` from (`film_production` `p` join `rating` `r` on((`p`.`prod_id` = `r`.`rating_id`))) group by `p`.`prod_name` order by `average_rotten_tomatoes_score` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `films_shortruntime`
--

/*!50001 DROP VIEW IF EXISTS `films_shortruntime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `films_shortruntime` AS select `movie_oscars`.`oscar_bestpicture_winner` AS `oscar_bestpicture_winner`,`movie_oscars`.`movie_runtime` AS `movie_runtime` from `movie_oscars` where (`movie_oscars`.`movie_runtime` < 120) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `oscars_international`
--

/*!50001 DROP VIEW IF EXISTS `oscars_international`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `oscars_international` AS select `m`.`movie_country` AS `movie_country`,count(`m`.`movie_country`) AS `number_of_bestpicturefilms` from `movie_oscars` `m` where `m`.`movie_id` in (select `movie_oscars`.`movie_id` from `movie_oscars` where (`movie_oscars`.`movie_country` <> 'US')) group by `m`.`movie_country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14 21:28:26
