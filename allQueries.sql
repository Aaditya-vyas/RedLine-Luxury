create database bca_2021_project;

use bca_2021_project;

CREATE TABLE `customers` (
  `name` varchar(30) NOT NULL,
  `cid` int(5) NOT NULL PRIMARY KEY,
  `address` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customers` (`name`, `cid`, `address`, `phone`, `email`) VALUES
('Aaditya', 1, 'Jaipur', 123456789, 'aaditya@gmail.com'),
('kunal', 2, 'patna', 321456987, 'kunal@gmail.com'),
('devesh', 3, 'kanpur', 147852369, 'devesh@gmail.com'),
('harsh', 4, 'bengal', 326598741, 'harsh@gmail.com'),
('mahipal', 5, 'jammu', 987456321, 'mahipal@gmail.com'),
('aadarsh', 6, 'Jaipur', 123456789, 'aadarsh@gmail.com'),
('kashish', 7, 'patna', 321456987, 'kashish@gmail.com'),
('shivani', 8, 'kanpur', 147852369, 'shivani@gmail.com'),
('harshit', 9, 'bengal', 326598741, 'harshit@gmail.com'),
('mahi', 10, 'jammu', 987456321, 'mahi@gmail.com'),
('akash', 11, 'Jaipur', 123456789, 'akash@gmail.com'),
('kushal', 12, 'patna', 321456987, 'kushal@gmail.com'),
('divyank', 13, 'kanpur', 147852369, 'divyank@gmail.com'),
('daksh', 14, 'bengal', 326598741, 'daksh@gmail.com'),
('harshita', 15, 'jammu', 987456321, 'harshita@gmail.com'),
('khushi', 16, 'Jaipur', 123456789, 'khushi@gmail.com'),
('kush', 17, 'patna', 321456987, 'kush@gmail.com'),
('shivank', 18, 'kanpur', 147852369, 'shivank@gmail.com'),
('kavya', 19, 'bengal', 326598741, 'kavya@gmail.com'),
('mohit', 20, 'jammu', 987456321, 'mohit@gmail.com');


CREATE TABLE `deal` (
  `dealid` int(5) NOT NULL,
  `cid` int(5) NOT NULL,
  `vid` varchar(20) NOT NULL PRIMARY KEY,
  `spid` int(5) NOT NULL,
  `buyprice` int(10) NOT NULL,
  `saleprice` int(10) NOT NULL,
  `deliverydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `salesperson` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `spid` int(5) NOT NULL PRIMARY KEY,
  `totsales` int(5) NOT NULL DEFAULT 0,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `salesperson` (`fname`, `lname`, `spid`, `phone`) VALUES
('mukesh', 'raj', 1, 326145879),
('rishabh', 'singh', 2, 1074852056),
('ashish', 'sharma', 3, 321456987),
('raghav', 'singh', 4, 2147483647),
('kartik', 'singh', 5, 2147483647);


CREATE TABLE `vehicle_available` (
  `vid` varchar(20) NOT NULL PRIMARY KEY,
  `manufacturer` varchar(30) NOT NULL,
  `manuyear` YEAR(4) NOT NULL,
  `model` varchar(50) NOT NULL,
  `details` varchar(100) NOT NULL,
  `buyprice` int(10) NOT NULL,
  `saleprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `payment` (
  `trxnid` int(5) NOT NULL,
  `cid` int(5) NOT NULL,
  `vid` varchar(20) NOT NULL,
  `ptype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;


insert into deal values(1,1,'LJP234R5TY89JKWE',1,700000,900000,"2015-09-12"),
(2,2,'SDHF8734YB4B5787',2,600000,750000,"2018-12-25"),
(3,3,'HCDUY487BV58758B',2,600000,750000,"2019-10-25"),
(4,4,'JDND7V487R47RVBY',4,2000000,2300000,"2020-10-10"),
(5,5,'SDSCB374R3478B6C',3,800000,900000,"2021-12-25");

insert into vehicle_available values ('LJP234R5TY89JKWE','SKODA',2012,'rapid','petrol',700000,900000),('SDHF8734YB4B5787','HUYNDAI',2016,'I20','diesel',600000,750000),('HCDUY487BV58758B','HONDA',2018,'CITY','diesel',800000,1000000),('JDND7V487R47RVBY','AUDI',2019,'A3','petrol',2000000,2300000),
('SDSCB374R3478B6C','VOLKSWAGEN',2020,'POLO GT','petrol',800000,900000);


insert into payment values
(1, 1, 'LJP234R5TY89JKWE', 'cash'), 
(2, 2, 'JDND7V487R47RVBY', 'cash'),  
(3, 3, 'HCDUY487BV58758B', 'NEFT'),  
(4, 4, 'JDND7V487R47RVBY', 'Cheque'),  
(5, 5, 'SDSCB374R3478B6C', 'Cheque');


