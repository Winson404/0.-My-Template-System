DROP TABLE IF EXISTS announcement;

CREATE TABLE `announcement` (
  `actId` int(11) NOT NULL AUTO_INCREMENT,
  `actName` text NOT NULL,
  `actDate` varchar(20) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`actId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO announcement VALUES("2","Activity 5","2022-12-23","0000-00-00 00:00:00");
INSERT INTO announcement VALUES("3","Activity 3","2022-12-10","2022-12-11 00:00:00");
INSERT INTO announcement VALUES("4","Activity 2","2022-12-11","2022-12-11 00:00:00");
INSERT INTO announcement VALUES("5","Lorem ipsum, dolor sit amet consectetur adipisicing elit. Rem, ipsum delectus voluptatum? Molestias aut inventore eaque, maxime numquam dignissimos asperiores, voluptatibus consectetur distinctio excepturi odit architecto, saepe enim sunt, molestiae.","2022-12-11","2022-12-11 00:00:00");
INSERT INTO announcement VALUES("6","sample","2022-12-27","2022-12-27 00:00:00");
INSERT INTO announcement VALUES("8","gfdgfd","2023-01-06","2022-12-27 00:00:00");
INSERT INTO announcement VALUES("9","Announcement sample","2023-01-09","2023-01-16 00:00:00");
INSERT INTO announcement VALUES("10","SAMple","2023-01-24","2023-01-16 00:00:00");
INSERT INTO announcement VALUES("11","yhfng","2023-02-13","2023-02-05 00:00:00");
INSERT INTO announcement VALUES("12","smaple","2023-07-28","2023-07-08 00:00:00");
INSERT INTO announcement VALUES("13","sadsadsa","2023-07-29","2023-07-08 07:51:00");
INSERT INTO announcement VALUES("14","samples","2023-09-07","2023-09-20 08:26:00");
INSERT INTO announcement VALUES("16","dsadsadasdsa","2023-11-16","2023-10-24 15:58:49");
INSERT INTO announcement VALUES("17","akoa kinis","2023-12-09","2023-10-24 15:59:24");
INSERT INTO announcement VALUES("18","dfss","2023-12-18","2023-12-18 06:48:00");
INSERT INTO announcement VALUES("19","Smaple","2023-12-26","2023-12-18 19:03:50");
INSERT INTO announcement VALUES("20","dsa","2023-12-28","2023-12-18 19:17:01");
INSERT INTO announcement VALUES("22","dsadasda","2024-02-05","2024-01-07 14:24:44");



DROP TABLE IF EXISTS log_history;

CREATE TABLE `log_history` (
  `log_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Id` int(11) NOT NULL,
  `login_datetime` datetime NOT NULL,
  `logout_datetime` datetime NOT NULL,
  `logout_remarks` int(11) NOT NULL DEFAULT 0 COMMENT '0=Logged out successfully, 1=Unable to logout last login',
  PRIMARY KEY (`log_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO log_history VALUES("81","66","2024-01-07 14:22:11","0000-00-00 00:00:00","0");



DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `user_Id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `civilstatus` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `house_no` varchar(255) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `purok` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'User',
  `verification_code` int(11) NOT NULL,
  `date_registered` datetime NOT NULL,
  PRIMARY KEY (`user_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO users VALUES("66","Admindsa","Admin","Admin","Admin","2023-10-11","1 Week Old","admin@gmail.com","9359428963","Female","Male","Single","Admin","United Church Of Christ In The Philippines","Dsas","Admin","Admin","Dsa","Admin","Admin","","Admin","416311874_1482722635610435_7676179800727892167_n.jpg","0192023a7bbd73250516f069df18b500","Admin","254152","2022-11-25 00:00:00");
INSERT INTO users VALUES("72","Userdss","User","User","Jr","2022-12-21","5 days old","user@gmail.com","9359428963","gfdgfdg","Male","Married","gfdgfdgd","Buddhist","gfdg","fdg","gdfgdg","gfdg","dfgd","fdgdg","fdg","dfg","2.jpg","0192023a7bbd73250516f069df18b500","Staff","295016","2022-12-27 00:00:00");
INSERT INTO users VALUES("86","SampleSample Sample","Sample Sample Sample","Sample Sample","Sample","2008-02-27","15 Years Old","adminfdsfsfs@gmail.com","9123456789","Samplef Fsdfsd","Male","Single","Sampleff Fsdfds","Evangelical Christianity","Fdfds Fdsf","Fsfsdfsdds ","Sf Fsdff","Fsdfsdfsdfs Fdsf Sfs","Fdsfd Fsfs Fs","Fdsfds","Fsdffdsf","Sdfsd","pexels-photo-2379005.jpeg","0192023a7bbd73250516f069df18b500","Staff","0","2023-12-18 19:19:29");
INSERT INTO users VALUES("87","Lestesd","Leste","Leste","Leste","1986-02-26","37 Years Old","sonerwin12@gmail.com","9123456789","Leste","Female","Widow/ER","Leste","Iglesia Ni Cristo","Leste","Leste","Leste","Leste","Leste","Leste","","Leste","pexels-photo-1855582.jpeg","0192023a7bbd73250516f069df18b500","User","0","2023-12-18 19:22:55");



