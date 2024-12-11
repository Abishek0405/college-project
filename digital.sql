/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - digitalrental
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`digitalrental` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `digitalrental`;

/*Table structure for table `dorder` */

DROP TABLE IF EXISTS `dorder`;

CREATE TABLE `dorder` (
  `sno` int(20) NOT NULL AUTO_INCREMENT,
  `id` int(20) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pcate` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `psepc` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `days` varchar(200) DEFAULT NULL,
  `purpose` varchar(200) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `bank` varchar(200) DEFAULT NULL,
  `card` varchar(200) DEFAULT NULL,
  `ifsc` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `dorder` */

insert  into `dorder`(`sno`,`id`,`user`,`pcate`,`pname`,`psepc`,`cost`,`days`,`purpose`,`amount`,`bank`,`card`,`ifsc`,`cvv`,`status`) values (8,1,'Lakshmi','Digital Camera','Samsung','16 Mp  compact Digital Camera','1500','2','For Birthday Party','3000','SBI','5689562365','SBI003245','146',' Order Delivered'),(9,1,'Lakshmi','Laptop','Asus','i5 10th Generation','500','2','Project Purpose','3000','SBI','5689562365','SBI003245','146','Cancel');

/*Table structure for table `feed` */

DROP TABLE IF EXISTS `feed`;

CREATE TABLE `feed` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `feed` varchar(200) DEFAULT NULL,
  `rate` varchar(200) DEFAULT NULL,
  `respons` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feed` */

insert  into `feed`(`id`,`user`,`feed`,`rate`,`respons`) values (1,'Lakshmi',' Very useful to my project completion .Thank you so much','5','Thank you for your  response');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `pcate` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `psepc` varchar(200) DEFAULT NULL,
  `pdes` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  KEY `Sno` (`Sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`Sno`,`pcate`,`pname`,`psepc`,`pdes`,`cost`,`contact`,`location`,`image`) values (4,'Laptop','Asus','i5 10th Generation','This lab is 6 monts old .You can use all types of  Software .The GUI is available. More Comfortable and  Easy carrying','500','9089786756','Chennai','asuus.png'),(5,'Digital Camera','Samsung','16 Mp  compact Digital Camera','For the family occasions, parties, small events you can use.','1500','9089757455','Vadapalani ,Chennai','digital.jpg');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `profile` varchar(200) DEFAULT NULL,
  `id` int(100) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Activated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`profile`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`location`,`status`) values ('admin.png',1,'Lakshmi','lakshmi','14/08/98','lakshmi@gmail.com','Female','9089786756','Chennai','Activated'),('mul users.jpg',2,'Deepa','deepa','14/08/98','deepa@gmail.com','Female','9089786756','Chennai','Activated'),('admin.png',1,'Lakshmi','lakshmi','14/08/98','lakshmi@gmail.com','Female','9089786756','Chennai','Activated'),('admin.png',1,'Lakshmi','lakshmi','14/08/98','lakshmi@gmail.com','Female','9089786756','Chennai','Activated'),('bluebg.jpg',2,'Deepa','deepa','14/08/98','lakshmi@gmail.com','Female','9089786756','Chennai','Activated'),('bluebg.jpg',2,'Deepa','deepa','14/08/98','lakshmi@gmail.com','Female','9089786756','Chennai','Activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
