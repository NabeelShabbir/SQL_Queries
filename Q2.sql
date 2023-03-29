

-- Create PLANE_TYPE table
CREATE TABLE PLANE_TYPE (
    Model_Number INT PRIMARY KEY,
    Capacity INT,
    Weight INT
);
-- Create HANGAR table
CREATE TABLE HANGAR (
    Number INT PRIMARY KEY,
    Capacity INT,
    H_Location VARCHAR(50)
);
-- Create AIRPLANE table
CREATE TABLE AIRPLANE (
    Reg# INT PRIMARY KEY,
    OF_TYPE INT,
    STORED_IN INT,
    FOREIGN KEY (OF_TYPE) REFERENCES PLANE_TYPE (Model_Number),
    FOREIGN KEY (STORED_IN) REFERENCES HANGAR (Number)
);





-- Create OWNER table
CREATE TABLE O_OWNER (
    ID INT PRIMARY KEY,
    O_Type VARCHAR(20),
);
CREATE TABLE PERSON (
    Ssn VARCHAR(20) PRIMARY KEY,
	E_Name VARCHAR(50),
    E_Address VARCHAR(100),
    Phone VARCHAR(20),
	Owner_ID INT
);
-- Create EMPLOYEE table
CREATE TABLE EMPLOYEE (
    Ssn VARCHAR(20) PRIMARY KEY,
    Salary INT,
    E_Shift VARCHAR(20),
);
-- Create PILOT table
CREATE TABLE PILOT (
    Ssn VARCHAR(20) PRIMARY KEY,
    Lic_num VARCHAR(20),
    Restrictions VARCHAR(20),
    --FOREIGN KEY (Ssn) REFERENCES EMPLOYEE (Ssn)
);
CREATE TABLE CORPORATION (
    C_ID VARCHAR(20) PRIMARY KEY,
    C_Name VARCHAR(50),
    C_Address VARCHAR(100),
    CPhone VARCHAR(20),
	Owner_ID INT
);



-- Create SERVICE table
CREATE TABLE S_SERVICE (
    ID INT PRIMARY KEY,
    S_Date DATE,
    S_Hours INT,
    Work_code VARCHAR(20)
);

-- Create PLANE_SERVICE table
CREATE TABLE PLANE_SERVICE (
    Reg# INT,
    Service_ID INT,
  --  PRIMARY KEY (Reg#, Service_ID),
 --   FOREIGN KEY (Reg#) REFERENCES AIRPLANE (Reg#),
 --   FOREIGN KEY (Service_ID) REFERENCES SERVICE (ID)
);

-- Create OWNS table
CREATE TABLE OWNS (
    Reg# INT,
    Owner_ID INT,
    Pdate DATE,
  --  PRIMARY KEY (Reg#, Owner_ID),
  --  FOREIGN KEY (Reg#) REFERENCES AIRPLANE (Reg#),
  --  FOREIGN KEY (Owner_ID) REFERENCES OWNER (ID)
);

-- Create FLIES table
CREATE TABLE FLIES (
    Ssn VARCHAR(20),
    Model INT,
  --  PRIMARY KEY (Ssn, Model),
  --  FOREIGN KEY (Ssn) REFERENCES PILOT (Ssn),
  --  FOREIGN KEY (Model) REFERENCES PLANE_TYPE (Model_Number)
);

-- Create WORKS_ON table
CREATE TABLE WORKS_ON (
    Ssn VARCHAR(20),
    Model INT,
  --  PRIMARY KEY (Ssn, Model),
  --  FOREIGN KEY (Ssn) REFERENCES EMPLOYEE (Ssn),
  --  FOREIGN KEY (Model) REFERENCES PLANE_TYPE (Model_Number)
);

CREATE TABLE MAINTAINS (
    Ssn VARCHAR(20),
	seviceID int
);
INSERT INTO PLANE_TYPE (Model_Number, Capacity, Weight)
VALUES
    (1, 100, 5000),
    (2, 200, 7500),
    (3, 150, 6000),
    (4, 300, 9000),
    (5, 120, 5500),
    (6, 250, 8000),
    (7, 170, 6500),
    (8, 350, 10000),
    (9, 90, 4500),
    (10, 180, 7000),
    (11, 130, 5750),
    (12, 275, 8250),
    (13, 190, 6250),
    (14, 400, 12000),
    (15, 100, 5500),
    (16, 220, 7500),
    (17, 140, 6000),
    (18, 325, 9500),
    (19, 110, 5000),
    (20, 230, 8000);

INSERT INTO HANGAR (Number, Capacity, H_Location)
VALUES (1, 10, 'Islamabad'),
       (2, 8, 'Lahore'),
       (3, 9, 'Karachi'),
       (4, 9, 'Peshawar'),
       (5, 10, 'Quetta'),
       (6, 8, 'Faisalabad'),
       (7, 9, 'Multan'),
       (8, 6, 'Rawalpindi'),
       (9, 11, 'Sialkot'),
       (10, 7, 'Gujranwala'),
       (11, 6, 'Islamabad'),
       (12, 8, 'Lahore'),
       (13, 9, 'Karachi'),
       (14, 10, 'Peshawar'),
       (15, 7, 'Quetta'),
       (16, 6, 'Faisalabad'),
       (17, 9, 'Multan'),
       (18, 8, 'Rawalpindi'),
       (19, 6, 'Sialkot'),
       (20, 13, 'Gujranwala');

INSERT INTO AIRPLANE (Reg#, OF_TYPE, STORED_IN) VALUES
	(1001, 1, 1),
	(1002, 4, 2),
	(1003, 3, 3),
	(1004, 1, 4),
	(1005, 2, 5),
	(1006, 3, 6),
	(1007, 4, 7),
	(1008, 2, 8),
	(1009, 3, 9),
	(1010, 1, 10),
	(1011, 2, 11),
	(1012, 5, 12),
	(1013, 1, 13),
	(1014, 2, 14),
	(1015, 3, 15),
	(1016, 4, 16),
	(1017, 2, 2),
	(1018, 3, 3),
	(1019, 5, 4),
	(1020, 5, 5);

INSERT INTO O_OWNER (ID, O_Type)
VALUES 
(1, 'Person'),
(2, 'Person'),
(3, 'Person'),
(4, 'Person'),
(5, 'Person'),
(6, 'Person'),
(7, 'Person'),
(8, 'Person'),
(9, 'Person'),
(10, 'Person'),
(11, 'Corporation'),
(12, 'Corporation'),
(13, 'Corporation'),
(14, 'Corporation'),
(15, 'Corporation'),
(16, 'Corporation'),
(17, 'Corporation'),
(18, 'Corporation'),
(19, 'Corporation'),
(20, 'Corporation'),
(21, 'Person'),
(22, 'Person'),
(23, 'Person'),
(24, 'Person'),
(25, 'Person'),
(26, 'Person'),
(27, 'Person'),
(28, 'Person'),
(29, 'Person'),
(30, 'Person'),
(31, 'Person'),
(32, 'Person'),
(33, 'Person'),
(34, 'Person'),
(35, 'Person'),
(36, 'Person'),
(37, 'Person'),
(38, 'Person'),
(39, 'Person'),
(40, 'Person'),
(41, 'Person'),
(42, 'Person'),
(43, 'Person'),
(44, 'Person'),
(45, 'Person'),
(46, 'Person'),
(47, 'Person'),
(48, 'Person'),
(49, 'Person'),
(50, 'Person'),
(51, 'Corporation'),
(52, 'Corporation'),
(53, 'Corporation'),
(54, 'Corporation'),
(55, 'Corporation'),
(56, 'Corporation'),
(57, 'Corporation'),
(58, 'Corporation'),
(59, 'Corporation'),
(60, 'Corporation');



INSERT INTO AIRPLANE (Reg#, OF_TYPE, STORED_IN) VALUES
(1099, 3, 15),

(1021, 1, 6),
(1022, 4, 7),
(1023, 3, 8),
(1024, 1, 9),
(1025, 2, 10),
(1026, 3, 11),
(1027, 4, 12),
(1028, 2, 13),
(1029, 3, 14),
(1030, 1, 15),
(1031, 2, 16),
(1032, 5, 17),
(1033, 1, 18),
(1034, 2, 19),
(1035, 3, 20),
(1036, 4, 1),
(1037, 2, 2),
(1038, 3, 3),
(1039, 5, 4),
(1040, 5, 5),
(1041, 1, 6),
(1042, 4, 7),
(1043, 3, 8),
(1044, 1, 9),
(1045, 2, 10),
(1046, 3, 11),
(1047, 4, 12),
(1048, 2, 13),
(1049, 3, 14),
(1050, 1, 15),
(1051, 2, 16),
(1052, 5, 17),
(1053, 1, 18),
(1054, 2, 19),
(1055, 3, 20),
(1056, 4, 1),
(1057, 2, 2),
(1058, 3, 3),
(1059, 5, 4),
(1060, 5, 5),
(1061, 1, 6),
(1062, 4, 7),
(1063, 3, 8),
(1064, 1, 9),
(1065, 2, 10),
(1066, 3, 11),
(1067, 4, 12),
(1068, 2, 13),
(1069, 3, 14),
(1070, 1, 15);



INSERT INTO PERSON (Ssn, E_Name, E_Address, Phone, Owner_ID) VALUES 
('123-00-6789', 'Ali Hassan', 'Lahore', '123-1234', 1),
('234-00-7890', 'Ayesha Tariq', 'Islamabad', '123-2345', 2),
('345-00-8901', 'Hassan Fawad', 'Karachi', '123-3456', 3),
('456-00-9012', 'Nida Tariq', 'Faisalabad', '123-4567', 4),
('567-00-0123', 'Usman Fawad', 'Lahore', '123-5678', 5),
('678-00-1234', 'Sana Tariq', 'Rawalpindi', '123-6789', 6),
('789-00-2345', 'Adil Ali', 'Quetta', '123-7890', 7),
('890-00-3456', 'Saima Nasir', 'Lahore', '123-8901', 8),
('901-00-4567', 'Tariq Bilal', 'Karachi', '123-9012', 9),
('012-34-0000', 'Aisha Bilal', 'Peshawar', '123-0123', 10),
('123-45-0000', 'Bilal Fawad', 'Lahore', '123-2234', 41),
('234-56-0000', 'Fatima Hassan', 'Islamabad', '123-3345', 42),
('345-67-0000', 'Imran Usman', 'Karachi', '123-4456', 43),
('456-78-0000', 'Zainab Hassan', 'Faisalabad', '123-5567', 44),
('567-89-0000', 'Ahmed Usman', 'Lahore', '123-6678', 45),
('678-90-0000', 'Asma Ali', 'Rawalpindi', '123-7789', 46),
('789-01-0000', 'Raza Usman', 'Quetta', '123-8890', 47),
('890-12-0000', 'Maryam Ahmed', 'Lahore', '123-9901', 48),
('901-23-0000', 'Fawad Ali', 'Karachi', '123-0012', 49),
('012-34-5679', 'Zain Ahmed', 'Peshawar', '123-0023', 50),
('123-45-6781', 'Sadia Ali', 'Lahore', '123-0034', 21),
('234-56-7892', 'Noman Ahmed', 'Islamabad', '123-0045', 22),
('345-67-8903', 'Aliya Ahmed', 'Karachi', '123-0056', 23),
('456-78-9014', 'Imtiaz Ali', 'Faisalabad', '123-00067', 24),
('567-89-0125', 'Hina Hassan', 'Lahore', '123-0078', 25),
('678-90-1236', 'Nasir', 'Rawalpindi', '123-0089', 26),
('789-01-2347', 'Mehwish Hassan', 'Quetta', '123-0090', 27),
('000-45-6789', 'Ali Raza', 'Lahore', '123-1230', 28),
('000-56-7890', 'Ayesha Nasir', 'Islamabad', '123-2340', 29),
('000-67-8901', 'Hassan Raza', 'Karachi', '123-3450', 30),
('000-78-9012', 'Nida Nasir', 'Faisalabad', '123-4560', 31),
('000-89-0123', 'Usman Zain', 'Lahore', '123-5670', 32),
('000-90-1234', 'Sana Zain', 'Rawalpindi', '123-6780', 33),
('000-01-2345', 'Adil Imran', 'Quetta', '123-7800', 34),
('000-12-3456', 'Saima Zain', 'Lahore', '123-8900', 35),
('000-23-4567', 'Tariq Bilal', 'Karachi', '123-9010', 36),
('000-34-5678', 'Aisha Imran', 'Peshawar', '123-0120', 37),
('000-45-6780', 'Bilal Raza', 'Lahore', '123-1030', 38),
('000-56-7891', 'Fatima Nasir', 'Islamabad', '123-0345', 39),
('000-67-8902', 'Imran Imran', 'Karachi', '123-3006', 40);


INSERT INTO PERSON (Ssn, E_Name, E_Address, Phone, Owner_ID) VALUES 
('000-00-0001', 'Ali Tariq', 'Lahore', '100-1234', NULL),
('000-00-0002', 'Ayesha Ali', 'Islamabad', '100-2345', NULL),
('345-00-0003', 'Hassan Fawad', 'Karachi', '100-3456', NULL),
('456-00-0004', 'Nida Tariq', 'Faisalabad', '100-4567', NULL),
('567-00-0005', 'Usman Fawad', 'Lahore', '100-5678', NULL),
('678-00-0036', 'Sana Tariq', 'Rawalpindi', '100-6789', NULL),
('789-00-0047', 'Adil Ali', 'Quetta', '100-7890', NULL),
('890-00-0058', 'Saima Adil', 'Lahore', '100-8901', NULL),
('901-00-0069', 'Tariq Bilal', 'Karachi', '100-9012',NULL),
('012-34-0010', 'Aisha Imran', 'Peshawar', '100-0123', NULL),
('123-45-0011', 'Bilal Fawad', 'Lahore', '100-2234', NULL),
('234-56-0012', 'Fatima Hassan', 'Islamabad', '100-3345', NULL),
('345-67-0013', 'Imran Tariq', 'Karachi', '100-4456', NULL),
('456-78-0014', 'Zainab Adil', 'Faisalabad', '100-5567', NULL),
('567-89-0015', 'Ahmed Usman', 'Lahore', '100-6678', NULL),
('678-90-0016', 'Asma Ali', 'Rawalpindi', '100-7789', NULL),
('789-01-0017', 'Raza Usman', 'Quetta', '100-8890', NULL),
('890-12-0018', 'Maryam Imran', 'Lahore', '100-9901', NULL),
('901-23-0019', 'Fawad Tariq', 'Karachi', '100-0012', NULL),
('012-34-0020', 'Zain Imran', 'Peshawar', '100-0023', NULL);


INSERT INTO EMPLOYEE (Ssn, Salary, E_Shift) VALUES
    ('000-00-0001', 50000, 'Day'),
    ('000-00-0002', 60000, 'Night'),
    ('345-00-0003', 70000, 'Day'),
    ('456-00-0004', 80000, 'Night'),
    ('567-00-0005', 90000, 'Day'),
    ('678-00-0006', 100000, 'Night'),
    ('789-00-0007', 55000, 'Day'),
    ('890-00-0008', 65000, 'Night'),
    ('901-00-0009', 75000, 'Day'),
    ('012-34-0010', 85000, 'Night'),
    ('123-45-0011', 95000, 'Day'),
    ('234-56-0012', 105000, 'Night'),
    ('345-67-0013', 57500, 'Day'),
    ('456-78-0014', 67500, 'Night'),
    ('567-89-0015', 77500, 'Day'),
    ('678-90-0016', 87500, 'Night'),
    ('789-01-0017', 97500, 'Day'),
    ('890-12-0018', 107500, 'Night'),
    ('901-23-0019', 50000, 'Day'),
    ('012-34-0020', 60000, 'Night');
	
INSERT INTO PERSON (Ssn, E_Name, E_Address, Phone, Owner_ID) VALUES 
('100-00-0001', 'Ali Zain', 'Lahore', '200-1234', NULL),
('200-00-0002', 'Ayesha Ali', 'Islamabad', '200-2345', NULL),
('300-00-0003', 'Hassan Zain', 'Karachi', '200-3456', NULL),
('400-00-0004', 'Nida Fawad', 'Faisalabad', '200-4567', NULL),
('500-00-0005', 'Usman Zain', 'Lahore', '200-5678', NULL),
('600-00-0036', 'Sana Fawad', 'Rawalpindi', '200-6789', NULL),
('700-00-0047', 'Adil Ali', 'Quetta', '200-7890', NULL),
('800-00-0058', 'Saima Adil', 'Lahore', '200-8901', NULL),
('900-00-0069', 'Tariq Bilal', 'Karachi', '200-9012',NULL),
('000-34-0010', 'Aisha Imran', 'Peshawar', '200-0123', NULL),
('100-45-0011', 'Bilal Fawad', 'Lahore', '200-2234', NULL),
('200-56-0012', 'Fatima Hassan', 'Islamabad', '200-3345', NULL),
('300-67-0013', 'Imran Fawad', 'Karachi', '200-4456', NULL),
('400-78-0014', 'Zainab Adil', 'Faisalabad', '200-5567', NULL),
('500-89-0015', 'Ahmed Usman', 'Lahore', '200-6678', NULL),
('600-90-0016', 'Asma Ali', 'Rawalpindi', '200-7789', NULL),
('700-01-0017', 'Raza Usman', 'Quetta', '200-8890', NULL),
('800-12-0018', 'Maryam Imran', 'Lahore', '200-9901', NULL),
('900-23-0019', 'Fawad Zain', 'Karachi', '200-0012', NULL),
('000-04-0020', 'Zain Imran', 'Peshawar', '200-0023', NULL);

INSERT INTO PILOT (Ssn, Lic_num, Restrictions) VALUES 
('100-00-0001', 'LIC001', 'None'),
('200-00-0002', 'LIC002', 'Glasses'),
('300-00-0003', 'LIC003', 'Contact lenses'),
('400-00-0004', 'LIC004', 'None'),
('500-00-0005', 'LIC005', 'Glasses'),
('600-00-0036', 'LIC006', 'Day flight only'),
('700-00-0047', 'LIC007', 'None'),
('800-00-0058', 'LIC008', 'Night flight only'),
('900-00-0069', 'LIC009', 'None'),
('000-34-0010', 'LIC010', 'Day flight only'),
('100-45-0011', 'LIC011', 'None'),
('200-56-0012', 'LIC012', 'None'),
('300-67-0013', 'LIC013', 'None'),
('400-78-0014', 'LIC014', 'Glasses'),
('500-89-0015', 'LIC015', 'None'),
('600-90-0016', 'LIC016', 'Night flight only'),
('700-01-0017', 'LIC017', 'None'),
('800-12-0018', 'LIC018', 'Night flight only'),
('900-23-0019', 'LIC019', 'None'),
('000-04-0020', 'LIC020', 'Day flight only');

INSERT INTO CORPORATION (C_ID, C_Name, C_Address, CPhone, Owner_ID) VALUES
('C-1', 'A Corporation', 'Lahore', '042-1234567', 11),
('C-2', 'B Corporation', 'Karachi', '021-2345678', 12),
('C-3', 'C Corporation', 'Islamabad', '051-3456789', 13),
('C-4', 'D Corporation', 'Lahore', '042-4567890', 14),
('C-5', 'E Corporation', 'Faisalabad', '041-5678901', 15),
('C-6', 'F Corporation', 'Rawalpindi', '051-6789012', 16),
('C-7', 'G Corporation', 'Lahore', '042-7890123', 17),
('C-8', 'H Corporation', 'Islamabad', '051-8901234', 18),
('C-9', 'I Corporation', 'Karachi', '021-9012345', 19),
('C-10', 'J Corporation', 'Lahore', '042-0123456', 20),
('C-11', 'K Corporation', 'Faisalabad', '041-1234567', 51),
('C-12', 'L Corporation', 'Rawalpindi', '051-2345678', 52),
('C-13', 'M Corporation', 'Karachi', '021-3456789', 53),
('C-14', 'N Corporation', 'Lahore', '042-4567890', 54),
('C-15', 'O Corporation', 'Islamabad', '051-5678901', 55),
('C-16', 'P Corporation', 'Karachi', '021-6789012', 56),
('C-17', 'Q Corporation', 'Faisalabad', '041-7890123', 57),
('C-18', 'R Corporation', 'Rawalpindi', '051-8901234', 58),
('C-19', 'S Corporation', 'Lahore', '042-9012345', 59),
('C-20', 'T Corporation', 'Karachi', '021-0123456', 60);

INSERT INTO S_SERVICE (ID, S_Date, S_Hours, Work_code) VALUES
(1, '2022-01-01', 5, 'W001'),
(2, '2022-02-02', 6, 'W002'),
(3, '2022-03-03', 7, 'W003'),
(4, '2022-04-04', 8, 'W004'),
(5, '2022-05-05', 9, 'W005'),
(6, '2022-06-06', 10, 'W006'),
(7, '2022-07-07', 11, 'W007'),
(8, '2022-08-08', 12, 'W008'),
(9, '2022-09-09', 13, 'W009'),
(10, '2022-10-10', 14, 'W010'),
(11, '2022-11-11', 15, 'W011'),
(12, '2022-12-12', 16, 'W012'),
(13, '2022-01-13', 17, 'W013'),
(14, '2022-02-14', 18, 'W014'),
(15, '2022-03-15', 19, 'W015'),
(16, '2022-04-16', 20, 'W016'),
(17, '2022-05-17', 21, 'W017'),
(18, '2022-06-18', 22, 'W018'),
(19, '2022-07-19', 23, 'W019'),
(20, '2022-08-20', 24, 'W020');

INSERT INTO PLANE_SERVICE (Reg#, Service_ID)
VALUES 
    (1001, 1),
    (1002, 2),
    (1003, 3),
    (1004, 4),
    (1005, 5),
    (1006, 6),
    (1007, 7),
    (1008, 8),
    (1009, 9),
    (1010, 10),
    (1011, 11),
    (1012, 12),
    (1013, 13),
    (1014, 14),
    (1015, 15),
    (1016, 16),
    (1017, 17),
    (1018, 18),
    (1019, 19),
    (1020, 20);


	INSERT INTO OWNS (Reg#, Owner_ID, Pdate) VALUES
	(1099, 12, '2022-01-01'),
(1001, 1, '2022-01-01'),
(1002, 2, '2022-02-02'),
(1003, 3, '2022-03-03'),
(1004, 4, '2022-04-04'),
(1005, 5, '2022-05-05'),
(1006, 6, '2022-06-06'),
(1007, 7, '2022-07-07'),
(1008, 8, '2022-08-08'),
(1009, 9, '2022-09-09'),
(1010, 10, '2022-10-10'),
(1011, 11, '2022-11-11'),
(1012, 12, '2022-12-12'),
(1013, 13, '2022-01-13'),
(1014, 14, '2022-02-14'),
(1015, 15, '2022-03-15'),
(1016, 16, '2022-04-16'),
(1017, 17, '2022-05-17'),
(1018, 18, '2022-06-18'),
(1019, 19, '2022-07-19'),
(1020, 20, '2022-08-20'),
(1021, 21, '2022-09-01'),
(1022, 22, '2022-10-02'),
(1023, 23, '2022-11-03'),
(1024, 24, '2022-12-04'),
(1025, 25, '2022-01-05'),
(1026, 26, '2022-02-06'),
(1027, 27, '2022-03-07'),
(1028, 28, '2022-04-08'),
(1029, 29, '2022-05-09'),
(1030, 30, '2022-06-10'),
(1031, 31, '2022-07-11'),
(1032, 32, '2022-08-12'),
(1033, 33, '2022-09-13'),
(1034, 34, '2022-10-14'),
(1035, 35, '2022-11-15'),
(1036, 36, '2022-12-16'),
(1037, 37, '2022-01-17'),
(1038, 38, '2022-02-18'),
(1039, 39, '2022-03-19'),
(1040, 40, '2022-04-20'),
(1041, 41, '2022-05-01'),
(1042, 42, '2022-06-02'),
(1043, 43, '2022-07-03'),
(1044, 44, '2022-08-04'),
(1045, 45, '2022-09-05'),
(1046, 46, '2022-10-06'),
(1047, 47, '2022-11-07'),
(1048, 48, '2022-12-08'),
(1049, 49, '2022-01-09'),
(1050, 50, '2022-02-10'),
(1051, 51, '2022-03-11'),
(1052, 52, '2022-04-12'),
(1053, 53, '2022-05-13'),
(1054, 54, '2022-06-14'),
(1055, 55, '2022-07-15'),
(1056, 56, '2022-08-16'),
(1057, 57, '2022-09-17'),
(1058, 58, '2022-10-18'),
(1059, 59, '2022-11-19'),
(1060, 60, '2022-12-20'),
(1061, 1, '2023-01-01'),
(1062, 2, '2023-02-02'),
(1063, 3, '2023-03-03'),
(1064, 14, '2023-03-04'),
(1065, 5, '2023-03-05'),
(1066, 16, '2023-03-06'),
(1067, 7, '2023-03-07'),
(1068, 18, '2023-03-08'),
(1069, 9, '2023-03-09'),
(1070, 10, '2023-03-10');


INSERT INTO FLIES (Ssn, Model) VALUES
('100-00-0001', 1),
('200-00-0002', 2),
('300-00-0003', 3),
('400-00-0004', 4),
('500-00-0005', 5),
('600-00-0036', 2),
('700-00-0047', 3),
('800-00-0058', 4),
('900-00-0069', 5),
('000-34-0010', 3),
('100-45-0011', 4),
('200-56-0012', 5),
('300-67-0013', 4),
('400-78-0014', 5),
('500-89-0015', 1),
('600-90-0016', 2),
('700-01-0017', 3),
('800-12-0018', 4),
('900-23-0019', 5),
('000-04-0020', 1);

INSERT INTO FLIES (Ssn, Model) VALUES
('100-00-0001', 2),
('200-00-0002', 3),
('300-00-0003', 4),
('400-00-0004', 5),
('500-00-0005', 1),
('600-00-0036', 3);

INSERT INTO WORKS_ON (Ssn, Model) VALUES
    ('000-00-0001', 1),
    ('000-00-0002', 2),
    ('345-00-0003', 3),
    ('456-00-0004', 4),
    ('567-00-0005', 5),
    ('678-00-0006', 6),
    ('789-00-0007', 7),
    ('890-00-0008', 8),
    ('901-00-0009', 9),
    ('012-34-0010', 10),
    ('123-45-0011', 11),
    ('234-56-0012', 12),
    ('345-67-0013', 13),
    ('456-78-0014', 14),
    ('567-89-0015', 15),
    ('678-90-0016', 16),
    ('789-01-0017', 17),
    ('890-12-0018', 18),
    ('901-23-0019', 19),
    ('012-34-0020', 20);

INSERT INTO MAINTAINS (Ssn, seviceID) VALUES
    ('000-00-0001', 1),
    ('000-00-0002', 2),
    ('345-00-0003', 3),
    ('456-00-0004', 4),
    ('567-00-0005', 5),
    ('678-00-0006', 6),
    ('789-00-0007', 7),
    ('890-00-0008', 8),
    ('901-00-0009', 9),
    ('012-34-0010', 10),
    ('123-45-0011', 11),
    ('234-56-0012', 12),
    ('345-67-0013', 13),
    ('456-78-0014', 14),
    ('567-89-0015', 15),
    ('678-90-0016', 16),
    ('789-01-0017', 17),
    ('890-12-0018', 18),
    ('901-23-0019', 19),
    ('012-34-0020', 20);

	INSERT INTO S_SERVICE (ID, S_Date, S_Hours, Work_code) VALUES
	(42, '2022-01-01', 10, 'W041'),

(21, '2022-01-01', 5, 'W021'),
(22, '2022-02-02', 6, 'W022'),
(23, '2022-03-03', 7, 'W023'),
(24, '2022-03-04', 8, 'W024'),
(25, '2022-03-05', 9, 'W025'),
(26, '2022-06-06', 10, 'W026'),
(27, '2022-07-07', 11, 'W027'),
(28, '2022-08-08', 12, 'W028'),
(29, '2022-09-09', 13, 'W029'),
(30, '2022-10-10', 4, 'W030'),
(31, '2023-03-11', 5, 'W031'),
(32, '2023-03-12', 6, 'W032'),
(33, '2023-01-13', 7, 'W033'),
(34, '2023-02-14', 8, 'W034'),
(35, '2023-03-15', 9, 'W035'),
(36, '2023-03-23', 10, 'W036'),
(37, '2023-03-17', 1, 'W037'),
(38, '2023-06-20', 2, 'W038'),
(39, '2023-03-21', 3, 'W039'),
(40, '2023-03-25', 4, 'W040');

INSERT INTO PLANE_SERVICE (Reg#, Service_ID)
VALUES
	(1099, 42),

	(1012, 41),

    (1021, 21),
    (1022, 22),
    (1023, 23),
    (1024, 24),
    (1025, 25),
    (1026, 26),
    (1027, 27),
    (1028, 28),
    (1029, 29),
    (1030, 30),
    (1011, 31),
    (1012, 32),
    (1013, 33),
    (1014, 34),
    (1015, 35),
    (1016, 36),
    (1017, 37),
    (1018, 38),
    (1019, 39),
    (1020, 40);

	INSERT INTO MAINTAINS (Ssn, seviceID) VALUES
	('567-89-0015', 42),

	('123-45-0011', 41),


    ('000-00-0001', 21),
    ('000-00-0002', 22),
    ('345-00-0003', 23),
    ('456-00-0004', 24),
    ('567-00-0005', 25),
    ('678-00-0006', 26),
    ('789-00-0007', 27),
    ('890-00-0008', 28),
    ('901-00-0009', 29),
    ('012-34-0010', 30),
    ('123-45-0011', 31),
    ('234-56-0012', 32),
    ('345-67-0013', 33),
    ('456-78-0014', 34),
    ('567-89-0015', 35),
    ('678-90-0016', 36),
    ('789-01-0017', 37),
    ('890-12-0018', 38),
    ('901-23-0019', 39),
    ('012-34-0020', 40);




	select * from CORPORATION;
	select * from OWNS;
	select * from O_OWNER;
	select * from AIRPLANE;
	select * from S_SERVICE;
	select * from PLANE_SERVICE;
	select * from MAINTAINS;
	select * from PERSON;

		INSERT INTO OWNS (Reg#, Owner_ID, Pdate) VALUES
		(1062, 56, '2023-03-15');

				INSERT INTO OWNS (Reg#, Owner_ID, Pdate) VALUES
				(1056, 10, '2023-03-10'),

		(1040, 59, '2023-03-24'),

		(1059, 50, '2023-03-27'),

	(1005, 11, '2023-03-24'),
	(1099, 12, '2022-01-01');





	





