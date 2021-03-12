
CREATE DATABASE IF NOT EXISTS 
USE `cmmidevtest`;


MSISDN, SIM_TYPE, NAME, DATE_OF_BIRTH, GENDER, ADDRESS, ID_NUMBER, STATUS 
	

CREATE TABLE IF NOT EXISTS `person` (
  `msisdn` int(12) NOT NULL AUTO_INCREMENT,
  `sim_type` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_of_birth` int(14) NOT NULL,
  `gender` char(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `id_number` varchar(100) NOT NULL, 
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`msisdn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `person` (`msisdn`, `sim_type`, `name`, `date_of_birth`, `gender`, `address`, `id_number`, `status`) VALUES
	(         , 'POSTPAID', 'PAPAYA POKPOK', 20/01/1997, 'Male', 'Bankgkok' , 'AB506', 'CREATED'),
	(6663981312, 'POSTPAID', 'PAPAYA&& POKPOK', 20/01/2022, 'M', 'Samai' , 'NYX06', 'INIT'),
    (6663981388, 'POSTPAID', 'booK cANTOON', 21/01/2022, 'F', 'Phayathi' , 'NY006', 'CREATED'),
	(6663981218, 'POSTPAID', 'I have a pen', 21/01/1997, 'ERKEK', 'Nonthaburi' , 'NY^506', 'CREATED'),
	(6663981313, 'POSTPAID ', 'Dangklai', 20/01/1997, 'M', 'Bangkok' , 'NY40006', 'ACCEPTED'),
	(6641475977, 'PREPAID ', 'Modern name', 20/05/1996, 'M', 'Petchaboon' , '3533', 'REJECTED'),
    (6041475817, 'PREPAID ', 'Modern', 20/05/1966, 'FEMALE', 'Narathiwat' , 'PASS001', 'CREATED'),
	(6641475871, 'POS ', 'Montana Park', 20/05/1996, 'F', 'Ayuthaya' , 'PASS002', 'INIT'),
	(605041475877, 'PREPAID ', 'Rak loak', 20/05/196, 'M', 'Phathumtani' , 'PASS003', 'CREATED'),
	(6641475877, 'PREPAID ', 'Silisak Nammaidee', 20/05/1990, 'M', 'Phayathi' , 'PASS004', 'ACCEPTED'); 
	
	
	