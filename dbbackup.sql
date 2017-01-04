/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.48 : Database - cdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cdb`;

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `countid` int(10) NOT NULL AUTO_INCREMENT,
  `countcode` varchar(50) DEFAULT NULL,
  `countname` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`countid`,`countcode`,`countname`,`status`) values (1,'+91','India','Active'),(2,'+1','Unites States Of America','Active'),(3,'+44','United States of Kingdom','Active'),(4,'+81','JAPAN','Active'),(5,'+92','PAKISTAN','Active');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `custid` int(100) NOT NULL AUTO_INCREMENT,
  `indusid` int(100) DEFAULT NULL,
  `shortname` varchar(10) DEFAULT NULL,
  `custname` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `firstadd` varchar(500) DEFAULT NULL,
  `secondadd` varchar(500) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `countid` int(10) DEFAULT NULL,
  `zip` int(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `createdbyhost` varchar(100) DEFAULT NULL,
  `createdbyip` varchar(100) DEFAULT NULL,
  `modifieddate` date DEFAULT NULL,
  `modifiedbyhost` varchar(100) DEFAULT NULL,
  `modifiedbyip` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`custid`),
  KEY `countid` (`countid`),
  KEY `indusid` (`indusid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`custid`,`indusid`,`shortname`,`custname`,`password`,`firstadd`,`secondadd`,`street`,`countid`,`zip`,`city`,`code`,`phone`,`fax`,`website`,`email`,`comments`,`filename`,`createdate`,`createdbyhost`,`createdbyip`,`modifieddate`,`modifiedbyhost`,`modifiedbyip`,`status`) values (1,1,'Mr.','Pramod','bb16fa6160fa1d8a73eba6217844a08b','358, Samta Nagar',' pune satara ','Vaijapur',1,431109,'Aurangabad','+91','9028697679','abc1234567','http://www.pramod.com','pramod.ahire18@gmail.com','Great','Tulips.jpg',NULL,NULL,NULL,'2017-01-03','User-PC','192.168.0.113','Inactive'),(3,2,'Mr.','Avinash Shinde',NULL,'Bharti Vidypeeth','Katraj','Satara Road',3,1234,'Pune',NULL,'0123456789','123456','http://www.avi.com','avi@gmail.com','Awesome',NULL,'2016-12-07','User-PC','192.168.0.140','2016-12-12','User-PC','192.168.0.130','Active'),(4,4,'Mr.','Gautam Tupe',NULL,'ABC Nagar','Akurdi','chinchwad road',1,45654,'Pune',NULL,'45642131','4789789','www.gautam.com','gautam@gmail.com','kljkljklj',NULL,'2016-12-07','User-PC','192.168.0.140','2016-12-08','User-PC','192.168.0.135','Active'),(8,2,'Mr.','Komal More',NULL,'Balewadi','Near baner','Mumbai highway',4,225546,'Pune',NULL,'1234','1234','komalmore.com','komalmore7jun@gmail.com','Awesome',NULL,NULL,NULL,NULL,'2016-12-08','User-PC','192.168.0.135','Active'),(9,3,'Mr.','Sachin Deshmukh',NULL,'XYZ Colony 1','Near Wakad,','Karve Road',2,1234,'Pune',NULL,'1234567890','2222222','http://www.sachin.com','sachin@abc.com','mast',NULL,'2016-12-08','User-PC','192.168.0.135','2016-12-12','User-PC','192.168.0.130','Active'),(10,4,'Mr.','Saurabh Mali',NULL,'Near akurdi railway station','Akurdi','station road',3,1234,'Pune',NULL,'1234567890','123456','http://www.saurabh.com','saurabh@gmail.com','xyz',NULL,'2016-12-08','User-PC','192.168.0.135','2016-12-12','User-PC','192.168.0.130','Deleted'),(11,2,'Mr.','Akshay Todkar','bb16fa6160fa1d8a73eba6217844a08b','Bhendala Fata','Near Pandu hotel','Nagpur Highway 1',44,12345,'Aurangabad','+44','9765321454','dds1235467','http://www.gautam.com','pramod.ahire18@gmail.com','mast',NULL,'2016-12-08','User-PC','192.168.0.135','2016-12-27','User-PC','192.168.0.100','Inactive'),(13,3,'Mr.','Priyanka Chavan',NULL,'Dange Chowk','Hinjewadi','Phase 1',2,12354,'Pune',NULL,'0123456789','1111222','http://www.priya.com','priya@gmail.com','hjgsdf',NULL,'2016-12-08','User-PC','192.168.0.135','2016-12-15','User-PC','192.168.0.124','Active'),(14,4,'Mr.','Vishal Misal',NULL,'Near akurdi railway station','Akurdi','station road',1,123145,'Pune','+91','9235648476','ccc2223456','http://www.vishal.com','vishal@gmail.com','bgsdfghs',NULL,'2016-12-08','User-PC','192.168.0.135','2016-12-28','User-PC','192.168.0.108','Active'),(15,1,'Mr.','dfgdfg',NULL,'dfgdf','dfgdf','dfgdf',4,15442,'dfgdfg',NULL,'1145456456446','545464','http://www.pramod.com','sdfsdf@ff.dd','gsdfgdf',NULL,'2016-12-08','User-PC','192.168.0.135','2016-12-09','User-PC','192.168.0.139','Deleted'),(16,3,'Mr.','Varsha Chavan',NULL,' narmda  Colony','near abc bank, baramati ','Baramati Road',1,123456,'Solapur',NULL,'0123456789','123456','http://www.varsha.com','varsha@gmail.com','Nice',NULL,'2016-12-09','User-PC','192.168.0.139','2016-12-15','User-PC','192.168.0.124','Inactive'),(17,1,'Mr.','ghgjghj',NULL,'ghjgjgh','ghjghjghj','hjghj',1,12345,'gsdfgd',NULL,'1234567890','121354','http://www.sachin.com','dsfs@fdf.ff','sdfsdf',NULL,'2016-12-09','User-PC','192.168.0.139',NULL,NULL,NULL,'Deleted'),(18,1,'Mr.','Shahuraje Satarkar',NULL,'XYZ Colony','Near Ganpati temple','Mumbai highway',3,123456,'1232145',NULL,'0123456789','12123','http://www.shahu.com','shahu@gmail.com','asdasd',NULL,'2016-12-09','User-PC','192.168.0.139',NULL,NULL,NULL,'Deleted'),(19,1,'Mr.','ghgfh',NULL,'fghfg','fghgfh','fghfgh',1,12345,'Pune',NULL,'1234567890','4225212','http://www.sachin.com','dfsd@gfdf.gh','kjljkl',NULL,'2016-12-12','User-PC','192.168.0.130','2016-12-12','User-PC','192.168.0.130','Deleted'),(20,3,'Mr.','xdfgdfg',NULL,'dfgfddfg','dfgdfg','dfgdfd6666',3,1234566,'dfgdf','+44','8865231456','vgf1234567','http://www.avi.com','asdsa@dfsdf.ghfgh','sdfsdf',NULL,'2016-12-12','User-PC','192.168.0.130','2016-12-28','User-PC','192.168.0.108','Inactive'),(21,1,'Mr.','dfghdfh',NULL,'gfhgf','gfhfgh','gfhgfh',1,21213,'ghfgh',NULL,'0123456789','12313','http://www.sachin.com','asdasd@fg.gf','fdfxdg',NULL,'2016-12-12','User-PC','192.168.0.130','2016-12-12','User-PC','192.168.0.130','Inactive'),(22,1,'Mr.','ghgfh',NULL,'fghfg','fghfgh','fghfgh',1,10122,'Pune',NULL,'0123456789','12345','http://www.avi.com','sdfsd@dd.kk','gfhfgh',NULL,'2016-12-12','User-PC','192.168.0.130',NULL,NULL,NULL,'Deleted'),(23,3,'Mr.','FHFGH',NULL,'FGHGF','FGHGFH','FGHFGH',4,121131,'Pune',NULL,'0123456789','145644','http://www.pramod.com','sam@abc.com','DFFG',NULL,'2016-12-12','User-PC','192.168.0.130','2016-12-12','User-PC','192.168.0.130','Inactive'),(24,1,'Mr.','vikas',NULL,'ak pune ','pune   pune ','pune',1,745896,'pune',NULL,'9654478546','36985741','http://www.sachin.com','vikas.signifiatechride@gmail.com','refd rg rfgf hh  ',NULL,'2016-12-13','User-PC','192.168.0.180',NULL,NULL,NULL,'Inactive'),(25,1,'Mr.','vikas',NULL,'ak pune ','pune   pune ','pune',1,745896,'pune',NULL,'9654478546','36985741','http://www.sachin.com','vikas.signifiatechride@gmail.com','refd rg rfgf hh  ',NULL,'2016-12-13','User-PC','192.168.0.180',NULL,NULL,NULL,'Active'),(26,1,'Mrs.',' Minal ',NULL,'huiwgfdiuewhr','huiwgfdiuewhr','uygwwt8qwye',1,59849844,'yjtyujty',NULL,'5289494984','598788','https://www.google.co.in/','chalke.minal1992@gmail.com','adljdghika',NULL,'2016-12-14','User-PC','192.168.0.156',NULL,NULL,NULL,'Deleted'),(27,1,'Miss.',' Minal ',NULL,' sanghvi pune ',' sanghvi pune ',' hinjwadi road ',4,59849844,'pune ',NULL,'5289494984','598788','https://www.google.co.in/','chalke.minal1992@gmail.com','fghgfhgjghjghjhj',NULL,'2016-12-14','User-PC','192.168.0.156',NULL,NULL,NULL,'Active'),(28,1,'Mr.','minal ',NULL,'kdkjdg','gfhgfh','hhfgh',1,324654564,'PUNE ',NULL,'9604847116','1441114','http://ww.gmail.com','chalke.minal1992@gmail.com','asaS',NULL,'2016-12-14','User-PC','192.168.0.156',NULL,NULL,NULL,'Active'),(29,1,'Mr.','minal ',NULL,'kdkjdg','gfhgfh','hhfgh',3,324654564,'PUNE ',NULL,'9604847116','bbb1441114','http://ww.gmail.com','chalke.minal1992@gmail.com','asaS',NULL,'2016-12-14','User-PC','192.168.0.156','2016-12-19','User-PC','192.168.0.177','Active'),(30,1,'Mr.','xsdgdf',NULL,'dfgdfg','dfgdfg','dfgdfg',1,12345364,'dgsdfdsf',NULL,'+97245364','ghjghj4425243','http://www.avi.com','priya@gmail.com','hgjgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(31,1,'Mr.','xsdgdf',NULL,'dfgdfg','dfgdfg','dfgdfg',1,12345364,'dgsdfdsf',NULL,'+97245364','ghjghj4425243','http://www.avi.com','priya@gmail.com','hgjgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(32,1,'Mr.','xsdgdf',NULL,'dfgdfg','dfgdfg','dfgdfg',1,12345364,'dgsdfdsf',NULL,'+97245364','ghjghj4425243','http://www.avi.com','priya@gmail.com','hgjgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(33,1,'Mr.','xsdgdf',NULL,'dfgdfg','dfgdfg','dfgdfg',1,12345364,'dgsdfdsf',NULL,'+97245364','ghjghj4425243','http://www.avi.com','priya@gmail.com','hgjgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(34,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg',NULL,'+97412112','jkhjk','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(35,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg',NULL,'+97412112','jkhjk','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(36,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg',NULL,'+97412112','jkhjk','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(37,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg',NULL,'+97412112','jkhjk','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(38,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg',NULL,'+97412112','jkhjk','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(39,1,'Mr.','fgfhg',NULL,'fghfgh','fghfgh','fghfgh',1,655656,'gfhgfh',NULL,'76576656','fghfh','http://www.gautam.com','hjsdfjkh@ff.gg','fghfgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(40,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,45645645,'dfgdgf',NULL,'657567567','dfgdfg','http://www.sachin.com','dfsd@gfdf.gh','fgdfg',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(41,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,45645645,'dfgdgf',NULL,'657567567','dfgdfg','http://www.sachin.com','dfsd@gfdf.gh','fgdfg',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(42,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,45645645,'dfgdgf',NULL,'657567567','dfgdfg','http://www.sachin.com','dfsd@gfdf.gh','fgdfg',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(43,1,'Mr.','fgfhg',NULL,'fghfgh','fghfgh','fghfgh',1,655656,'gfhgfh',NULL,'76576656','fghfh','http://www.gautam.com','hjsdfjkh@ff.gg','fghfgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(44,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg','+91','9654821356','dgf1235467','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124','2016-12-28','User-PC','192.168.0.108','Active'),(45,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg',NULL,'+97412112','jkhjk','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(46,1,'Mr.','dfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,111451456,'dfg',NULL,'+97412112','jkhjk','http://www.gautam.com','dfsd@gfdf.gh','sfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(47,1,'Mr.','gtrhgf',NULL,'fghfgh','fghfgh','fghfgh',1,252556562,'fghfgh',NULL,'445645456','fghfgh','http://www.avi.com','dfgsdf@sd.gfh','dfgdfg',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(48,1,'Mr.','gtrhgf',NULL,'fghfgh','fghfgh','fghfgh',1,252556562,'fghfgh',NULL,'445645456','fghfgh','http://www.avi.com','dfgsdf@sd.gfh','dfgdfg',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(49,1,'Mr.','dfgdfg',NULL,'dfgdf','dfgdf','dfgdfg',1,54545,'dfgfdg',NULL,'546456456','dfgdgf','http://www.avi.com','fghfgh@hh.jj','fghfgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(50,4,'Mr.','sdfsfsdf',NULL,'sdfsdfsdf','sdfsdfsdf','sdfsdf',2,456456456,'dfgdfgdfg',NULL,'456456456','sdsdfsdf','http://www.gautam.com','asdasd@fg.gf','fdgdfgdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(51,1,'Mr.','fghfgh',NULL,'fghfgh','fghfgh','fgfgh',1,4535345,'fghfgh',NULL,'74576567','5645645','http://www.pramod.com','dfsd@gfdf.gh','sdfsdfsdf',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(52,1,'Mr.','gfhfgh',NULL,'fghfgh','fghfgh','fghfgh',1,656456456,'hfghfgh',NULL,'4556456456','gjghjghj','http://www.avi.com','gautam@gmail.com','ghfgh',NULL,'2016-12-15','User-PC','192.168.0.124',NULL,NULL,NULL,'Active'),(53,1,'Mr.','bksdf',NULL,'kjhkdkff','kjhkdkff','bnksdnf',2,212322,'dsfsdf',NULL,'9860956474','dkh4447545','http://www.avi.com','sdfsdf@ff.dd','xsdfsdf',NULL,'2016-12-19','User-PC','192.168.0.177',NULL,NULL,NULL,'Active'),(54,1,'Mr.','gdfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,222222,'jghjghj',NULL,'9860956474','ags2335566','http://www.sachin.com','demo@demo.demo','asdfs',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(55,1,'Mr.','gdfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,222222,'jghjghj',NULL,'9860956474','ags2335566','http://www.sachin.com','demo@demo.demo','asdfs',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(56,1,'Mr.','gdfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,222222,'jghjghj',NULL,'9860956474','ags2335566','http://www.sachin.com','demo@demo.demo','asdfs',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(57,1,'Mr.','gdfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,222222,'jghjghj',NULL,'9860956474','ags2335566','http://www.sachin.com','demo@demo.demo','asdfs',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(58,1,'Mr.','gdfgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,222222,'jghjghj',NULL,'9860956474','ags2335566','http://www.sachin.com','demo@demo.demo','asdfs',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(59,1,'Mr.','sdgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,1422222,'dfgdfg',NULL,'9654478546','sss2522222','http://www.saurabh.com','dfgsdf@sd.gfh','dfgdfg',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(60,1,'Mr.','sdgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,1422222,'dfgdfg',NULL,'9654478546','sss2522222','http://www.saurabh.com','dfgsdf@sd.gfh','dfgdfg',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(61,1,'Mr.','sdgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,1422222,'dfgdfg',NULL,'9654478546','sss2522222','http://www.saurabh.com','dfgsdf@sd.gfh','dfgdfg',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(62,1,'Mr.','sdgdfg',NULL,'dfgdfg','dfgdfg','dfgdfg',1,1422222,'dfgdfg',NULL,'9654478546','sss2522222','http://www.saurabh.com','dfgsdf@sd.gfh','dfgdfg',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(63,1,'Mr.','czxc',NULL,'zxczxc','zxczxc','zxczxc',91,11111111,'zxczxczx','+91','9654478546','awe1235468','http://www.avi.com','dfsd@gfdf.gh','dfsdf',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(64,1,'Mr.','dfsdf',NULL,'sdfsdfsdf','sdfsdfsdf','sdfsdf',1,2546892,'kjjjkdh','+91','9836321456','ags2323645','http://www.gautam.com','sdfsd@dd.kk','sdfsdf',NULL,'2016-12-27','User-PC','192.168.0.100','2016-12-28','User-PC','192.168.0.108','Active'),(65,1,'Mr.','dfsdf',NULL,'sdfsdfsdf','sdfsdfsdf','sdfsdf',91,2546892,'kjjjkdh','+91','9836321456','ags2323645','http://www.gautam.com','sdfsd@dd.kk','sdfsdf',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(66,2,'Mr.','xcfsdf',NULL,'sdfsdfsd','sdfsdfsd','sdfsdf',0,345345345,'sdfsdf','+44','9763584223','sdf1234567','http://www.gautam.com','sdfsdf@ff.dd','asdasd',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(67,1,'Mr.','dfgdfgd',NULL,'dfgdfg','dfgdfg','dfgdfgdfg',3,123546,'sdfsdfsdf','+44','9687456321','wew1234567','http://www.priya.com','sdfsdf@ff.dd','sdfsdf',NULL,'2016-12-27','User-PC','192.168.0.100',NULL,NULL,NULL,'Active'),(68,1,'Miss.','Priyanka Chavan',NULL,'Dange Chowk thergoan pune33','Dange Chowk thergoan pune33','Nagpur Highway',1,411033,'pune','+91','7798427678','awe1235468','http://www.priya.com','chavanpriya1998@gmail.com','Nice',NULL,'2016-12-28','User-PC','192.168.0.108',NULL,NULL,NULL,'Active'),(69,1,'Mr.','sfdfrsdf',NULL,'sdfsdf','sdfsdf','sdfsdf',1,2151515,'swerwer','+91','9687456321','wer1234567','http://www.avi.com','dfsd@gfdf.gh','dfgdf','Lighthouse.jpg','2016-12-29','User-PC','192.168.0.117',NULL,NULL,NULL,'Active'),(70,1,'Mr.','sachin','d41d8cd98f00b204e9800998ecf8427e','asdasdasd','sdfsd','sdfsdf',1,12345674,'sdfsf','+91','9354628565','asd1234567','http://www.priya.com','qwerty@abc.com','sdfsdf','amol.jpg','2016-12-29','User-PC','192.168.0.117','2017-01-03','User-PC','192.168.0.113','Active'),(71,2,'Mr.','fgdfg','81dc9bdb52d04dc20036dbd8313ed055','dfgdfgdfg','dfgdfgdfg','dfgdfg',3,156456456,'dfgdfg','+44','9654478546','pqr1234567','http://www.gautam.com','asd@ff.gg','sfasd','Penguins.jpg','2017-01-03','User-PC','192.168.0.113',NULL,NULL,NULL,'Active');

/*Table structure for table `industry` */

DROP TABLE IF EXISTS `industry`;

CREATE TABLE `industry` (
  `indusid` int(50) NOT NULL AUTO_INCREMENT,
  `induscode` varchar(50) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`indusid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `industry` */

insert  into `industry`(`indusid`,`induscode`,`details`,`status`) values (1,'SIGN','Signifia Techride','Active'),(2,'KPIT','KPIT Infotech','Active'),(3,'INFOSYS','INFOSYS Tech Campus','Active'),(4,'TCS','Tata Consultancy Services','Active');

/*Table structure for table `otpinfo` */

DROP TABLE IF EXISTS `otpinfo`;

CREATE TABLE `otpinfo` (
  `email` varchar(100) DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `otpinfo` */

insert  into `otpinfo`(`email`,`otp`) values ('pramod.ahire18@gmail.com','suyupeki'),('pramod.ahire18@gmail.com','itpwhuuy');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
