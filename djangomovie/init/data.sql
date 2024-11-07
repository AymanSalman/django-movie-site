-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_movie','Can add movie'),(26,7,'change_movie','Can change movie'),(27,7,'delete_movie','Can delete movie'),(28,7,'view_movie','Can view movie'),(29,8,'add_comment','Can add comment'),(30,8,'change_comment','Can change comment'),(31,8,'delete_comment','Can delete comment'),(32,8,'view_comment','Can view comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(6) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$KSl1pMMKxA3I5yPX9kXjWn$5/YI3ejhZJstnoQFKiXWg/ErLQFZ9hvLzrgxUSs7EBI=','2024-10-16',1,'ayman','','',1,1,'2024-09-16',''),(3,'pbkdf2_sha256$870000$mbkY5Cv92JPcPylSAL6WQJ$ZG73WDOqB7EFcrkYHVz7p9oQo55ZN/0vGg72DRwWjc0=','2024-10-17',0,'ayman1','','',0,1,'2024-09-16','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(23) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(15) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'asdasdasdsad',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(2,2,'aaaaaaaa',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(3,2,'user1',3,'',4,1,'2024-09-16'),(4,2,'aaaaaaaa',3,'',7,1,'2024-09-16'),(5,1,'asdasdasdsad',3,'',7,1,'2024-09-16'),(6,3,'Beetlejuice Beetlejuice',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(7,4,'Rebel Ridge',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(8,5,'Beetlejuice',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(9,6,'Speak No Evil',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(10,7,'Deadpool & Wolverine',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(11,8,'Eden',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(12,9,'Alien: Romulus',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(13,10,'The Apprentice',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(14,11,'Longlegs',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(15,12,'Joker: Folie à Deux',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(16,13,'Trap',1,'[{\"added\": {}}]',7,1,'2024-09-16'),(17,14,'The Deliverance',1,'[{\"added\": {}}]',7,1,'2024-09-16');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'movies','comment'),(7,'movies','movie'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-16'),(2,'auth','0001_initial','2024-09-16'),(3,'admin','0001_initial','2024-09-16'),(4,'admin','0002_logentry_remove_auto_add','2024-09-16'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-16'),(6,'contenttypes','0002_remove_content_type_name','2024-09-16'),(7,'auth','0002_alter_permission_name_max_length','2024-09-16'),(8,'auth','0003_alter_user_email_max_length','2024-09-16'),(9,'auth','0004_alter_user_username_opts','2024-09-16'),(10,'auth','0005_alter_user_last_login_null','2024-09-16'),(11,'auth','0006_require_contenttypes_0002','2024-09-16'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-16'),(13,'auth','0008_alter_user_username_max_length','2024-09-16'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-16'),(15,'auth','0010_alter_group_name_max_length','2024-09-16'),(16,'auth','0011_update_proxy_permissions','2024-09-16'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-16'),(18,'movies','0001_initial','2024-09-16'),(19,'sessions','0001_initial','2024-09-16'),(20,'movies','0002_comment','2024-09-16'),(21,'movies','0003_alter_comment_movie','2024-10-16');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(54) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0up5tmimanbcddmjfrnkf8x7ccn9e5ll','e30:1sq8zg:UvlD8Kxe7eHltrWB5kWnKs-wMYBcMkBw_Tkhhva66Rs','2024-09-30'),('hxx8ao5jl8uw4z2urfchxovayesfj5yj','e30:1sq91R:z3PByeCC2V5nq2ahFAIPDrpszcQxAsAras6Q3qmicjM','2024-09-30');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_comment`
--

DROP TABLE IF EXISTS `movies_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_comment` (
  `id` tinyint(4) DEFAULT NULL,
  `content` varchar(48) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL,
  `author_id` tinyint(4) DEFAULT NULL,
  `movie_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_comment`
--

LOCK TABLES `movies_comment` WRITE;
/*!40000 ALTER TABLE `movies_comment` DISABLE KEYS */;
INSERT INTO `movies_comment` VALUES (3,'This is my first comment for this movie, Thanks.','2024-09-16',3,12),(4,'Second comment test','2024-09-19',3,12),(5,'This is my first comment','2024-10-17',3,10);
/*!40000 ALTER TABLE `movies_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_movie`
--

DROP TABLE IF EXISTS `movies_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_movie` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(23) DEFAULT NULL,
  `slug` varchar(23) DEFAULT NULL,
  `description` text,
  `director` varchar(18) DEFAULT NULL,
  `actor_1` varchar(37) DEFAULT NULL,
  `actor_2` varchar(35) DEFAULT NULL,
  `actor_3` varchar(32) DEFAULT NULL,
  `actor_4` varchar(32) DEFAULT NULL,
  `year_of_release` smallint(6) DEFAULT NULL,
  `thump` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_movie`
--

LOCK TABLES `movies_movie` WRITE;
/*!40000 ALTER TABLE `movies_movie` DISABLE KEYS */;
INSERT INTO `movies_movie` VALUES (3,'Beetlejuice Beetlejuice','beetlejuice_beetlejuice','Beetlejuice Beetlejuice is a 2024 American dark fantasy comedy horror film directed by Tim Burton from a screenplay by Alfred Gough and Miles Millar. A sequel to Beetlejuice (1988) and the second film of the Beetlejuice franchise, the film stars Michael Keaton, Winona Ryder, and Catherine O\'Hara reprising their roles alongside new cast members Justin Theroux, Monica Bellucci, Jenna Ortega, and Willem Dafoe. Set over three decades after the first Beetlejuice, it follows Lydia Deetz, now a mother, struggling to keep her family together in the wake of a loss as the specter Betelgeuse[a] returns to haunt her.\r\n\r\nAfter the success of Beetlejuice, plans for a sequel were announced by The Geffen Film Company, its original producers, but did not materialize until 2011 when Warner Bros. Pictures hired Seth Grahame-Smith to pitch a story and went through numerous revisions before being shelved in late 2019 and eventually got revived three years later. Burton co-produced the film with Brad Pitt\'s studio Plan B Entertainment, and the casting process continued till early 2023. Principal photography, supervised by cinematographer Haris Zambarloukos, took place at parts of England and United States from May to November 2023, despite being suspended for four months due to the 2023 SAG-AFTRA strike. The official title was revealed in February 2024. During post-production, editing was handled by Jay Prychidny and the musical score was composed by longtime collaborator Danny Elfman.\r\n\r\nBeetlejuice Beetlejuice opened the 81st Venice International Film Festival on August 28, 2024,[6] and was theatrically released overseas on September 4, 2024, and in the United States by Warner Bros. Pictures two days later. The film has received generally positive reviews from critics and has grossed $264 million worldwide on a $99–100 million budget.','Tim Burton','Michael Keaton (Beetlejuice)','Winona Ryder (Lydia Deetz)','Catherine O\'Hara (Delia Deetz)','Jenna Ortega (Astrid Deetz)',2024,'beetlejuice_beetlejuice_EhPDwVH.jpg'),(4,'Rebel Ridge','rebel_ridge','Rebel Ridge is a 2024 American crime action thriller film written, produced, directed and edited by Jeremy Saulnier. The film stars Aaron Pierre as Terry Richmond, a former Marine who has the funds needed to post bail for his cousin unjustly seized via civil forfeiture by a corrupt police force. Don Johnson, AnnaSophia Robb, David Denman, Emory Cohen, Steve Zissis, Zsané Jhé, Dana Lee, and James Cromwell also appear in the film.\r\n\r\nRebel Ridge was released by Netflix on September 6, 2024 to positive critical reviews','Jeremy Saulnier','Aaron Pierre (Terry Richmond)','David Denman (Officer Evan Marston)','Emory Cohen (Officer Steve Lann)','Oscar Gale (Skinny Guard)',2024,'rebel_ridge_kOnRFjn.jpg'),(5,'Beetlejuice','beetlejuice','This article is about the film. For the star, see Betelgeuse. For the musical, see Beetlejuice (musical). For the film\'s 2024 sequel, see Beetlejuice Beetlejuice. For other uses, see Beetlejuice (disambiguation).\r\nBeetlejuice\r\nA woman in a wedding dress, a green haired white faced man in a striped suit, and a headless man holding his head in his hands.\r\nTheatrical release poster by Carl Ramsey\r\nDirected by	Tim Burton\r\nScreenplay by	\r\nMichael McDowell\r\nWarren Skaaren\r\nStory by	\r\nMichael McDowell\r\nLarry Wilson\r\nProduced by	\r\nMichael Bender\r\nLarry Wilson\r\nRichard Hashimoto\r\nStarring	\r\nAlec Baldwin\r\nGeena Davis\r\nJeffrey Jones\r\nCatherine O\'Hara\r\nWinona Ryder\r\nMichael Keaton\r\nCinematography	Thomas E. Ackerman\r\nEdited by	Jane Kurson\r\nMusic by	Danny Elfman\r\nProduction\r\ncompany	\r\nThe Geffen Company\r\nDistributed by	Warner Bros.\r\nRelease date	\r\nMarch 30, 1988\r\nRunning time	92 minutes\r\nCountry	United States\r\nLanguage	English\r\nBudget	$15 million[1]\r\nBox office	$84.5 million[2]\r\nBeetlejuice is a 1988 American dark fantasy comedy horror[3][4] film directed by Tim Burton from a screenplay by Michael McDowell and Warren Skaaren based on a story by McDowell and Larry Wilson. The film stars Alec Baldwin, Geena Davis, Jeffrey Jones, Catherine O\'Hara, Winona Ryder, and Michael Keaton as the title character.\r\n\r\nThe first installment of the Beetlejuice franchise, the plot revolves around a recently deceased couple. As ghosts, they are not allowed to leave their house. They contact Betelgeuse,[a] a charismatic \"bio-exorcist\", to scare the house\'s new inhabitants away. The film prominently features music from Harry Belafonte\'s albums Calypso and Jump Up Calypso.\r\n\r\nBeetlejuice was released in the United States on March 30, 1988, by Warner Bros. The film was a critical and commercial success, grossing $75 million on a $15 million budget. It won the Academy Award for Best Makeup and three Saturn Awards: Best Horror Film, Best Makeup and Best Supporting Actress for Sylvia Sidney. The film\'s success spawned an animated television series, video games and a 2018 stage musical.\r\n\r\nA sequel, Beetlejuice Beetlejuice, had its theatrical release on September 6, 2024','Tim Burton','Alec Baldwin (Adam)','Geena Davis (Barbara)','Annie McEnroe (Jane Butterfield)','Maurice Page (Ernie)',1988,'beetlejuice_lxMsvL3.jpg'),(6,'Speak No Evil','speak_no_evil','Speak No Evil is a 2024 American psychological horror film written and directed by James Watkins. A remake of the 2022 Danish film of the same name, the film stars James McAvoy, Mackenzie Davis, Aisling Franciosi, Alix West Lefler, Dan Hough, and Scoot McNairy and follows an American family who are invited to stay at a remote farmhouse of a British couple for the weekend, the hosts soon begin to test the limits of their guests as the situation escalates. Jason Blum serves as a producer through his Blumhouse Productions banner.\r\n\r\nSpeak No Evil premiered at the DGA Theater in New York City on September 9, 2024, and was released in the United States by Universal Pictures on September 13, 2024. The film received generally positive reviews from critics and has grossed $20 million worldwide against a budget of $15 million.','James Watkins','James McAvoy (Paddy)','Mackenzie Davis (Louise Dalton)','Scoot McNairy (Ben Dalton)','Aisling Franciosi (Ciara)',2024,'speak_no_evil_xQfnrSZ.jpg'),(7,'Deadpool & Wolverine','deadpool_wolverine','This article is about the 2024 film. For the comic book, see Wolverine and Deadpool.\r\nDeadpool & Wolverine\r\nDeadpool holds his gun against Wolverine.\r\nTheatrical release poster\r\nDirected by	Shawn Levy\r\nWritten by	\r\nRyan Reynolds\r\nRhett Reese\r\nPaul Wernick\r\nZeb Wells\r\nShawn Levy\r\nBased on	Marvel Comics\r\nProduced by	\r\nKevin Feige\r\nLauren Shuler Donner\r\nRyan Reynolds\r\nShawn Levy\r\nStarring	\r\nRyan Reynolds\r\nHugh Jackman\r\nEmma Corrin\r\nMorena Baccarin\r\nRob Delaney\r\nLeslie Uggams\r\nAaron Stanford\r\nMatthew Macfadyen\r\nCinematography	George Richmond\r\nEdited by	\r\nDean Zimmerman\r\nShane Reid\r\nMusic by	Rob Simonsen\r\nProduction\r\ncompanies	\r\nMarvel Studios\r\nMaximum Effort\r\n21 Laps Entertainment\r\nDistributed by	Walt Disney Studios Motion Pictures\r\nRelease dates	\r\nJuly 22, 2024 (David H. Koch Theater)\r\nJuly 26, 2024 (United States)\r\nRunning time	128 minutes[1]\r\nCountry	United States\r\nLanguage	English\r\nBudget	$200 million[2]\r\nBox office	$1.305 billion[3][4]\r\nDeadpool & Wolverine is a 2024 American superhero film based on Marvel Comics featuring the characters Deadpool and Wolverine. Produced by Marvel Studios, Maximum Effort, and 21 Laps Entertainment, and distributed by Walt Disney Studios Motion Pictures, it is the 34th film in the Marvel Cinematic Universe (MCU) and the sequel to Deadpool (2016) and Deadpool 2 (2018). The film was directed by Shawn Levy from a screenplay he wrote with Ryan Reynolds, Rhett Reese, Paul Wernick, and Zeb Wells. Reynolds and Hugh Jackman respectively star as Wade Wilson / Deadpool and Logan / Wolverine, alongside Emma Corrin, Morena Baccarin, Rob Delaney, Leslie Uggams, Aaron Stanford, and Matthew Macfadyen. In the film, Deadpool learns that the Time Variance Authority is set to destroy his home universe and works with a reluctant Wolverine from another universe to stop them.\r\n\r\nDevelopment on a third Deadpool film began at 20th Century Fox by November 2016, but was placed on hold after the studio was acquired by Disney in March 2019. Control of the character and Fox\'s X-Men film series was transferred to Marvel Studios, which began developing a new film with Reynolds. It integrates Deadpool with the MCU and retains the R rating of the previous Deadpool films, a first for the MCU. Wendy Molyneux and Lizzie Molyneux-Logelin joined in November 2020 as writers. Reese and Wernick returned from the previous films for rewrites by March 2022, when Levy was hired as director. They, along with Reynolds and Wells, had difficulty figuring out the film\'s story until Jackman decided to reprise his role as Wolverine from the X-Men films in August 2022. Several other actors from the X-Men films and other Marvel productions also returned as part of the film\'s multiverse story, which serves as a tribute to Fox\'s Marvel films. Filming began in May 2023 at Pinewood Studios in England, with additional filming in Norfolk, Los Angeles, and at Bovingdon Film Studios. Production was suspended in July due to the 2023 SAG-AFTRA strike, but resumed in November and wrapped in January 2024. The title was revealed a month later.\r\n\r\nDeadpool & Wolverine premiered on July 22, 2024, at the David H. Koch Theater in New York City, and was released across the United States on July 26 as part of Phase Five of the MCU. It has grossed over $1.30 billion worldwide, becoming the 22nd-highest-grossing film of all time, the highest-grossing R-rated film of all time and the second-highest-grossing film of 2024.','Shawn Levy','Ryan Reynolds (Deadpool)','Hugh Jackman (Wolverine)','Emma Corrin (Cassandra Nova)','Matthew Macfadyen (Mr. Paradox)',2024,'deadpool_wolverine_z7WuMSb.jpg'),(8,'Eden','eden','Eden is a 2024 American survival thriller film directed by Ron Howard and written by Noah Pink from a story by Pink and Howard.[2] It stars Ana de Armas, Vanessa Kirby, Sydney Sweeney, Jude Law, Daniel Brühl, Felix Kammerer, Toby Wallace and Richard Roxburgh. The movie is based on the true story of a few European settlers coming to Floreana island.[3]\r\n\r\nThe film premiered at the Toronto International Film Festival on September 7, 2024.\r\n\r\nDr. Friedrich Ritter and his wife Dora Strauch flee their native Germany in 1929, repudiating the bourgeois values they believe are corroding mankind’s true nature. On the isle of Floreana, Friedrich can focus on writing his manifesto, while Dora resolves to cure her multiple sclerosis through meditation. Their hard-won solitude, however, is short lived.\r\n\r\nThey are joined by Margaret and Heinz Wittmer, who prove to be earnest, capable settlers. Next comes Eloise Bosquet de Wagner Wehrhorn a self-described Baroness and the “embodiment of perfection,” who arrives with two devoted lovers, an Ecuadorian servant, a wardrobe full of evening gowns, and plans to erect a luxury hotel. Between inclement weather, unruly wildlife, and a total lack of amenities, all three groups find life on Floreana arduous. But nothing will test their mettle more than the challenge of coexisting with desperate neighbours capable of theft, deception, and worse.','Ron Howard','Sydney Sweeney (Margret Wittmer)','Ana de Armas (The Baroness)','Vanessa Kirby (Dora Ritter)','Jude Law (Dr. Friedrich Ritter)',2024,'eden_aZIP9qq.jpg'),(9,'Alien: Romulus','alien_romulus','Alien: Romulus is a 2024 American science fiction horror film directed by Fede Álvarez and written by Álvarez and Rodo Sayagues. Produced by Scott Free Productions and Brandywine Productions, it is part of the Alien franchise, set between the events of Alien (1979) and Aliens (1986). The film stars Cailee Spaeny, David Jonsson, Archie Renaux, Isabela Merced, Spike Fearn, and Aileen Wu. It follows three pairs of siblings,[4][5][6] all downtrodden young space colonists, who encounter hostile creatures while scavenging a derelict space station.\r\n\r\nAt CinemaCon in April 2019, 20th Century Fox announced their plans to produce future Alien films. Álvarez was attached as director in March 2022, and Spaeny joined as the lead later that year. Filming took place from March to July 2023. Alien: Romulus premiered in Los Angeles on August 12, 2024, and was theatrically released in the United States by 20th Century Studios on August 16. It received positive reviews from critics and has grossed over $330 million worldwide.','Fede Alvarez','Cailee Spaeny (Rain)','David Jonsson (Andy)','Archie Renaux (Tyler)','Isabela Merced (Kay)',2024,'alien_romulus_dfZ4ePF.jpg'),(10,'The Apprentice','the_apprentice','The Apprentice is an American reality television program that judged the business skills of a group of contestants. It ran in various formats across fifteen seasons on NBC from 2004 to 2017. The Apprentice was created by British television producer Mark Burnett,[1] and co-produced with Donald Trump, who was the show\'s host for the first fourteen seasons.[2] Billed as \"The Ultimate Job Interview\", seven of the show\'s seasons featured aspiring, but otherwise unknown, businesspeople who would vie for the show\'s prize, a one-year $250,000 starting contract to promote one of Donald Trump\'s properties. The show features 14 to 18 such business people who compete over the course of the season, with usually one contestant eliminated per episode. Contestants are split into two \"corporations\" (teams), with one member from each volunteering as a project manager on each new task. The corporations complete business-related tasks such as selling products, raising money for charity, or creating an advertising campaign, with one corporation selected as the winner based on objective measures and subjective opinions of the host and the host\'s advisors who monitor the teams\' performance on tasks. The losing corporation attends a boardroom meeting with the show\'s host and their advisors to break down why they lost and determine who contributed the least to the team. Episodes ended with the host eliminating one contestant from the competition, with the words \"You\'re fired!\"\r\n\r\nThere have also been eight seasons of The Celebrity Apprentice since 2008. In this format, several celebrities would participate to win money for their chosen charities, with the final prize being a large donation to the celebrity\'s charity and the title of \"Apprentice\". A reboot of this format, The New Celebrity Apprentice, aired in January 2017. The U.S. series originated a franchise of international television shows collectively known as The Apprentice, which has had over 20 local versions.\r\n\r\nTrump was fired by NBC[3] when the studio disagreed with remarks he made about Mexican immigrants during his announcement that he was running for President of the United States[4] on June 16, 2015. It was announced in September 2015 that actor and former California governor Arnold Schwarzenegger would become the new host of The Celebrity Apprentice,[5][6] starting January 2017. Lifestyle mogul Martha Stewart hosted a one-season spin-off titled The Apprentice: Martha Stewart in 2005.','Ali Abbasi','Sebastian Stan (Donald Trump)','Jeremy Strong (Roy Cohn)','Maria Bakalova (Ivana Trump)','Martin Donovan (Fred Trump)',2024,'the_apprentice_jFIyNGV.jpg'),(11,'Longlegs','longlegs','Longlegs is a 2024 American horror-thriller film written and directed by Osgood Perkins, and starring Maika Monroe, Nicolas Cage, Blair Underwood, and Alicia Witt. Set in the 1990s, it follows an FBI agent tasked with tracking down an occultist serial killer responsible for murdering multiple families throughout the state of Oregon, without having been physically present in the crimes. Cage also served as a producer on the film through his Saturn Films production company.\r\n\r\nLonglegs was released in the United States by Neon on July 12, 2024. It received positive reviews and grossed $104.1 million worldwide, becoming Neon\'s highest-grossing film to date domestically, as well as the highest-grossing independent film of the year.\r\nIn 1974 Oregon, a young girl with a Polaroid camera follows a mysterious voice and encounters an erratic man in pale makeup.\r\n\r\nIn the 1990s, FBI agent Lee Harker, who exhibits possible clairvoyance, is assigned by her supervisor William Carter to a case involving a series of murder–suicides in Oregon. Each case involves a father killing his family and himself, leaving behind a letter with Satanic coding signed \"Longlegs\", whose handwriting belongs to none of the family members. Lee discovers that each family had a 9-year-old daughter born on the 14th of the month, the murders all occurred within six days before or after the birthday itself, and the murders form an occult triangle symbol on a calendar, with one date missing. While talking to her mother Ruth, Lee receives a coded birthday card from Longlegs, warning her that revealing the source of the code will lead to her mother\'s murder.\r\n\r\nFollowing a clue, Lee and Carter find a doll with a high-energy metal orb inside. After visiting a mental hospital to question Carrie Anne Camera, the sole survivor of Longlegs\'s attacks, who was visited previously by someone using Lee\'s name, Carter suspects Lee\'s connection to Longlegs. Discovering that Ruth had filed a police report of an intruder approaching Lee on her ninth birthday, Carter encourages Lee to talk to her. Ruth directs Lee to childhood belongings, where she finds a Polaroid of the pale-faced man, revealing Longlegs to be the man who had visited a young Lee on her birthday. Lee submits the photo, leading to Longlegs\'s arrest. Realizing the missing date is that day, Lee fears an accomplice will commit another murder. In the interrogation room, Longlegs claims to serve \"the man downstairs\" and hints at Ruth\'s involvement before killing himself. Lee is soon informed that Carrie has committed suicide.\r\n\r\nAgent Browning drives Lee to her mother\'s home, where Lee witnesses Ruth kill Browning with a shotgun. Ruth then destroys a doll resembling young Lee, causing Lee to lose consciousness. Lee sees that Ruth has been Longlegs\'s accomplice since her childhood. Longlegs forced Ruth to choose between her daughter\'s death and his bidding, leading her to comply and spare Lee. Longlegs has lived in the Harker basement, creating Satanic dolls that Ruth, posing as a nun, delivered to households, influencing the patriarchs to commit familicide. Lee\'s doll blocked her memories of Longlegs whilst influencing her with his magic.\r\n\r\nLee awakens in the basement and hears a demonic voice on the phone warning her about William Carter\'s daughter Ruby\'s ninth birthday party, which had been scheduled for that day. Lee rushes to save the Carters, whose deaths would complete Longlegs\'s triangle. She finds the family already possessed, with Ruth having delivered the doll. After William kills his wife Anna, Lee shoots him to protect Ruby. Ruth attacks with a dagger, forcing Lee to kill her. Lee tries to destroy the doll but her gun does not discharge. She tells Ruby they need to leave but remains staring at the doll.','Osgood Perkins','Maika Monroe (Agent Lee Harker)','Nicolas Cage (Longlegs)','Blair Underwood (Agent Carter)','Alicia Witt (Ruth Harker)',2024,'longles2024_YitfZVD.jpg'),(12,'Joker: Folie à Deux','joker_folie_a_deux','Joker: Folie à Deux[a] is a 2024 American musical psychological thriller film directed by Todd Phillips from a screenplay co-written with Scott Silver. It is the sequel to Joker (2019), loosely based on DC Comics characters, and stars Joaquin Phoenix reprising his role as the Joker with Lady Gaga joining the cast as his love interest Harley Quinn. Zazie Beetz also reprises her role from the previous film, while Brendan Gleeson and Catherine Keener also join the cast. It is produced by Warner Bros. Pictures and DC Studios in association with Joint Effort.\r\n\r\nJoker was conceived as a standalone film, although Warner Bros. intended for the film to launch a DC Black film series. Phillips expressed interest in making a sequel but confirmed that Joker was not set up to have one. The sequel entered development in June 2022, with Gaga and Beetz joining later that year. Principal photography took place in New York City, Los Angeles, and Belleville, New Jersey, from December 2022 to April 2023.\r\n\r\nJoker: Folie à Deux premiered at the 81st Venice International Film Festival on September 4, 2024,[5] and is scheduled for an international theatrical release on October 2, 2024, followed by the United States on October 4. Like the first film, Folie à Deux divided critics, with praise for the production design, costumes, musical sequences, and the performances of Phoenix and Gaga, and criticism for plotting, characterization, and themes.','Todd Phillips','Joaquin Phoenix (Arthur Fleck)','Zazie Beetz (Sophie Dumond)','Lady Gaga (Harley Quinn','Brendan Gleeson (Jackie Sullivan',2024,'joker_folie_a_deux_xpzdoA0.jpg'),(13,'Trap','trap','Trap is a 2024 American psychological thriller film written, directed, and produced by M. Night Shyamalan. Starring Josh Hartnett, Ariel Donoghue, Saleka Night Shyamalan, Hayley Mills, and Alison Pill, it follows a serial killer evading a police blockade while attending a concert with his daughter. The film premiered in New York City on July 24, 2024, and was theatrically released in the United States by Warner Bros. Pictures on August 2, 2024. It received mixed reviews from critics and has grossed $80.8 million worldwide.\r\n\r\nPhiladelphia firefighter Cooper Adams takes his teenage daughter, Riley, to pop star Lady Raven\'s concert as a reward for her good grades. There, Cooper notices the unusually high police presence around the concert venue. He learns from a vendor named Jamie that the FBI plans to catch a serial killer known as \"the Butcher\", having learned he will be in attendance. Cooper is revealed to be the Butcher himself, secretly checking footage on his phone of his latest captive victim, Spencer, in a basement. He steals Jamie\'s ID card and learns the passphrase that will identify him as an employee, using the card to gain access to a back room and steal a police radio.\r\n\r\nHearing a woman predicting his movements over the radio, Cooper sets off an explosion in a food stand\'s kitchen and uses the chaos to access the roof, where he learns from a police officer that the manhunt is led by Dr. Josephine Grant, an FBI profiler. Confused by Cooper\'s behavior, Riley asks him to stay with her. She talks about being chosen as Lady Raven\'s \"Dreamer Girl\", who gets to dance on stage with the singer and receives backstage access, which Cooper believes has the only exit not covered by the police. Cooper lies to Lady Raven\'s uncle that Riley recently recovered from leukemia, getting her selected to be the \"Dreamer Girl\".\r\n\r\nHowever, after the concert ends, Cooper learns that police are also guarding the backstage exit. He privately reveals himself as the Butcher to Lady Raven, threatening to remotely kill Spencer if she does not escort him and Riley out in her limousine. She complies but asks to come to Riley\'s house, where she stalls for time by explaining the FBI operation to the family, unsettling Cooper by describing Grant\'s profile of him as someone with maternal issues and obsessive–compulsive disorder. She also explains that the police discovered details about the Butcher\'s attendance at the concert via a torn ticket receipt left in a vacant house that was reported anonymously.\r\n\r\nLady Raven steals Cooper\'s phone and locks herself in the bathroom. She obtains details from Spencer about where he was taken and livestreams it to her fans, one of whom finds and rescues him. She outs Cooper to his wife, Rachel, and he locks his family upstairs while Lady Raven texts her driver to contact the police. Cooper attempts to drive off with Lady Raven, but Cooper\'s family escapes and distracts him long enough for her to flee into her limousine. The police arrive and Cooper flees the house through a secret tunnel before disguising himself using a SWAT uniform and driving the limousine off with Lady Raven. After he reveals his identity, she unlocks the window and draws a mob of fans to stop him so the FBI can catch up, but Cooper changes into a fresh set of civilian clothes and gets away.\r\n\r\nCooper returns home and confronts Rachel. Rachel confesses that she had suspected he was the Butcher and left the receipt in the vacant house for the police to find, thus revealing that she was the one who tipped them off. Cooper decides to kill her and then himself, but Rachel persuades him to share some leftover pie made for Riley. After Cooper admits his hatred for Rachel in causing him to miss seeing his children grow up, he realizes Rachel drugged the pie with pills from his tool bag, leading him to hallucinate his mother expressing pride in him for feeling a real emotion. The hallucination is actually Grant, impersonating Cooper\'s mother to calm him down, and he is tased by SWAT officers as he walks up to her. As he is led away, he stops to adjust Riley\'s bicycle and shares a tearful embrace with her before being loaded into a police van. As it drives away, Cooper starts to pick his cuffs with a bicycle spoke he secretly took, laughing to himself. In a mid-credits scene, Jamie learns of Cooper\'s identity while watching the news.','M. Night Shyamalan','Josh Hartnett (Cooper)','Ariel Donoghue (Riley','Saleka Shyamalan (	Lady Raven','Alison Pill (Rashel)',2024,'trap_yVEJ0bB.jpg'),(14,'The Deliverance','the_deliverance','The Deliverance is a 2024 American supernatural horror film directed by Lee Daniels and written by David Coggeshall, and Elijah Bynum. Inspired by the Ammons haunting case,[1] it stars Andra Day with Rob Morgan, Caleb McLaughlin, Aunjanue Ellis-Taylor, Tasha Smith, Omar Epps, Mo\'Nique, and Glenn Close.\r\n\r\nBased on the Jackson family in Indiana, they move into a house where they soon experience strange, demonic occurrences that eventually convince them and the community that the house is a gateway to hell.\r\n\r\nThe film was released in select theaters on August 16, 2024, and began streaming on Netflix on August 30.\r\nEbony Jackson is a mother of three: eldest teen son Nate, teen daughter Shante, and youngest son Dre. The four have just moved into a new home, their third in a short time frame. They are joined by Ebony\'s elderly mother Alberta, who has cancer and recently became a Christian. Unbeknownst to Alberta, her insurance stopped covering treatment; to prevent a change to a lesser care facility, Ebony has been paying for it out of her own pocket. This has put her in arrears on many expenses, sending her into collections.\r\n\r\nComplicating matters further is Ebony\'s personal issues. In addition to having a criminal past that includes serving time in prison, she also has a history of alcohol abuse, and when drinking, becomes physically violent with her children. This has led to the intervention of Child Protective Services, and she has been assigned caseworker Cynthia, with whom the family have a contentious relationship.\r\n\r\nDre starts talking about and to an unseen presence whom he calls Tre, whom he says takes residence alternately in the basement and bedroom closet. A dead cat appears in the basement, where there is a large hole in the unfinished concrete floor, and on multiple occasions, Dre has gone there only to be found afterward in a catatonic state.\r\n\r\nShante and Nate also start acting unusual. One evening a drunken Ebony hears a banging coming from the children\'s bedroom; she rushes in angrily. Alberta hears the children screaming and comes in to find a huge hole in the wall with Ebony sitting on the floor with a baseball bat. Ebony denies any wrongdoing.\r\n\r\nCynthia visits the home after being unable to find Ebony at her prior address, and confronts her about bruises on the children. The whole family denies Ebony\'s responsibility. The family notices a woman in a car watching them, assuming she is connected to Cynthia. That day at school all three children have inexplicable psychiatric incidents, leading to their hospitalization and evaluation. Doctors find nothing wrong with them and send them home.\r\n\r\nThe woman in the car ends up confronting Ebony and telling her she is a Pentecostal pastor who tried to prevent an incident in the house 20 years earlier in which a mother slaughtered her family and killed herself. She claims a demon possessed the woman and the demon is now possessing Ebony\'s family. Ebony initially doesn\'t believe her but returns home to find Alberta\'s crucifix on the wall aflame and Alberta herself dead by Dre\'s hand. The children are taken into custody and Ebony is given a psychiatric evaluation, but Cynthia convinces them not to commit her.\r\n\r\nHours later Cynthia witnesses Dre climb backwards up a wall and realizes something supernatural is occurring. The pastor prays the sinner\'s prayer with Ebony, who becomes a believer. She then helps Ebony kidnap Dre from the hospital and bring him home where they attempt a deliverance prayer. The demon Tre uses Dre to kill the pastor, and has a battle against Ebony, who uses holy anointing oil against him. Meanwhile her other children are possessed remotely and begin manifesting supernatural injuries.\r\n\r\nNearly killed by the demon, at the last moment Ebony calls upon Jesus to help her. Suddenly filled with the Holy Spirit, she begins speaking in tongues and successfully exorcises the demon. During the deliverance, Ebony\'s other children develop stigmata.\r\n\r\nAfterwards, Ebony and Cynthia agree to work together to regain full custody of the children, and she gifts Cynthia a cross necklace to help instill a deeper faith in her. Six months later, Ebony is reunited with her children. They drive to Philadelphia as she announces that she and their father are reconciling.','Lee Daniels','Andra Day (Ebony)','Glenn Close (Alberta)','Anthony B. Jenkins (Andre)','Caleb McLaughlin (Nate)',2024,'the_deliverance_51ZSX3G.jpg'),(15,'The Dark Knight','the_dark_knight','The Dark Knight is a 2008 superhero film directed by Christopher Nolan, from a screenplay co-written with his brother Jonathan. Based on the DC Comics superhero Batman, it is the sequel to Batman Begins (2005), and the second installment in The Dark Knight trilogy. The plot follows the vigilante Batman, police lieutenant James Gordon, and district attorney Harvey Dent, who form an alliance to dismantle organized crime in Gotham City. Their efforts are derailed by the Joker, an anarchistic mastermind who seeks to test how far Batman will go to save the city from chaos. The ensemble cast includes Christian Bale, Michael Caine, Heath Ledger, Gary Oldman, Aaron Eckhart, Maggie Gyllenhaal, and Morgan Freeman.\r\n\r\nWarner Bros. Pictures prioritized a sequel following the successful reinvention of the Batman film series with Batman Begins. Christopher and Batman Begins co-writer David S. Goyer developed the story elements, making Dent the central protagonist caught up in the battle between Batman and the Joker. In writing the screenplay, the Nolans were influenced by 1980s Batman comics and crime drama films, and sought to continue Batman Begins\' heightened sense of realism. From April to November 2007, filming took place with a $185 million budget in Chicago and Hong Kong, and on sets in England. The Dark Knight was the first major motion picture to be filmed with high-resolution IMAX cameras. Christopher avoided using computer-generated imagery unless necessary, insisting on practical stunts such as flipping an 18-wheel truck and blowing up a factory.\r\n\r\nThe Dark Knight was marketed with an innovative interactive viral campaign that initially focused on countering criticism of Ledger\'s casting by those who believed he was a poor choice to portray the Joker. Ledger died from an accidental prescription drug overdose in January 2008, leading to widespread interest from the press and public regarding his performance. When it was released in July, The Dark Knight received acclaim for its mature tone and themes, visual style, and performances—particularly that of Ledger, who received many posthumous awards including Academy, BAFTA, and Golden Globe awards for Best Supporting Actor, making The Dark Knight the first comic-book film to receive major industry awards. It broke several box-office records and became the highest-grossing 2008 film, the fourth-highest-grossing film to that time, and the highest-grossing superhero film.\r\n\r\nSince its release, The Dark Knight has been assessed as one of the greatest superhero films ever, one of the best movies of the 2000s, and one of the best films ever made. It is considered the \"blueprint\" for many modern superhero films, particularly for its rejection of a typical comic-book movie style in favor of a crime film that features comic-book characters. Many filmmakers sought to repeat its success by emulating its gritty, realistic tone to varying degrees of success. The Dark Knight has been analyzed for its themes of terrorism and the limitations of morality and ethics. The United States Library of Congress selected it for preservation in the National Film Registry in 2020. A sequel, The Dark Knight Rises, concluded The Dark Knight trilogy in 2012.','Christopher Nolan','Christian Bale (Bruce Wayne / Batman)','Heath Ledger (Joker)','Aaron Eckhart (Harvey Dent)','Michael Caine (Alfred)',2008,'the_dark_knight_1_yW65hF4.jpg');
/*!40000 ALTER TABLE `movies_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',21),('django_admin_log',17),('django_content_type',8),('auth_permission',32),('auth_group',0),('auth_user',3),('movies_movie',15),('movies_comment',5);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:46