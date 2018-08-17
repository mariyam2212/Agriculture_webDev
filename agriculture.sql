-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.8-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema agriculture
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ agriculture;
USE agriculture;

--
-- Table structure for table `agriculture`.`crop`
--

DROP TABLE IF EXISTS `crop`;
CREATE TABLE `crop` (
  `CROPCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `PRODUCTIONCODT` double NOT NULL,
  `PRODUCTIONSDALE` double NOT NULL,
  `LANDCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CROPCODE`),
  KEY `FK_CROP_1` (`LANDCODE`),
  CONSTRAINT `FK_CROP_1` FOREIGN KEY (`LANDCODE`) REFERENCES `land` (`LANDCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`crop`
--

/*!40000 ALTER TABLE `crop` DISABLE KEYS */;
/*!40000 ALTER TABLE `crop` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`cultivation`
--

DROP TABLE IF EXISTS `cultivation`;
CREATE TABLE `cultivation` (
  `CULTIVATIONCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OPERATION` varchar(45) NOT NULL,
  `COST` double NOT NULL,
  `LABOURCOST` double NOT NULL,
  `CROPCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CULTIVATIONCODE`),
  KEY `FK_CULTIVATION_1` (`CROPCODE`),
  CONSTRAINT `FK_CULTIVATION_1` FOREIGN KEY (`CROPCODE`) REFERENCES `crop` (`CROPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`cultivation`
--

/*!40000 ALTER TABLE `cultivation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cultivation` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`daybook`
--

DROP TABLE IF EXISTS `daybook`;
CREATE TABLE `daybook` (
  `SERIALNUMBER` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PURTICULAR` varchar(500) NOT NULL,
  `DATE` varchar(45) NOT NULL,
  `DEBITAMOUNT` double NOT NULL,
  `CREDITAMOUNT` double NOT NULL,
  PRIMARY KEY (`SERIALNUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`daybook`
--

/*!40000 ALTER TABLE `daybook` DISABLE KEYS */;
/*!40000 ALTER TABLE `daybook` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`farmer`
--

DROP TABLE IF EXISTS `farmer`;
CREATE TABLE `farmer` (
  `FARMERCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `PHONE` varchar(45) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  PRIMARY KEY (`FARMERCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`farmer`
--

/*!40000 ALTER TABLE `farmer` DISABLE KEYS */;
/*!40000 ALTER TABLE `farmer` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`fertilizer`
--

DROP TABLE IF EXISTS `fertilizer`;
CREATE TABLE `fertilizer` (
  `FERTILIZERCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `CROPCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`FERTILIZERCODE`),
  KEY `FK_FERTILIZER_1` (`CROPCODE`),
  CONSTRAINT `FK_FERTILIZER_1` FOREIGN KEY (`CROPCODE`) REFERENCES `crop` (`CROPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`fertilizer`
--

/*!40000 ALTER TABLE `fertilizer` DISABLE KEYS */;
/*!40000 ALTER TABLE `fertilizer` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`fertlizerdetail`
--

DROP TABLE IF EXISTS `fertlizerdetail`;
CREATE TABLE `fertlizerdetail` (
  `DETAILCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `QUANTITY` double NOT NULL,
  `COST` double NOT NULL,
  `FERTILIZERCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`DETAILCODE`),
  KEY `FK_FERTLIZERDETAIL_1` (`FERTILIZERCODE`),
  CONSTRAINT `FK_FERTLIZERDETAIL_1` FOREIGN KEY (`FERTILIZERCODE`) REFERENCES `fertilizer` (`FERTILIZERCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`fertlizerdetail`
--

/*!40000 ALTER TABLE `fertlizerdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fertlizerdetail` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`harvest`
--

DROP TABLE IF EXISTS `harvest`;
CREATE TABLE `harvest` (
  `HARVESTCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `HARVESTDATE` varchar(45) NOT NULL,
  `COST` double NOT NULL,
  `CROPCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`HARVESTCODE`),
  KEY `FK_HARVEST_1` (`CROPCODE`),
  CONSTRAINT `FK_HARVEST_1` FOREIGN KEY (`CROPCODE`) REFERENCES `crop` (`CROPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`harvest`
--

/*!40000 ALTER TABLE `harvest` DISABLE KEYS */;
/*!40000 ALTER TABLE `harvest` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`irrigation`
--

DROP TABLE IF EXISTS `irrigation`;
CREATE TABLE `irrigation` (
  `IRRIGATIONCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MEDIUM` varchar(45) NOT NULL,
  `COST` double NOT NULL,
  `CROPCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IRRIGATIONCODE`),
  KEY `FK_IRRIGATION_1` (`CROPCODE`),
  CONSTRAINT `FK_IRRIGATION_1` FOREIGN KEY (`CROPCODE`) REFERENCES `crop` (`CROPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`irrigation`
--

/*!40000 ALTER TABLE `irrigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `irrigation` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`labour`
--

DROP TABLE IF EXISTS `labour`;
CREATE TABLE `labour` (
  `LABOURCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) NOT NULL,
  `WAGE` int(10) unsigned NOT NULL,
  `WORKINGDAYS` int(10) unsigned NOT NULL,
  `CROPCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`LABOURCODE`),
  KEY `FK_LABOUR_1` (`CROPCODE`),
  CONSTRAINT `FK_LABOUR_1` FOREIGN KEY (`CROPCODE`) REFERENCES `crop` (`CROPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`labour`
--

/*!40000 ALTER TABLE `labour` DISABLE KEYS */;
/*!40000 ALTER TABLE `labour` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`land`
--

DROP TABLE IF EXISTS `land`;
CREATE TABLE `land` (
  `LANDCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AREA` double NOT NULL,
  `FARMERCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`LANDCODE`),
  KEY `FK_LAND_1` (`FARMERCODE`),
  CONSTRAINT `FK_LAND_1` FOREIGN KEY (`FARMERCODE`) REFERENCES `farmer` (`FARMERCODE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`land`
--

/*!40000 ALTER TABLE `land` DISABLE KEYS */;
/*!40000 ALTER TABLE `land` ENABLE KEYS */;


--
-- Table structure for table `agriculture`.`sowing`
--

DROP TABLE IF EXISTS `sowing`;
CREATE TABLE `sowing` (
  `SOWINGCODE` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LABOURCOST` double NOT NULL,
  `SEEDCOST` double NOT NULL,
  `CROPCODE` int(10) unsigned NOT NULL,
  PRIMARY KEY (`SOWINGCODE`),
  KEY `FK_SOWING_1` (`CROPCODE`),
  CONSTRAINT `FK_SOWING_1` FOREIGN KEY (`CROPCODE`) REFERENCES `crop` (`CROPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agriculture`.`sowing`
--

/*!40000 ALTER TABLE `sowing` DISABLE KEYS */;
/*!40000 ALTER TABLE `sowing` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
