SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `test_lab2`;

CREATE SCHEMA IF NOT EXISTS `test_lab2`
  DEFAULT CHARACTER SET utf8;

CREATE USER 'testUser'@'localhost' IDENTIFIED BY 'test_password';
GRANT ALL PRIVILEGES ON `test_lab2` . * TO 'testUser'@'localhost';

USE `test_lab2`;

CREATE TABLE IF NOT EXISTS `test_lab2`.`user` (
  `id`      INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`    VARCHAR(20)  NOT NULL,
  `surname` VARCHAR(20)  NOT NULL,
  `email`   VARCHAR(255) NOT NULL,
  `phone`   VARCHAR(20)  NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO `test_lab2`.`user` (`name`, `surname`, `email`, `phone`)
VALUES ("Gisela", "Bond", "lectus.justo.eu@euismodestarcu.edu", "(168) 623-0023"),
  ("Fay", "Ellis", "purus.Maecenas@dolor.net", "(497) 253-8625"),
  ("Paloma", "Guzman", "convallis@dolorNulla.com", "(528) 149-2954"),
  ("Hall", "Boyd", "sociis.natoque.penatibus@libero.ca", "(238) 576-9526"),
  ("Jonas", "Norman", "eu.metus.In@molestie.co.uk", "(261) 269-4422"),
  ("Bruce", "Moreno", "gravida.molestie.arcu@et.net", "(132) 671-7413"),
  ("Laura", "Holmes", "semper.auctor@Mauris.com", "(816) 804-9057"),
  ("Kelly", "Payne", "egestas@ut.edu", "(664) 203-3834"),
  ("Hermione", "Newton", "mauris.rhoncus@diamdictum.net", "(112) 136-4178"),
  ("Chase", "Bowers", "pede.nec@consectetueradipiscing.co.uk", "(492) 982-1374");

INSERT INTO `user` (`name`, `surname`, `email`, `phone`)
VALUES ("Shoshana", "Carrillo", "hendrerit.a@rhoncus.co.uk", "(452) 281-4655"),
  ("Vance", "Miranda", "tempor.augue@netusetmalesuada.net", "(262) 335-8623"),
  ("Kendall", "Douglas", "pellentesque@nullaDonecnon.net", "(115) 634-5536"),
  ("Justina", "Hampton", "nunc.In@malesuada.co.uk", "(454) 503-7931"),
  ("Amal", "Mcdaniel", "amet.ornare@arcuiaculis.edu", "(803) 307-2346"),
  ("Joy", "Cook", "Nunc@idenimCurabitur.com", "(355) 166-5823"),
  ("Madonna", "Hardy", "ligula.eu.enim@orci.net", "(599) 764-7812"),
  ("Carolyn", "Drake", "elementum.lorem@neque.com", "(987) 221-0093"),
  ("Price", "Summers", "Vestibulum.accumsan.neque@Morbi.org", "(860) 270-8031"),
  ("Iola", "Porter", "Nunc.commodo.auctor@Vestibulum.net", "(462) 250-1235");

INSERT INTO `user` (`name`, `surname`, `email`, `phone`)
VALUES ("Winifred", "Mayer", "at.augue.id@viverraMaecenasiaculis.org", "(304) 702-5337"),
  ("Karen", "Mccarthy", "mi@risusaultricies.co.uk", "(521) 732-2167"),
  ("Karyn", "Good", "Mauris@Inat.edu", "(671) 499-3354"),
  ("Paula", "Whitehead", "Etiam@Sedmalesuadaaugue.net", "(229) 249-5730"),
  ("Kirk", "Ramos", "Etiam@ultricesa.ca", "(310) 263-2781"),
  ("Marcia", "Jacobs", "penatibus.et.magnis@sitametrisus.org", "(586) 818-5842"),
  ("Cain", "Gilmore", "purus@orciPhasellus.ca", "(690) 555-4582"),
  ("Chancellor", "Webb", "Donec.at.arcu@vestibulumneceuismod.ca", "(128) 107-4765"),
  ("Harlan", "Kim", "nec@elitAliquamauctor.net", "(565) 447-6871"),
  ("Amaya", "Charles", "ante.ipsum@pedeultricesa.ca", "(841) 524-7901");

INSERT INTO `user` (`name`, `surname`, `email`, `phone`)
VALUES ("Isabelle", "Anthony", "Lorem.ipsum@mauris.net", "(957) 843-6243"),
  ("Tyrone", "Cooley", "vestibulum.lorem@a.co.uk", "(491) 612-7524"),
  ("Summer", "Underwood", "elementum.at.egestas@arcuetpede.org", "(163) 766-5996"),
  ("Declan", "Weeks", "Maecenas.libero.est@Vestibulumuteros.com", "(466) 708-5694"),
  ("Alfreda", "Butler", "Quisque.tincidunt.pede@augueSedmolestie.com", "(265) 367-5712"),
  ("Amy", "Swanson", "Morbi.non.sapien@pretium.ca", "(846) 572-7285"),
  ("Victoria", "Holland", "nec@at.edu", "(556) 131-6423"),
  ("Katell", "Brooks", "sem.molestie.sodales@imperdiet.edu", "(538) 317-7791"),
  ("Sydnee", "Powell", "Sed.congue@blanditviverra.com", "(983) 590-5283"),
  ("Penelope", "Humphrey", "arcu.Vivamus.sit@Mauris.edu", "(823) 429-6091");

INSERT INTO `user` (`name`, `surname`, `email`, `phone`)
VALUES ("Drew", "Forbes", "Aliquam.nisl.Nulla@nislarcuiaculis.edu", "(350) 740-5268"),
  ("Uriah", "Crane", "fringilla@justo.net", "(169) 497-1596"),
  ("Desirae", "Francis", "parturient.montes@nec.com", "(424) 672-0458"),
  ("Palmer", "Fitzpatrick", "libero.est@lacus.org", "(518) 865-5644"),
  ("Christopher", "Bryant", "nascetur@nequeSed.org", "(189) 806-5063"),
  ("Hayley", "Vaughan", "Donec@aliquetmetusurna.ca", "(532) 262-4463"),
  ("Alisa", "Nguyen", "gravida@incursuset.edu", "(493) 297-5791"),
  ("Dorothy", "Kim", "sit.amet@ultricesaauctor.net", "(416) 906-9170"),
  ("Hermione", "Conrad", "semper.Nam.tempor@dui.edu", "(135) 552-0691"),
  ("Griffith", "George", "ornare.placerat@Integervulputaterisus.edu", "(843) 412-2787");

SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;