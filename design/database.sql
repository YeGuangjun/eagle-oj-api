-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: eagle_oj
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '0 失效 待删除\n1 有效',
  `upload_time` bigint(13) unsigned NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (1,14,'123123dse',1,1510486741972),(2,14,'123123dse',1,1510486744070),(3,14,'2017/10/13/d6cb7a12-a4f6-445b-bf02-3f8511de784f.py',1,1510564350031),(4,14,'2017/10/13/cd699257-290c-4171-ba54-dbad883ab204.py',1,1510571431147),(5,14,'2017/10/13/e7a2c2f6-ca0b-4406-8daf-1b4b33da4514.py',1,1510571480147),(6,14,'2017/10/13/c9350af9-ca10-42fd-a090-c225756d79a8.py',1,1510571633307),(7,14,'2017/10/13/5abf6874-3282-4798-aad5-63d3a7071d89.py',1,1510571829273),(8,14,'2017/10/14/791c98cb-4a81-49c7-a07d-e5283ee1c19e.py',1,1510647016892),(9,14,'2017/10/14/25a4c4f8-e520-4284-ab58-8f8b4b62a5d9.py',1,1510647023431),(10,14,'2017/10/16/c55be3cf-a643-4f1d-be05-e04413d004c7.py',1,1510832409352),(11,14,'2017/10/16/bf3699b3-2f0b-4b4a-97b4-8cb1d6cb5c66.py',1,1510832619465),(12,14,'2017/10/16/fcdf88b6-b9ac-4e6f-9fd7-da9b5d9677a6.py',1,1510832751645),(13,14,'2017/10/16/503c9554-af52-41ef-ac17-ec6c267da7ee.py',1,1510833023748),(14,14,'2017/10/16/c704a75e-1ee3-4c22-852b-c41ca0c2d838.py',1,1510833257525),(15,14,'2017/10/16/6ef2c421-56e9-48f2-b059-c2a2e2e7cd1e.py',1,1510833536594),(16,14,'2017/10/16/d6284e97-1906-4f3a-97f0-f2e82e7f8750.py',1,1510833624006),(17,14,'2017/10/16/de5d284a-5fe5-4735-ae9e-2d47264548d8.py',1,1510833767319),(18,14,'2017/10/16/105e0bee-8377-4e2c-be17-d4252c11688a.py',1,1510833814878),(19,14,'2017/10/16/4a4b7a54-0586-4d18-8185-bcb198942adb.py',1,1510833897877),(20,14,'2017/10/16/9cf73a09-a74d-40b0-a7a5-e9938f602e80.py',1,1510833928528),(21,14,'2017/10/16/014b5e6e-88c8-4094-96b5-914991c601b9.py',1,1510833962117),(22,14,'2017/10/16/4c076b51-db6c-46c2-8e99-0737e3373651.py',1,1510835715417),(23,14,'2017/10/16/b51a79a5-cf1c-46d5-8ffa-415034674edb.py',1,1510835767436),(24,14,'2017/10/16/683f3f49-881e-42c5-8e37-fd8a3b6ff3e9.py',1,1510836121338),(25,14,'2017/10/16/ecd46388-e905-465f-88c5-971ee95f6aed.py',1,1510836256961),(26,35,'2017/10/29/2b9a585d-e603-43d5-be33-5476006a5288.jpg',1,1511956980040),(27,35,'/2017/10/29/edce59d5-1577-4632-a213-a6281b0b9777.jpg',1,1511957315739),(28,35,'/2017/10/29/ae9c7dd0-84ad-451f-8170-ec31d8e9647d.jpg',1,1511957332535),(29,35,'/2017/10/29/10bfeeff-3d21-464f-9aa2-c4725d2830dc.jpg',1,1511957382523),(30,35,'/2017/10/29/2a815761-2cdb-41ee-88d8-879799730050.jpg',1,1511957397393),(31,35,'/2017/10/29/7e7a3291-b7e0-4a8a-a4be-5c09cc8a1962.jpg',1,1511957403053),(32,1,'testurl',1,1512302834899),(33,35,'/2017/11/10/a688b56e-0d21-43c7-a0db-00b22dfd3c62.py',1,1512889441047),(34,35,'/2017/11/10/74e927d8-6d60-4f44-b9e6-973dbfdfbb5b.py',1,1512889563671),(35,35,'/2017/11/10/60888e0a-808e-4924-9d20-21b94565f67f.py',1,1512889640689),(36,35,'/2017/11/10/6f343975-f3a0-408a-abb3-e1164ecffd4d.py',1,1512889837974),(37,35,'/2017/11/10/786fc479-a448-499d-b3b2-1e05123d085c.py',1,1512890081300),(38,35,'/2017/11/10/5336900b-8e0a-487a-9d5f-39974cf32c08.py',1,1512890093395),(39,35,'/2017/11/10/4039d485-dd68-4f70-a582-1f311f4a71b2.py',1,1512890122654),(40,35,'/2017/11/10/2a9564e8-fc36-4843-88bb-b834fe82305c.py',1,1512893628781),(41,35,'/2017/11/10/d67fac02-8718-4e50-a6e9-3be9810cab90.py',1,1512893939188),(42,35,'/2017/11/10/3e219d30-6efd-4dea-8eb4-420fe3490541.py',1,1512893979315),(43,35,'/2017/11/10/67b9017f-03a9-4d65-9712-3f50ebfa5ba5.py',1,1512893979718),(44,35,'/2017/11/10/f7f26ac1-2ec5-4b3c-a633-607a54fc1f1b.py',1,1512893979990),(45,35,'/2017/11/10/85e8f42e-86e3-4eb2-9ca9-606bacdba454.py',1,1512893982527),(46,35,'/2017/11/10/7da81283-8d89-453f-9a8d-afeb005243a7.py',1,1512893992944),(47,35,'/2017/11/10/f07ec6de-64f5-4976-99b2-0273c7523520.py',1,1512893993759),(48,35,'/2017/11/10/22ed4b0e-db17-4a0c-bbf6-635c40cb157f.py',1,1512893994421),(49,35,'/2017/11/10/e862c37a-14a6-4850-9b7c-6b8f56d5db17.py',1,1512894300087),(50,35,'/2017/11/11/782d4872-5cdb-4f2d-8b37-5951000b8135.py',1,1512962187286),(51,35,'/2017/11/11/48cafabd-4020-49d2-af77-13d7072e92c8.py',1,1512962310298),(52,35,'/2017/11/11/537d34d9-91fb-4e57-be3f-40e66435d49b.py',1,1512963061617),(53,35,'/2017/11/11/f56f6e93-41cd-46b9-9f11-0f8595064e1a.py',1,1512963126150),(54,35,'/2017/11/11/111c8334-22ed-4491-8a91-21ab0e98c1e1.py',1,1512963226267),(55,35,'/2017/11/11/04ca4cf9-477d-4a42-ac10-121279fb7bf5.py',1,1512963283076),(56,35,'/2017/11/13/cffab29d-b13f-48c0-9107-6956ac468f10.py',1,1513158419607),(57,35,'/2017/11/13/4bcafb01-2a29-403c-8091-c93a9482819c.py',1,1513158778511),(58,35,'/2017/11/15/7d4d9ca1-8ba8-4fa5-964f-02e939a7d199.c',1,1513305875037),(59,35,'/2017/11/16/cbf6dd5e-fb51-409f-bf2a-d7dab34b8507.java',1,1513436332352),(60,35,'/2017/11/16/61639fc5-120a-40c1-8bda-92e80a45b1ec.java',1,1513436345724),(61,35,'/2017/11/16/7cd6bdc0-a6c6-4ce8-ab45-bc2ac83af58d.java',1,1513436436163),(62,35,'/2017/11/16/e52a0f05-553b-4ffd-91cf-80bd5812a89c.c',1,1513436804974),(63,35,'/2017/11/18/01d27425-c966-4afa-ac5f-f1ae0b9ad490.java',1,1513565329101),(64,35,'/2017/11/18/302864c6-8796-49cc-84b7-9cd1e022fbc7.java',1,1513565426871),(65,35,'/2017/11/18/6729444f-42b1-4ebb-b809-569931fae381.java',1,1513565468590),(66,35,'/2017/11/18/846bdb00-4bec-4c65-82b6-ec6da5845fbf.c',1,1513565493604),(67,35,'/2017/11/18/2a24ad4e-c5ad-46da-af84-e20578f48396.py',1,1513566046970),(68,35,'/2017/11/18/6d5da777-cc74-4d15-941b-03fede8baa19.py',1,1513566157698),(69,35,'/2017/11/18/c416b296-7c90-43db-83d7-acdf9f1061c4.py',1,1513566193893),(70,35,'/2017/11/18/01ae2eae-f1c4-452e-9185-174e8863e690.py',1,1513572066086),(71,35,'/2017/11/18/87344467-eaee-48c7-8dc6-3f1f4ba60347.java',1,1513588807494),(72,35,'/2017/11/18/97ea6603-b1f6-4273-9c7c-d133a964569f.java',1,1513589002931),(73,35,'/2017/11/18/d4f2d8fc-6e7e-4e33-98bb-73fd02b0112e.java',1,1513589055850),(74,35,'/2017/11/18/efa6ceae-5c44-46db-9eda-ca680e865db7.java',1,1513589145888),(75,35,'/2017/11/18/8f3d6da4-45d5-4d9b-a837-41d86a0e5a9b.java',1,1513589198309),(76,35,'/2017/11/18/8fc5722b-1c51-4875-98bd-fd85e5854a75.py',1,1513590336327),(77,35,'/2017/11/18/438be04a-498d-4a39-971b-b391ea90326a.py',1,1513590853229),(78,37,'/2017/11/18/cd632d25-420f-4352-b4dd-0f70d375d5e1.c',1,1513594238891),(79,35,'/2017/11/21/3014d7fd-dded-4a1d-856b-29a4acec2b99.c',1,1513860193465),(80,35,'/2017/11/21/70cdc952-1e28-4083-825b-3b47ad28ae75.py',1,1513860339210),(81,35,'/2017/11/22/2ab1baa4-fe1c-4c76-909f-2ceb64e054e9.c',1,1513911475988),(82,35,'/2017/11/22/3946f168-aa43-480b-965d-70f444ba80b3.c',1,1513911764050);
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest`
--

DROP TABLE IF EXISTS `contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '比赛名称',
  `owner` int(10) unsigned NOT NULL,
  `slogan` varchar(100) NOT NULL COMMENT '标语',
  `description` varchar(500) NOT NULL,
  `start_time` bigint(13) unsigned NOT NULL,
  `end_time` bigint(13) unsigned NOT NULL COMMENT '0 代表永远不会结束',
  `total_time` bigint(13) unsigned DEFAULT NULL COMMENT '大于0则代表倒计时类型考试',
  `password` char(6) DEFAULT NULL,
  `official` tinyint(1) unsigned NOT NULL COMMENT '0非正式\n1官方',
  `type` tinyint(1) unsigned NOT NULL COMMENT '模式\n0普通模式\n1ACM模式\n时间\n0 普通模式 开始到结束时间\n1 限时模式\n0: 普通比赛 普通时间\n1:普通比赛 限时比赛\n2:ACM比赛 普通时间\n3:ACM比赛 限时比赛',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0编辑中 1开启 2已结束',
  `create_time` bigint(13) unsigned NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest`
--

LOCK TABLES `contest` WRITE;
/*!40000 ALTER TABLE `contest` DISABLE KEYS */;
INSERT INTO `contest` VALUES (1,'红鹰杯1',35,'一起来红颜被吧','这是大红鹰的挑战书',1512745500000,1513353600000,NULL,NULL,0,2,2,1512638522358),(2,'红鹰杯2',35,'红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2','红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2红鹰杯2',1512658800000,1513267200000,720000000,'123456',0,3,2,1512648212424),(3,'test',35,'啊哈哈','而发而非非法',1513699200000,1513872000000,3600000,NULL,0,3,2,1512727885637),(4,'时间测试',35,'good','分',1513785600000,1513872000000,12600000,NULL,0,1,0,1512731412243),(5,'新的比赛',35,'新的比赛新的比赛新的比赛新的比赛','新的比赛',1513872000000,1513958400000,NULL,NULL,0,0,2,1513586277893);
/*!40000 ALTER TABLE `contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_problem`
--

DROP TABLE IF EXISTS `contest_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_problem` (
  `cid` int(10) unsigned NOT NULL COMMENT '对应比赛id',
  `pid` int(10) unsigned NOT NULL,
  `display_id` int(10) unsigned NOT NULL,
  `score` int(10) unsigned NOT NULL,
  `submit_times` int(10) unsigned DEFAULT '0',
  `ac_times` int(10) unsigned DEFAULT '0',
  `wa_times` int(10) unsigned DEFAULT '0',
  `rte_times` int(10) unsigned DEFAULT '0',
  `tle_times` int(10) unsigned DEFAULT '0',
  `ce_times` int(10) unsigned DEFAULT '0',
  UNIQUE KEY `pid_cid_unique` (`pid`,`cid`),
  UNIQUE KEY `cid_displayId_unique` (`cid`,`display_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_problem`
--

LOCK TABLES `contest_problem` WRITE;
/*!40000 ALTER TABLE `contest_problem` DISABLE KEYS */;
INSERT INTO `contest_problem` VALUES (1,1,4,1,0,0,0,0,0,0),(2,1,1,1,6,0,0,3,3,0),(3,1,1,10,0,0,0,0,0,0),(5,1,1,10,8,2,1,0,0,5),(1,2,2,1,0,0,0,0,0,0),(2,2,2,1,0,0,0,0,0,0),(3,2,2,5,0,0,0,0,0,0),(5,2,2,20,2,1,1,0,0,0),(1,3,3,1,0,0,0,0,0,0),(2,3,3,1,0,0,0,0,0,0),(3,3,3,1,0,0,0,0,0,0),(5,3,3,15,1,0,1,0,0,0);
/*!40000 ALTER TABLE `contest_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_problem_user`
--

DROP TABLE IF EXISTS `contest_problem_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_problem_user` (
  `cid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `score` tinyint(2) unsigned NOT NULL,
  `status` enum('AC','WA','RTE','TLE','CE') NOT NULL,
  `solved_time` bigint(13) unsigned NOT NULL,
  `used_time` bigint(13) unsigned NOT NULL,
  UNIQUE KEY `cid_pid_uid_unique` (`cid`,`pid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_problem_user`
--

LOCK TABLES `contest_problem_user` WRITE;
/*!40000 ALTER TABLE `contest_problem_user` DISABLE KEYS */;
INSERT INTO `contest_problem_user` VALUES (2,1,35,0,'TLE',0,0),(5,1,35,10,'AC',1513911764383,39764383),(5,1,37,10,'AC',1513594239130,0),(5,2,35,20,'AC',1513860339393,74739393),(5,2,37,3,'WA',0,0),(5,3,35,7,'WA',0,0);
/*!40000 ALTER TABLE `contest_problem_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_user`
--

DROP TABLE IF EXISTS `contest_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_user` (
  `cid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `submit_times` int(10) unsigned DEFAULT '0',
  `finished_problems` int(10) unsigned DEFAULT '0',
  `score` mediumint(5) unsigned DEFAULT '0',
  `used_time` bigint(13) unsigned DEFAULT '0',
  `ac_times` int(10) unsigned DEFAULT '0',
  `wa_times` int(10) unsigned DEFAULT '0',
  `rte_times` int(10) unsigned DEFAULT '0',
  `tle_times` int(10) unsigned DEFAULT '0',
  `ce_times` int(10) unsigned DEFAULT '0',
  `join_time` bigint(13) unsigned NOT NULL,
  UNIQUE KEY `cid_uid_union` (`cid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_user`
--

LOCK TABLES `contest_user` WRITE;
/*!40000 ALTER TABLE `contest_user` DISABLE KEYS */;
INSERT INTO `contest_user` VALUES (2,35,7,0,0,0,0,0,3,3,0,1512726258550),(3,35,0,0,0,0,0,0,0,0,0,1513766993861),(4,35,0,0,0,0,0,0,0,0,0,1513859188601),(5,35,10,2,10,39764383,2,3,0,0,5,1513587153645),(5,37,1,1,0,0,1,0,0,0,0,1513594201072);
/*!40000 ALTER TABLE `contest_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `gid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(6) DEFAULT NULL,
  `people` int(10) unsigned DEFAULT '0',
  `create_time` bigint(13) unsigned NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user_info`
--

DROP TABLE IF EXISTS `group_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_user_info` (
  `gid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `score` int(10) unsigned DEFAULT '0',
  `submit_times` int(10) unsigned DEFAULT '0',
  `accept_times` int(10) unsigned DEFAULT '0',
  `join_time` bigint(13) unsigned NOT NULL,
  UNIQUE KEY `gid_uid_unique` (`gid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user_info`
--

LOCK TABLES `group_user_info` WRITE;
/*!40000 ALTER TABLE `group_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `lang` json NOT NULL COMMENT 'json数组[PYTHON36,2,3,4]',
  `description` json NOT NULL,
  `input_format` json NOT NULL,
  `output_format` json NOT NULL,
  `difficult` tinyint(1) unsigned NOT NULL COMMENT '0:easy 1:middle 2:difficult 3:expert',
  `samples` json NOT NULL COMMENT 'json array\n[{input: 1, output:10}, {...}]',
  `time` tinyint(1) unsigned NOT NULL,
  `memory` smallint(5) unsigned NOT NULL,
  `moderators` json NOT NULL COMMENT 'json array\n[1,2,3,54]',
  `submit_times` int(10) unsigned DEFAULT '0',
  `used_times` int(10) unsigned DEFAULT '0' COMMENT '被别人引用过的次数',
  `ac_times` int(10) unsigned DEFAULT '0',
  `wa_times` int(10) unsigned DEFAULT '0',
  `rte_times` int(10) unsigned DEFAULT '0',
  `tle_times` int(10) unsigned DEFAULT '0',
  `ce_times` int(10) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0 自己使用\n1 审核中\n2 全局使用',
  `create_time` bigint(13) unsigned NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `difficult` (`difficult`),
  KEY `status` (`status`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,35,'2n皇后问题','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"给定一个n*n的棋盘，棋盘中有一些位置不能放皇后。现在要向棋盘中放入n个黑皇后和n个白皇后，使任意的两个黑皇后都不在同一行、同一列或同一条对角线上，任意的两个白皇后都不在同一行、同一列或同一条对角线上。问总共有多少种放法？n小于等于8。\\n\"}]}','{\"ops\": [{\"insert\": \"输入的第一行为一个整数n，表示棋盘的大小。接下来n行，每行n个0或1的整数，如果一个整数为1，表示对应的位置可以放皇后，如果一个整数为0，表示对应的位置不可以放皇后。\\n\"}]}','{\"ops\": [{\"insert\": \"输出一个整数，表示总共有多少种放法。\\n\"}]}',1,'[{\"input\": \"4\\n1 1 1 1\\n1 1 1 1\\n1 1 1 1\\n1 1 1 1\", \"output\": \"2\"}, {\"input\": \"4\\n1 0 1 1\\n1 1 1 1\\n1 1 1 1\\n1 1 1 1\", \"output\": \"0\"}]',3,128,'[]',24,0,5,1,12,3,5,2,1512628342544),(2,35,'FJ沙盘问题','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"FJ在沙盘上写了这样一些字符串：\\n  A1 = “A”\\n  A2 = “ABA”\\n  A3 = “ABACABA”\\n  A4 = “ABACABADABACABA”\\n  … …\\n你能找出其中的规律并写所有的数列AN吗？\\n\"}]}','{\"ops\": [{\"insert\": \"仅有一个数：N ≤ 26。\\n\"}]}','{\"ops\": [{\"insert\": \"请输出相应的字符串AN，以一个换行符结束。输出中不得含有多余的空格或换行、回车符。\\n\"}]}',1,'[{\"input\": \"a\", \"output\": \"ABACABA\"}]',3,128,'[]',3,0,1,2,0,0,0,2,1512636034347),(3,35,'Huffuman树','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"Huffman树在编码中有着广泛的应用。在这里，我们只关心Huffman树的构造过程。\\n  给出一列数{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}={\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"0\", \"attributes\": {\"script\": \"sub\"}}, {\"insert\": \", \"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"1\", \"attributes\": {\"script\": \"sub\"}}, {\"insert\": \", …, \"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"n\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"-1\", \"attributes\": {\"script\": \"sub\"}}, {\"insert\": \"}，用这列数构造Huffman树的过程如下：\\n  1. 找到{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中最小的两个数，设为\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"a\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"和\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"b\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"，将\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"a\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"和\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"b\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"从{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中删除掉，然后将它们的和加入到{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中。这个过程的费用记为\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"a\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \" + \"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"b\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"。\\n  2. 重复步骤1，直到{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中只剩下一个数。\\n  在上面的操作过程中，把所有的费用相加，就得到了构造Huffman树的总费用。\\n  本题任务：对于给定的一个数列，现在请你求出用该数列构造Huffman树的总费用。\\n \\n  例如，对于数列{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}={5, 3, 8, 2, 9}，Huffman树的构造过程如下：\\n  1. 找到{5, 3, 8, 2, 9}中最小的两个数，分别是2和3，从{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中删除它们并将和5加入，得到{5, 8, 9, 5}，费用为5。\\n  2. 找到{5, 8, 9, 5}中最小的两个数，分别是5和5，从{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中删除它们并将和10加入，得到{8, 9, 10}，费用为10。\\n  3. 找到{8, 9, 10}中最小的两个数，分别是8和9，从{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中删除它们并将和17加入，得到{10, 17}，费用为17。\\n  4. 找到{10, 17}中最小的两个数，分别是10和17，从{\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"i\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"}中删除它们并将和27加入，得到{27}，费用为27。\\n  5. 现在，数列中只剩下一个数27，构造过程结束，总费用为5+10+17+27=59。\\n\"}]}','{\"ops\": [{\"insert\": \"输入的第一行包含一个正整数\"}, {\"insert\": \"n\", \"attributes\": {\"italic\": true}}, {\"insert\": \"（\"}, {\"insert\": \"n\", \"attributes\": {\"italic\": true}}, {\"insert\": \"<=100）。\\n接下来是\"}, {\"insert\": \"n\", \"attributes\": {\"italic\": true}}, {\"insert\": \"个正整数，表示\"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"0\", \"attributes\": {\"script\": \"sub\"}}, {\"insert\": \", \"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"1\", \"attributes\": {\"script\": \"sub\"}}, {\"insert\": \", …, \"}, {\"insert\": \"p\", \"attributes\": {\"italic\": true}}, {\"insert\": \"n\", \"attributes\": {\"italic\": true, \"script\": \"sub\"}}, {\"insert\": \"-1\", \"attributes\": {\"script\": \"sub\"}}, {\"insert\": \"，每个数不超过1000。\\n\"}]}','{\"ops\": [{\"insert\": \"输出用这些数构造Huffman树的总费用。\\n\"}]}',2,'[{\"input\": \"5\\n5 3 8 2 9\", \"output\": \"59\"}]',3,128,'[]',1,0,0,1,0,0,0,2,1512636389524),(4,35,'HelloWorld测试','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"HelloWorld测试\\n\"}]}','{\"ops\": [{\"insert\": \"HelloWorld测试\\n\"}]}','{\"ops\": [{\"insert\": \"HelloWorld测试\\n\"}]}',0,'[{\"input\": \"none\", \"output\": \"hello world\"}]',3,128,'[]',0,0,0,0,0,0,0,2,1512981640639),(5,35,'A+B problem','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"A+B problem\\n\"}]}','{\"ops\": [{\"insert\": \"A+B problem\\n\"}]}','{\"ops\": [{\"insert\": \"A+B problem\\n\"}]}',0,'[{\"input\": \"none\", \"output\": \"A+B\"}]',3,128,'[]',15,0,0,0,0,0,0,2,1512981691684),(6,35,'输出大海','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"输出大海\\n\"}]}','{\"ops\": [{\"insert\": \"输出大海\\n\"}]}','{\"ops\": [{\"insert\": \"输出大海\\n\"}]}',0,'[{\"input\": \"输出大海\", \"output\": \"输出大海\"}]',3,128,'[]',1,0,0,0,1,0,0,2,1512981720364),(7,35,'train question','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"train question\\n\"}, {\"insert\": {\"formula\": \"\\\\sum_{i=0}^{100}x_i\"}}, {\"insert\": \" \\n\"}]}','{\"ops\": [{\"insert\": \"train question\\n\"}]}','{\"ops\": [{\"insert\": \"train question\\n\"}]}',0,'[{\"input\": \"train\", \"output\": \"train\"}]',3,128,'[]',3,0,0,0,0,0,3,2,1512981752502),(8,35,'memory and time test','[\"JAVA8\", \"PYTHON27\", \"PYTHON36\", \"CPP\", \"C\"]','{\"ops\": [{\"insert\": \"memory and time test\\n\"}]}','{\"ops\": [{\"insert\": \"memory and time test\\n\"}]}','{\"ops\": [{\"insert\": \"memory and time test\\n\"}]}',0,'[{\"input\": \"memory and time test11\", \"output\": \"memory and time test\"}]',3,128,'[35]',0,0,0,0,0,0,0,0,1513428646763),(9,35,'langs','[\"JAVA8\", \"PYTHON36\", \"CPP\", \"C\", \"PYTHON27\"]','{\"ops\": [{\"insert\": \"langs\\n\"}]}','{\"ops\": [{\"insert\": \"langs\\n\"}]}','{\"ops\": [{\"insert\": \"langs\\n\"}]}',0,'[{\"input\": \"langs\", \"output\": \"langs\"}]',4,129,'[]',0,0,0,0,0,0,0,1,1513432879839);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_user`
--

DROP TABLE IF EXISTS `problem_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_user` (
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` enum('AC','WA','RTE','TLE','CE') NOT NULL,
  UNIQUE KEY `unique` (`pid`,`uid`,`status`),
  KEY `index` (`pid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_user`
--

LOCK TABLES `problem_user` WRITE;
/*!40000 ALTER TABLE `problem_user` DISABLE KEYS */;
INSERT INTO `problem_user` VALUES (1,35,'AC'),(2,35,'WA'),(6,35,'RTE'),(7,35,'CE');
/*!40000 ALTER TABLE `problem_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '0 代表不属于非比赛提交',
  `source_code` int(10) unsigned NOT NULL COMMENT '关联attachment id',
  `lang` enum('JAVA8','CPP','C','PYTHON27','PYTHON36') NOT NULL,
  `time` decimal(5,2) unsigned NOT NULL,
  `memory` smallint(5) unsigned NOT NULL COMMENT 'MB整数',
  `status` enum('AC','WA','RTE','TLE','CE') NOT NULL,
  `submit_time` bigint(13) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES (1,35,1,0,34,'PYTHON36',0.02,4,'WA',1512889563768),(2,35,1,0,35,'PYTHON36',0.02,4,'WA',1512889640777),(3,35,1,0,36,'PYTHON36',0.02,4,'WA',1512889838073),(4,35,1,0,37,'PYTHON36',0.02,4,'WA',1512890081358),(5,35,1,0,38,'PYTHON36',0.02,4,'WA',1512890093482),(6,35,1,0,39,'PYTHON36',0.02,4,'RTE',1512890122751),(7,35,1,0,40,'PYTHON36',0.02,4,'RTE',1512893628870),(8,35,1,0,41,'PYTHON36',0.02,4,'RTE',1512893939288),(9,35,1,0,42,'PYTHON36',0.02,4,'RTE',1512893981722),(10,35,1,0,44,'PYTHON36',0.02,4,'RTE',1512893981769),(11,35,1,0,43,'PYTHON36',0.02,4,'RTE',1512893981803),(12,35,1,0,45,'PYTHON36',0.02,4,'RTE',1512893982621),(13,35,1,0,46,'PYTHON36',0.02,4,'RTE',1512893993134),(14,35,1,0,47,'PYTHON36',0.02,4,'RTE',1512893993836),(15,35,1,0,48,'PYTHON36',0.02,4,'RTE',1512893994508),(16,35,1,0,49,'PYTHON36',0.02,4,'RTE',1512894300186),(17,35,1,2,50,'PYTHON36',0.02,4,'RTE',1512962187357),(18,35,1,2,51,'PYTHON36',0.02,4,'RTE',1512962310382),(19,35,1,2,52,'PYTHON36',0.03,4,'RTE',1512963061733),(20,35,1,2,53,'PYTHON36',0.02,4,'RTE',1512963126252),(21,35,1,2,54,'PYTHON36',0.02,4,'RTE',1512963226327),(22,35,1,2,55,'PYTHON36',3.00,4,'TLE',1512963283161),(23,35,1,2,56,'PYTHON36',3.00,4,'TLE',1513158419662),(24,35,1,2,57,'PYTHON36',3.00,4,'TLE',1513158780936),(25,35,1,0,58,'C',0.01,1,'AC',1513305875129),(26,35,7,0,59,'JAVA8',0.00,0,'CE',1513436332431),(27,35,7,0,60,'JAVA8',0.00,0,'CE',1513436345803),(28,35,7,0,61,'JAVA8',0.00,0,'CE',1513436436244),(29,35,1,0,62,'C',0.01,1,'AC',1513436805049),(30,35,1,0,63,'JAVA8',0.00,0,'CE',1513565329165),(31,35,1,0,64,'JAVA8',0.00,0,'CE',1513565426971),(32,35,1,0,65,'JAVA8',0.08,8,'WA',1513565468684),(33,35,1,0,66,'C',0.01,1,'AC',1513565493774),(34,35,1,0,67,'PYTHON36',0.02,4,'WA',1513566049401),(35,35,1,0,68,'PYTHON36',0.02,4,'WA',1513566157792),(36,35,2,0,69,'PYTHON36',0.02,4,'WA',1513566193981),(37,35,6,0,70,'PYTHON36',0.03,5,'RTE',1513572068453),(38,35,1,5,71,'JAVA8',0.00,0,'CE',1513588807600),(39,35,1,5,72,'JAVA8',0.00,0,'CE',1513589003093),(40,35,1,5,73,'JAVA8',0.00,0,'CE',1513589055936),(41,35,1,5,74,'JAVA8',0.00,0,'CE',1513589145985),(42,35,1,5,75,'JAVA8',0.00,0,'CE',1513589198388),(43,35,1,5,76,'PYTHON36',0.02,4,'WA',1513590336451),(44,35,3,5,77,'PYTHON36',0.02,4,'WA',1513590855653),(45,37,1,5,78,'C',0.01,1,'AC',1513594239002),(46,35,2,5,79,'C',0.00,0,'WA',1513860193521),(47,35,2,5,80,'PYTHON36',0.02,4,'AC',1513860339292),(48,35,1,5,81,'C',0.01,1,'AC',1513911476041),(49,35,1,5,82,'C',0.01,1,'AC',1513911764259);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_problem`
--

DROP TABLE IF EXISTS `tag_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_problem` (
  `tid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  UNIQUE KEY `UNIQUE` (`tid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_problem`
--

LOCK TABLES `tag_problem` WRITE;
/*!40000 ALTER TABLE `tag_problem` DISABLE KEYS */;
INSERT INTO `tag_problem` VALUES (1,2),(1,4),(1,6),(1,7),(1,9),(2,4),(2,5),(2,7),(2,8),(2,9),(3,4),(3,5),(3,7),(4,4),(4,5),(5,1),(5,4),(5,8),(6,3);
/*!40000 ALTER TABLE `tag_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `used` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'java',8),(2,'python',9),(3,'hellworld',8),(4,'链表',5),(5,'DFS',3),(6,'哈夫曼',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_cases`
--

DROP TABLE IF EXISTS `test_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_cases` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `stdin` varchar(1000) NOT NULL,
  `stdout` varchar(1000) NOT NULL,
  `strength` tinyint(1) unsigned NOT NULL COMMENT '介于1-9之间',
  `create_time` bigint(13) unsigned NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_cases`
--

LOCK TABLES `test_cases` WRITE;
/*!40000 ALTER TABLE `test_cases` DISABLE KEYS */;
INSERT INTO `test_cases` VALUES (1,1,'3\n1 1 0 \n1 1 1 \n1 1 0 ','0',1,1512631461719),(2,1,'4\n1 1 1 1 \n1 0 1 1 \n1 1 1 1 \n1 1 1 1','2',1,1512632319498),(3,1,'5\n1 1 1 1 1 \n1 0 1 1 1 \n1 1 1 1 1 \n1 0 1 1 1 \n1 1 1 1 1','12',1,1512632336990),(4,1,'6\n1 1 1 1 1 1 \n1 1 1 1 1 1 \n1 1 1 1 1 1 \n1 1 1 1 1 1 \n1 1 1 1 1 1 \n1 1 1 1 1 1','12',1,1512632350016),(5,1,'7\n1 1 1 1 1 1 0 \n1 1 1 1 1 1 1 \n1 1 1 1 1 1 1 \n1 1 1 1 1 1 1 \n1 1 1 1 1 1 1 \n1 1 1 1 1 1 1 \n1 1 1 1 1 1 1','408',1,1512632362740),(6,2,'10','hello',1,1512636173870),(7,2,'9','hello',3,1512636201839),(8,3,'2\n42 468','510',1,1512636419045),(9,3,'5\n335 501 170 725 479','4925',1,1512636438162),(10,4,'','hello world',1,1512981648519),(11,5,'','A+B',1,1512981699333),(12,6,'输出大海','输出大海',1,1512981724423),(13,7,'train','train',1,1512981757985),(14,7,'','train',3,1512981763614);
/*!40000 ALTER TABLE `test_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `real_name` varchar(20) DEFAULT NULL,
  `avatar` int(10) unsigned DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `role` tinyint(1) unsigned DEFAULT '0' COMMENT '0 普通用户\n9 管理员',
  `permission` json NOT NULL COMMENT '[''set'',''hello'']',
  `submit_times` int(10) unsigned DEFAULT '0',
  `contest_times` int(10) unsigned DEFAULT '0',
  `ac_times` int(10) unsigned DEFAULT '0',
  `wa_times` int(10) unsigned DEFAULT '0',
  `rte_times` int(10) unsigned DEFAULT '0',
  `tle_times` int(10) unsigned DEFAULT '0',
  `ce_times` int(10) unsigned DEFAULT '0',
  `finished_problems` int(10) unsigned DEFAULT '0',
  `gender` tinyint(1) unsigned DEFAULT '0' COMMENT '0保密\n1男\n2女',
  `motto` varchar(50) DEFAULT NULL,
  `register_time` bigint(13) unsigned NOT NULL,
  `verified` tinyint(1) unsigned DEFAULT '0' COMMENT '0未验证\n1验证通过',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'aef','aef',NULL,0,'aef',0,'[\"get\", \"ge\"]',0,0,0,0,0,0,0,0,0,NULL,12312,0),(3,'chen!@126.com','smith',NULL,0,'123456',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1509625563796,0),(5,'chen!1@126.com','smith',NULL,0,'123456',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1509625680241,0),(6,'chen!11@126.com','smith',NULL,0,'123456',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1509625693663,0),(8,'che1n!11@126.com','smith',NULL,0,'123456',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1509625797534,0),(9,'c1@126.com1','test',NULL,0,'123456',0,'[]',0,0,0,0,0,0,0,0,0,NULL,0,0),(10,'c1@126.com','test',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,0,0),(11,'test@test.com2','I Am Test',NULL,0,'098f6bcd4621d373cade4e832627b4f6',0,'[]',0,0,0,0,0,0,0,0,0,NULL,0,0),(12,'test@test.com1','I Am Test',NULL,0,'098f6bcd4621d373cade4e832627b4f6',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1509886602210,0),(13,'test@test.com3','I Am Test',NULL,0,'098f6bcd4621d373cade4e832627b4f6',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1509964177613,0),(14,'test@test.com','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',14,0,2,0,0,0,0,0,0,NULL,1510129937075,0),(15,'1510157247573@126.com','1510157247573-TESTER',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510157248389,0),(16,'1510157414297@126.com','1510157414297-TESTER',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510157414311,0),(17,'1510200482152@126.com','1510200482152-TESTER',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510200482167,0),(18,'1510200639157@126.com','1510200639157-TESTER',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510200639171,0),(19,'test@test1.com','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510377927655,0),(21,'test@test2.com','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510377955548,0),(23,'test@test99.com','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510377967933,0),(25,'test@test9.com','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510378047399,0),(27,'test@test8.com','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510378179880,0),(28,'test@test.comx','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510462603114,0),(29,'test@test.comxb','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510462649043,0),(30,'test@test.com7','I am tester',NULL,0,'e10adc3949ba59abbe56e057f20f883e',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1510464192666,0),(31,'fe@12.dth','asef',NULL,0,'d9b1d7db4cd6e70935368a1efb10e377',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1511771980307,0),(32,'chen1@126.com','abc',NULL,0,'14e1b600b1fd579f47433b88e8d85291',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1511772230886,0),(33,'chen@126.com','abc',NULL,0,'d9b1d7db4cd6e70935368a1efb10e377',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1511772355487,0),(34,'1@126.com','aef',NULL,0,'d9b1d7db4cd6e70935368a1efb10e377',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1511772618636,0),(35,'1@1.com','我是Smith','打败',31,'d9b1d7db4cd6e70935368a1efb10e377',0,'[]',15,2,1,1,11,0,3,1,0,'我是孤独求败的人',1511772653407,0),(36,'12@1.com','aec',NULL,0,'d9b1d7db4cd6e70935368a1efb10e377',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1511772836330,0),(37,'2@2.com','大海',NULL,0,'d9b1d7db4cd6e70935368a1efb10e377',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1511772924348,0),(38,'danny@126.com','danny',NULL,0,'14e1b600b1fd579f47433b88e8d85291',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1511774201713,0),(39,'dfgv@12.com','aewfeasf',NULL,0,'14e1b600b1fd579f47433b88e8d85291',0,'[]',0,0,0,0,0,0,0,0,0,NULL,1512306366983,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `date` date NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `submit_times` int(10) unsigned NOT NULL,
  `ac_times` int(10) unsigned NOT NULL,
  `wa_times` int(10) unsigned NOT NULL,
  `rte_times` int(10) unsigned NOT NULL,
  `tle_times` int(10) unsigned NOT NULL,
  `ce_times` int(10) unsigned NOT NULL,
  UNIQUE KEY `unique` (`date`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
INSERT INTO `user_log` VALUES ('2017-12-18',35,28,12,6,1,0,6),('2017-12-18',37,12,6,0,0,0,0),('2017-12-21',35,2,1,1,0,0,0),('2017-12-22',35,2,2,0,0,0,0);
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-24 21:56:31
