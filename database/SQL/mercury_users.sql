-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mercury
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `API_KEY` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci,
  `provider` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provided_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_api_key_unique` (`API_KEY`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gwendolyn McDermott IV','crooks.mae@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','M2LLW$2y$10$9x7yFFHwPNkUekGWIYlxi.vUC5r1BRyH77gi7Os3wRjZn7YTjf.jS','2012-08-10','https://avatars.dicebear.com/v2/identicon/Gwendolyn McDermott IV.svg','Jerash','+6449485809589','Alice, a little worried. \'Just about as curious as it can\'t possibly make me larger, it must be what he did with the bones and the moon, and memory, and muchness--you know you say things are worse than ever,\' thought the poor little thing was.',NULL,NULL,'PmDqGcjKoOprInSaaULeavXGyCAT3VBfNGmRiSppiGFmjIhVNyinxSE34gPA','2018-10-20 06:45:16','2018-10-20 06:45:16'),(2,'Bartholome Wisozk','trey.swift@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','EUnvg$2y$10$oHvbZRIViulhZ17H2z8Lv.Zcgqy9v2lLEaTMULUkzeOxRx72AEG2S','2006-12-24','https://avatars.dicebear.com/v2/identicon/Bartholome Wisozk.svg','Mafraq','+4868587165997','I should think!\' (Dinah was the only difficulty was, that she knew the right words,\' said poor Alice, and looking at the other, and growing sometimes taller and sometimes she scolded herself so severely as to size,\' Alice hastily replied; \'only one.',NULL,NULL,'s2GjRznq6E','2018-10-20 06:45:16','2018-10-20 06:45:16'),(3,'Prof. Gaston Watsica','satterfield.adaline@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','jTMQA$2y$10$7UgzxKmX7l.Uk2E/B9x4cecAj/.18tOStXQmqsYweZ3n.43/pGAea','1993-02-23','https://avatars.dicebear.com/v2/identicon/Prof. Gaston Watsica.svg','Karak','+5639244734656','Alice; \'I daresay it\'s a very curious sensation, which puzzled her too much, so she tried her best to climb up one of the shelves as she came upon a time there were a Duck and a crash of broken glass. \'What a curious appearance in the pool was.',NULL,NULL,'hxNAR4sz7U','2018-10-20 06:45:16','2018-10-20 06:45:16'),(4,'Berenice Towne','ifahey@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','p5UKD$2y$10$PxROf8i/BO9bNJL6wi35VOnFDMGV0AoYmwIAXMgiRLgwUwdI1cQiu','2007-08-12','https://avatars.dicebear.com/v2/identicon/Berenice Towne.svg','Mafraq','+4315585467036','Alice. \'I mean what I used to say.\' \'So he did, so he did,\' said the cook. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen ordering off her knowledge, as there was no time to go, for the accident of the soldiers shouted.',NULL,NULL,'hqAVvIDZGO','2018-10-20 06:45:16','2018-10-20 06:45:16'),(5,'Dr. Martine Eichmann','ckuhic@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','at18C$2y$10$eM/PWMkEOlkS450XleO3FuCKEiStHZUVlAaKdbfF61C.v5Ycae5MS','1998-03-26','https://avatars.dicebear.com/v2/identicon/Dr. Martine Eichmann.svg','Mafraq','+5870662112425','Mock Turtle to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of use in waiting by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT.',NULL,NULL,'k2SCWohy5j','2018-10-20 06:45:16','2018-10-20 06:45:16'),(6,'Dr. Tierra Stokes Jr.','wjohnson@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','zcvt7$2y$10$.7aDLsXD0Xm6X5OXVYiPIubDr08Mc5ikIfEU4gZ.OxO68lMJ1biSK','2012-07-28','https://avatars.dicebear.com/v2/identicon/Dr. Tierra Stokes Jr..svg','Tafilah','+4683998979104','Presently the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at it again: but he would not allow without knowing how old it was, and, as there was a little scream of laughter. \'Oh, hush!\' the Rabbit noticed Alice, as she went.',NULL,NULL,'QCvkaqNM9O','2018-10-20 06:45:17','2018-10-20 06:45:17'),(7,'Melisa Carter','crooks.candelario@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','wfMnw$2y$10$1gnroDTpOeNLNwsllnW8xu74e7hcrN.klOBPsCWtM2kwYxixJ.cOa','1998-08-09','https://avatars.dicebear.com/v2/identicon/Melisa Carter.svg','Mafraq','+4986805812300','Alice with one of them.\' In another minute the whole pack of cards: the Knave of Hearts, and I could not help bursting out laughing: and when she looked up, but it puzzled her very much what would happen next. The first witness was the first.',NULL,NULL,'Axtv599jvM','2018-10-20 06:45:17','2018-10-20 06:45:17'),(8,'Nathen Hauck PhD','lockman.hank@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','MJ6A6$2y$10$RsWTieQmuoFOuRe/gBRtE.nOWQNFguPFsSTo6KvXQd.zRutMPDw1O','1982-04-26','https://avatars.dicebear.com/v2/identicon/Nathen Hauck PhD.svg','Tafilah','+9559387844198','Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the King. \'I can\'t help that,\' said the King: \'leave out that one of its right paw.',NULL,NULL,'nPovUlWewf','2018-10-20 06:45:17','2018-10-20 06:45:17'),(9,'Theron Lockman','wnicolas@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','77ZNn$2y$10$lygm4Lti/o05MUPhDiSuYOWJ4kbLdZn2DRWxGIfnfaxAj6oIzYaw2','1984-11-06','https://avatars.dicebear.com/v2/identicon/Theron Lockman.svg','Amman','+4383742880164','But if I\'m not Ada,\' she said, by way of nursing it, (which was to find my way into that lovely garden. I think I must be kind to them,\' thought Alice, and sighing. \'It IS the same when I got up and went on in the last concert!\' on which the cook.',NULL,NULL,'Xv4WsIYToq','2018-10-20 06:45:17','2018-10-20 06:45:17'),(10,'Rhianna Rutherford','morissette.francesca@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','rPZAn$2y$10$BIMTOpuITMeMnxLMaNsg2eytIfu6IdqHktJ6s2UxAqA.hovw1UsAq','1975-11-06','https://avatars.dicebear.com/v2/identicon/Rhianna Rutherford.svg','Karak','+1543523350174','My notion was that she had never heard it before,\' said the Queen, \'and take this child away with me,\' thought Alice, \'they\'re sure to do so. \'Shall we try another figure of the day; and this was not a regular rule: you invented it just missed her..',NULL,NULL,'4tioXxg1qV','2018-10-20 06:45:17','2018-10-20 06:45:17'),(11,'Prof. Jairo Kirlin','rcummings@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','KcoO9$2y$10$L2byn3KR2kqa4jjc3Sf.IO//P/u8/7NJZ6L4Z9T.gFo/KdovFV4/q','1979-05-14','https://avatars.dicebear.com/v2/identicon/Prof. Jairo Kirlin.svg','Jerash','+2832789241103','The players all played at once in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse gave a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m.',NULL,NULL,'DnTb3MCnsm','2018-10-20 06:45:17','2018-10-20 06:45:17'),(12,'Ms. Margaretta Quigley DVM','ramon.dubuque@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','hXn20$2y$10$RQIZ/ts1yOh09kOAhmkVU.zxjVb5JazkDSNK7VRlivRJgOV6w8wfe','2004-09-24','https://avatars.dicebear.com/v2/identicon/Ms. Margaretta Quigley DVM.svg','Madaba','+3562925596241','Gryphon. \'It\'s all about it!\' and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the children she knew, who might do something better with the Lory, with a little before she had this fit) An obstacle that came between.',NULL,NULL,'yzVgVLWKzv','2018-10-20 06:45:17','2018-10-20 06:45:17'),(13,'Miss Therese Gutkowski','feest.crystel@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','rE0Da$2y$10$3.Zb8Gk.BAgi/4fYgcVfx.oJtL/jCaiHlTbAEeWAc/CE8CAwakGSC','2012-10-21','https://avatars.dicebear.com/v2/identicon/Miss Therese Gutkowski.svg','Irbid','+7806503999195','I shall be a footman in livery came running out of sight: then it watched the White Rabbit: it was in livery: otherwise, judging by his face only, she would catch a bat, and that\'s all I can reach the key; and if it had fallen into the garden door..',NULL,NULL,'E2b2TvRXcK','2018-10-20 06:45:17','2018-10-20 06:45:17'),(14,'Imogene Windler','reynolds.lavina@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','ugfoJ$2y$10$NDm.2e2qV/a9zZx.G3OmZuoaqj9Os2pTxCCQWSstax6yhedRHYPji','1988-12-10','https://avatars.dicebear.com/v2/identicon/Imogene Windler.svg','Ma\'an','+2217295396785','She pitied him deeply. \'What is it?\' Alice panted as she could, for the next moment she appeared on the spot.\' This did not like to show you! A little bright-eyed terrier, you know, this sort of knot, and then I\'ll tell you my history, and you\'ll.',NULL,NULL,'w5venWJA2f','2018-10-20 06:45:17','2018-10-20 06:45:17'),(15,'Angelica Thompson','lawson72@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','w4kOK$2y$10$fN2WmxiU0hjmlrwJb2RQ6OarnnABoAErB8ZUmYVj9bvYDVBACQRi.','2016-07-14','https://avatars.dicebear.com/v2/identicon/Angelica Thompson.svg','Ma\'an','+5577140209035','When I used to it in a hurry. \'No, I\'ll look first,\' she said, without even looking round. \'I\'ll fetch the executioner myself,\' said the Gryphon hastily. \'Go on with the other: he came trotting along in a low, timid voice, \'If you do. I\'ll set.',NULL,NULL,'gcqx0yvdsv','2018-10-20 06:45:17','2018-10-20 06:45:17'),(16,'Cheyanne Grimes','myrtle.gutkowski@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','G1UUH$2y$10$PskTpK.Dpw0QBmusWmnZwel1p5dSbeU/wakg8nNLkbFjkVv3Igi8.','1980-11-21','https://avatars.dicebear.com/v2/identicon/Cheyanne Grimes.svg','Jerash','+4116529465527','I shall fall right THROUGH the earth! How funny it\'ll seem to dry me at home! Why, I wouldn\'t be so easily offended!\' \'You\'ll get used to it in less than a pig, my dear,\' said Alice, seriously, \'I\'ll have nothing more to do so. \'Shall we try.',NULL,NULL,'blRD4wVBXT','2018-10-20 06:45:17','2018-10-20 06:45:17'),(17,'Merritt Doyle','lakin.carolina@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','V4REq$2y$10$vI3mt55P4.DfmjadwBSoL.BiS/z5HDqt3A0BPTHAAbxv//eeO90PS','2000-12-31','https://avatars.dicebear.com/v2/identicon/Merritt Doyle.svg','Madaba','+7621888878858','MUST be more to be no use speaking to a snail. \"There\'s a porpoise close behind it was quite pleased to have no notion how delightful it will be When they take us up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with his.',NULL,NULL,'P1MG6BrOhP','2018-10-20 06:45:17','2018-10-20 06:45:17'),(18,'Shayna Ferry Sr.','emory84@example.com','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Rgt6G$2y$10$NEjXzUEuDsj6jvEKNiJ14eLnf9aaFdp9ERpZMgsexv8GrN/cOtOqO','2001-07-25','https://avatars.dicebear.com/v2/identicon/Shayna Ferry Sr..svg','Ma\'an','+8727098266654','Everything is so out-of-the-way down here, and I\'m sure she\'s the best way to explain it is all the arches are gone from this side of WHAT?\' thought Alice; \'but when you come and join the dance?\"\' \'Thank you, sir, for your interesting story,\' but.',NULL,NULL,'hVeEFXTy7M','2018-10-20 06:45:17','2018-10-20 06:45:17'),(19,'Madeline Muller','boyle.brycen@example.org','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','tfHzQ$2y$10$IYQXP/ktWFIg6B9Z853F5OY0Reqed8APdwr3JUudWgtzKogqI0li2','1999-03-27','https://avatars.dicebear.com/v2/identicon/Madeline Muller.svg','Karak','+6681615448579','That WILL be a great hurry to change them--\' when she had someone to listen to me! When I used to come yet, please your Majesty,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little different. But if I\'m Mabel, I\'ll.',NULL,NULL,'hmdH0Y75My','2018-10-20 06:45:17','2018-10-20 06:45:17'),(20,'Dr. Roger Oberbrunner','gregory.feest@example.net','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','n9Liu$2y$10$dgZ4tImOPttlSvHdlJt7KuDPMJOMOKefktKupOu8AUiEXBi2v1.oi','1979-04-08','https://avatars.dicebear.com/v2/identicon/Dr. Roger Oberbrunner.svg','Zarqa','+4333988085741','Just then her head impatiently; and, turning to Alice an excellent opportunity for making her escape; so she went back to finish his story. CHAPTER IV. The Rabbit Sends in a minute or two to think this a good way off, and had just begun to repeat.',NULL,NULL,'SksuBs79mG','2018-10-20 06:45:17','2018-10-20 06:45:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-16 12:44:48