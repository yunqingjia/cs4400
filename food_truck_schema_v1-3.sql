drop database if exists Food_Truck;
create database Food_Truck;
use Food_Truck;

CREATE TABLE FTUser(
	Username varchar(50) NOT NULL,
 	First_Name varchar(50) NOT NULL, 
 	Last_Name varchar(50) NOT NULL, 
	Pword varchar(50) NOT NULL,   
	PRIMARY KEY (Username),
	UNIQUE KEY (First_Name, Last_Name)
	) engine = innodb ;

Insert into FTUser (Username, First_Name, Last_Name, Pword)
Values
('2Cool_not_todoschool', 'Smarty', 'Pants', '4242424242'),
('4400_thebestclass', 'Seriously', 'Itis', '4400440044'),
('Aturning_Machine12', 'Alan', 'Turing', '3333333333'),
('beBatman!', 'Bruce', 'Wayne', '5555555555'),
('bestfriends4ever1', 'C3P0', 'Droid', '44444444433'),
('bestfriends4ever2', 'R2D2', 'Droid', '44444444443'),
('BuzzyAsAYellowJacket', 'Buzz', 'Buzz', '1010101010'),
('coxRaycox', 'Ray', 'Cox', '4242424242'),
('customer1', 'One', 'One', '1111111111'),
('customer2', 'Two', 'Two', '1011111111'),
('deer.john', 'John', 'Deer', '22222022222'),
('doe.jane', 'Jane', 'Doe', '22222222200'),
('doe.john', 'John', 'Doe', '20000000002'),
('EmmsBest', 'Emma', 'Williams', '1000000011'),
('employee1', 'Employee', 'Won', '1000111111'),
('Employeeofthemonth', 'Beast', 'Boy', '1000011111'),
('FatherofInfoTheory', 'Claude', 'Shannon', '2222222222'),
('ILikeFlowers', 'Lily', 'Rose', '1000000001'),
('JHallPride', 'James', 'Hall', '2222222222'),
('JNash28TheoryofGaming', 'John', 'Nash', '1111111111'),
('LadyVader1977', 'Leia', 'Organa', '54545454545'),
('LifeIsLikeABoxOfChoco.', 'Forrest', 'Gump', '4444444444'),
('LifeUniverseEverything', 'Forty', 'Two', '4242424242'),
('Manager1', 'First', 'Manager', '1000001111'),
('Manager2', 'Second', 'Manager', '1000000111'),
('Manager3', 'Third', 'Manager', '1000000011'),
('Manager4', 'Fourth', 'Manager', '1000000001'),
('mKJerrY', 'Mike', 'Jerry', '22222022222'),
('Nekonsh', 'Nelsh', 'Kong', '8888888888'),
('RPosince', 'Prince', 'Ross', '2222222222'),
('RRanskans', 'Ruby', 'Rans', '44444444433'),
('scoRa', 'Dhey', 'Scott', '7000000000'),
('sffrgerge', 'Blah', 'BlahBlah', '1000000000'),
('SShen', 'Soms', 'Shen', '4444444444'),
('Staff1', 'One', 'Staff', '3333333333'),
('Staff2', 'Two', 'Staff', '2222222222'),
('notmybusiness', 'Kermit', 'TheFrog', '7000000000'),
('theCustomersAlwaysRight', 'Always', 'Everytime', '1001111111'),
('thereal_GPBurdell', 'George', 'Burdell', '9999999999'),
('TingTong', 'Eva', 'Bell', '1000000000'),
('tkingTom', 'Tom', 'King', '2222222222'),
('TooCuteNottoMention', 'Baby', 'Yoda', '8888888888'),
('toongNonyLongy', 'Tony', 'Long', '20000000002'),
('Violax', 'Violet', 'Lax', '4400440044'),
('WomanWhoSmashedCode', 'Elizabeth', 'Friedman', '4444444444'),
('YayVish', 'Vishy', 'Yay', '6666666666'),
('YouBetterBeNiceToMe', 'Talking', 'Tina', '6666666666');


CREATE TABLE Employee(
	EmpEmail varchar(50) NOT NULL,
	EmpUsername varchar(50) NOT NULL,
	PRIMARY KEY (EmpEmail),
	constraint fk1 FOREIGN KEY (EmpUsername) 
		REFERENCES FTUser(Username)
	) engine = innodb ;

Insert into Employee(EmpEmail, EmpUsername)
Values
('school@gmail.com', '2Cool_not_todoschool'),
('4400_thebestclass@gatech.edu', '4400_thebestclass'),
('machine12@outlook.com', 'Aturning_Machine12'),
('beBatman!@gatech.edu', 'beBatman!'),
('bff@hotmail.com', 'bestfriends4ever1'),
('bff2@gmail.com', 'bestfriends4ever2'),
('BuzzyAsAYellowJacket@gatech.edu', 'BuzzyAsAYellowJacket'),
('dj3@outlook.com', 'deer.john'),
('dj1@outlook.com', 'doe.jane'),
('dj2@outlook.com', 'doe.john'),
('emmsbest@gatech.edu', 'EmmsBest'),
('employee1@gatech.edu', 'employee1'),
('Employeeofthemonth@gatech.edu', 'Employeeofthemonth'),
('fot@gmail.com', 'FatherofInfoTheory'),
('flora@gatech.edu', 'ILikeFlowers'),
 ('jg@hotmail.com', 'JNash28TheoryofGaming'),
('lv1977@gatech.edu', 'LadyVader1977'),
('chocolate@gmail.com', 'LifeIsLikeABoxOfChoco.'),
('manager1@gatech.edu', 'Manager1'),
('manager2@gatech.edu', 'Manager2'),
('manager3@gatech.edu', 'Manager3'),
('manager4@gatech.edu', 'Manager4'),
('nekonsh@gatech.edu', 'Nekonsh'),
('rranskans@gatech.edu', 'RRanskans'),
('scoRa@gatech.edu', 'scoRa'),
('sff@outlook.com', 'sffrgerge'),
('sshen@gatech.edu', 'SShen'),
('staff1@gatech.edu', 'Staff1'),
('staff2@gatech.edu', 'Staff2'),
('gpb@gatech.edu', 'thereal_GPBurdell'),
('tingtong@gatech.edu', 'TingTong'),
('mention@gmail.com', 'TooCuteNottoMention'),
('violax@gatech.edu', 'Violax'),
('smashedcode@gmail.com', 'WomanWhoSmashedCode'),
('yayvish@gatech.edu', 'YayVish');

CREATE TABLE Manager(
	MgrEmail varchar(50) NOT NULL,
	PRIMARY KEY (MgrEmail),
	constraint fk2 FOREIGN KEY (MgrEmail)
		REFERENCES Employee(EmpEmail)
	) engine = innodb ;

Insert into Manager (MgrEmail)
Values
('dj1@outlook.com'),
('fot@gmail.com'),
('lv1977@gatech.edu'),
('chocolate@gmail.com'),
('manager1@gatech.edu'),
('manager2@gatech.edu'),
('manager3@gatech.edu'),
('manager4@gatech.edu'),
('sshen@gatech.edu'),
('gpb@gatech.edu'),
('yayvish@gatech.edu');

CREATE TABLE AdminStaff(
	AdminEmail varchar(50) NOT NULL,
	PRIMARY KEY (AdminEmail),
	constraint fk3 FOREIGN KEY (AdminEmail)
		REFERENCES Employee(EmpEmail)
	) engine = innodb ;

Insert into AdminStaff (AdminEmail)
Values 
('4400_thebestclass@gatech.edu'),
('nekonsh@gatech.edu'),
('scoRa@gatech.edu');

 CREATE TABLE Building (
	BuildingName varchar(50) NOT NULL, 
	DescriptionofBuilding varchar(50) NOT NULL,
	PRIMARY KEY (BuildingName)
	) engine = innodb;

Insert into Building (BuildingName, DescriptionofBuilding)
Values
('Clough', 'Has starbucks; located near to transit hub'),
('College of Computing', 'Famously called as CoC'),
('CrossLand Tower', 'Library'),
('KLAUS Adv Computing', 'Connected to CoC through binary bridge'),
('Molecular Engineering', 'Hosts classes for molecular engineering'),
('Skiles', 'Host classes for media and literature students'),
('Students_Center', 'Host for student activities'),
('TechTower', 'Most Iconic building'),
('Weber Building', 'Classes mostly related to space technology');

 CREATE TABLE Station(
	StationName varchar(50) NOT NULL, 
	Sponsor varchar(50) NOT NULL,
	Capacity int NOT NULL,
	PRIMARY KEY (StationName),
	constraint fk4 FOREIGN KEY (Sponsor)
		REFERENCES Building(BuildingName)
	) engine = innodb ;
    
Insert into Station (StationName, Sponsor, Capacity)
Values
('Clough Commons', 'Clough', '20'),
('CoC Court Yard', 'College of Computing','15'),
('Bio Quad','Molecular Engineering','20'),
('Skiles Walkway', 'Skiles','3'),
('Campanile','Students_Center','7');

CREATE TABLE FoodTruck(
	FTName varchar(50) NOT NULL,
	FTHost varchar(50) NOT NULL,
	ManagerEmail varchar(50) NOT NULL,
	PRIMARY KEY (FTName),
	constraint fk5 FOREIGN KEY (FTHost)
		REFERENCES Station(StationName),
	constraint fk6 FOREIGN KEY (ManagerEmail)
		REFERENCES Manager(MgrEmail) 
	) engine = innodb ;
    
Insert into FoodTruck (FTName, FTHost, ManagerEmail)
Values
('BurgerBird', 'Clough Commons','lv1977@gatech.edu'),
('FourAnalystInATacoTruck', 'Clough Commons', 'fot@gmail.com'),
('GoodFoodTruck', 'CoC Court Yard', 'fot@gmail.com'),
('WaffleTruffle', 'CoC Court Yard', 'sshen@gatech.edu'),
('GoodOnAStudentBudget', 'Bio Quad', 'gpb@gatech.edu'),
('ShawarmaExpress', 'Bio Quad', 'manager3@gatech.edu'),
('FoodTrolley', 'Skiles Walkway', 'lv1977@gatech.edu'),
('BubbaGumps','Campanile', 'chocolate@gmail.com'),
('CrazyPies', 'Campanile', 'manager1@gatech.edu'),
('FoodTruckYoureLookingFor', 'Campanile', 'lv1977@gatech.edu'),
('FusionFoodTruck', 'Campanile', 'yayvish@gatech.edu'),
('JohnJaneAndVenison', 'Campanile', 'dj1@outlook.com'),
('NachoBizness', 'Campanile', 'manager2@gatech.edu'),
('TruckOfFood', 'Campanile', 'manager2@gatech.edu');

CREATE TABLE Staff (
	StaffEmail varchar(50) NOT NULL,
	WorkLocation varchar(50),
	PRIMARY KEY (StaffEmail),
     constraint fk7 FOREIGN KEY (StaffEmail) 
		REFERENCES Employee(EmpEmail),
    constraint fk8 FOREIGN KEY (WorkLocation) 
		REFERENCES FoodTruck(FTName)
	) engine = innodb ;

Insert into Staff (StaffEmail, WorkLocation)
Values
('school@gmail.com', 'WaffleTruffle'),
('machine12@outlook.com', 'FourAnalystInATacoTruck'),
('beBatman!@gatech.edu', 'WaffleTruffle'),
('bff@hotmail.com', 'FoodTruckYoureLookingFor'),
('bff2@gmail.com', 'BurgerBird'),
('BuzzyAsAYellowJacket@gatech.edu', 'ShawarmaExpress'),
('dj3@outlook.com', 'JohnJaneAndVenison'),
('dj2@outlook.com', 'TruckOfFood'),
('emmsbest@gatech.edu', 'CrazyPies'),
('employee1@gatech.edu', 'BurgerBird'),
('Employeeofthemonth@gatech.edu', 'ShawarmaExpress'),
('flora@gatech.edu', 'CrazyPies'),
('jg@hotmail.com', 'GoodFoodTruck'),
('rranskans@gatech.edu', 'FoodTrolley'),
('sff@outlook.com', 'GoodOnAStudentBudget'),
('staff1@gatech.edu', 'BubbaGumps'),
('staff2@gatech.edu', 'BubbaGumps'),
('tingtong@gatech.edu', 'FusionFoodTruck'),
('mention@gmail.com', 'NachoBizness'),
('violax@gatech.edu', 'FoodTrolley'),
('smashedcode@gmail.com', 'FourAnalystInATacoTruck');

 CREATE TABLE Customer(
	CustUsername varchar(50) NOT NULL, 
	Location varchar(50), 
    Balance float(10, 2) NOT NULL,
	PRIMARY KEY (CustUsername),
	constraint fk9 FOREIGN KEY (CustUsername)
		REFERENCES FTUser(Username),
	constraint fk10 FOREIGN KEY (Location)
		REFERENCES Station(StationName)
	) engine = innodb ; 

Insert into Customer (CustUsername, Location, Balance)
Values
('4400_thebestclass', 'Clough Commons', 44),
('beBatman!', 'Skiles Walkway', 89.99),
('BuzzyAsAYellowJacket', 'Skiles Walkway', 0.5),
('coxRaycox', 'CoC Court Yard', 4.5),
('customer1', 'Clough Commons', 46.99),
('customer2', 'CoC Court Yard', 47),
('JHallPride', 'Clough Commons', 30.9),
('LifeUniverseEverything', 'Campanile', 42.42),
('mKJerrY', 'Bio Quad', 44.2),
('RPosince', 'Campanile', 67.89),
('RRanskans', 'Bio Quad', 7.78),
('sffrgerge', 'Clough Commons', 4.09),
('notmybusiness', 'Bio Quad', 19.55),
('theCustomersAlwaysRight', 'CoC Court Yard', 2.99),
('TingTong', 'Bio Quad', 50.25),
('tkingTom', 'Skiles Walkway', 70.14),
('toongNonyLongy', 'Clough Commons', 17.9),
('Violax', 'Skiles Walkway', 15.2),
('YouBetterBeNiceToMe', 'Bio Quad', 52.63);

CREATE TABLE CustomerOrder(
	CustName varchar(50) NOT NULL,
    OrderID varchar(50) NOT NULL,
	OrderDate date NOT NULL,
	PRIMARY KEY (OrderID),
	constraint fk11 FOREIGN KEY (CustName)
		REFERENCES Customer(CustUsername)
	) engine = innodb ;

Insert into CustomerOrder (CustName, OrderID, OrderDate)
Values 
('beBatman!', '0000000038', '2020-03-01'), 
('beBatman!', '0000000039', '2020-03-01'), 
('BuzzyAsAYellowJacket', '0000000022', '2020-02-10'),  
('BuzzyAsAYellowJacket', '0000000023', '2020-02-10'),  
('BuzzyAsAYellowJacket', '0000000026', '2020-02-11'),
('customer1', '0000000001', '2020-01-01'),
('customer1', '0000000002', '2020-01-01'),
('customer1', '0000000005', '2020-02-02'),
('customer1', '0000000010', '2020-02-04'),  
('customer1', '0000000018', '2020-02-10'),  
('customer1', '0000000024', '2020-02-10'),    
('customer1', '0000000031', '2020-03-01'),  
('customer1', '0000000036', '2020-03-01'), 
('customer1', '0000000030', '2020-02-29'),
('customer2', '0000000003', '2020-01-01'),
('customer2', '0000000004', '2020-02-01'),
('customer2', '0000000006', '2020-02-03'),
('customer2', '0000000011', '2020-02-05'),
('customer2', '0000000019', '2020-02-10'),  
('customer2', '0000000020', '2020-02-10'),  
('customer2' , '0000000021', '2020-02-10'),  
('customer2', '0000000025', '2020-02-10'),  
('customer2', '0000000027', '2020-02-11'),
('customer2', '0000000028', '2020-02-22'),
('customer2', '0000000029', '2020-02-29'),
('customer2', '0000000032', '2020-03-01'), 
('customer2', '0000000033', '2020-03-01'), 
('LifeUniverseEverything', '0000000037', '2020-03-01'), 
('sffrgerge', '0000000034', '2020-03-01'), 
('sffrgerge', '0000000035', '2020-03-01'), 
('notmybusiness', '0000000009', '2020-02-04'),
('notmybusiness', '0000000013', '2020-02-05'),
('notmybusiness', '0000000014', '2020-02-05'),
('notmybusiness', '0000000015', '2020-02-06'),
('notmybusiness', '0000000017', '2020-02-06'),
('theCustomersAlwaysRight', '0000000007', '2020-02-04'),
('theCustomersAlwaysRight', '0000000008', '2020-02-04'),
('theCustomersAlwaysRight', '0000000012', '2020-02-05'),
('theCustomersAlwaysRight', '0000000016', '2020-02-06'),
('YouBetterBeNiceToMe', '0000000040', '2020-03-01'), 
('YouBetterBeNiceToMe', '0000000041', '2020-03-01');

CREATE TABLE Food(
	FName varchar(50) NOT NULL,
	PRIMARY KEY (FName)
	) engine = innodb ;
    
Insert into Food (Fname) Values 
('Bagels'),
('CeasarSalad'),
('CheeseBurger'),
('ChickenSandwich'),
('ChickenTacos'),
('ChickenWings'),
('ChocolateShake'),
('ElkBurger'),
('HamBurger'),
('HotDog'),
('MargheritaPizza'),
('Nachos'),
('Noodles'),
('Pie'),
('SalmonTacos'),
('Shawarma'),
('ShrimpGumbo'),
('SouthWestChickenSalad'),
('TrailMix'),
('VegetarianGumbo'),
('VegetarianTacos'),
('VegPizza'),
('VegSpringRolls'),
('Waffles');

CREATE TABLE MenuItem(
	FoodName varchar(50) NOT NULL,
	FoodTruckName varchar(50) NOT NULL,
	Price float(10,2) NOT NULL,
	PRIMARY KEY (FoodName, FoodTruckName),
	constraint fk12 FOREIGN KEY (FoodName)
		REFERENCES Food(FName),
    constraint fk13 FOREIGN KEY (FoodTruckName)
		REFERENCES FoodTruck(FTName)
	) engine = innodb ; 
    
Insert into MenuItem (FoodName, FoodTruckName, Price)
Values
('CeasarSalad', 'GoodOnAStudentBudget', '3.46'), 
('CheeseBurger', 'BurgerBird', '4.76'),
('Cheeseburger','GoodOnAStudentBudget', '4.51'),
('ChickenTacos', 'BubbaGumps', '5.21'),
('ChickenTacos', 'FourAnalystInATacoTruck', '6.22'),
('ChickenTacos', 'NachoBizness', '6.58'),
('ChickenWings', 'FoodTrolley', '6.01'),
('ChickenWings', 'FourAnalystInATacoTruck', '5.28'),
('ChocolateShake', 'FoodTrolley', '7.54'),
('ChocolateShake', 'GoodOnAStudentBudget', '5.48'),
('ChocolateShake', 'ShawarmaExpress', '4.85'),
('ElkBurger', 'BurgerBird', '6.68'),
('ElkBurger', 'JohnJaneAndVenison', '10.17'),
('HamBurger', 'BurgerBird', '7.05'),
('HamBurger', 'GoodOnAStudentBudget', '3.82'),
('HotDog', 'GoodOnAStudentBudget', '2.23'),
('MargheritaPizza', 'CrazyPies', '4.28'),
('MargheritaPizza', 'FoodTruckYoureLookingFor', '7.58'),
('Nachos', 'FoodTruckYoureLookingFor', '3.21'),
('Nachos', 'NachoBizness', '5.13'),
('Noodles', 'GoodFoodTruck', '4.40'),
('Noodles', 'TruckOfFood', '4.77'), 
('Pie', 'BurgerBird', '4.53'),
('Pie', 'CrazyPies', '4.19'),
('Pie', 'FoodTrolley', '4.51'),
('SalmonTacos', 'FourAnalystInATacoTruck', '8.03'),
('SalmonTacos', 'FusionFoodTruck', '7.16'), 
('SalmonTacos', 'NachoBizness', '7.59'),
('Shawarma', 'ShawarmaExpress', '6.30'),
('ShrimpGumbo', 'BubbaGumps', '6.22'),
('SouthWestChickenSalad', 'FoodTruckYoureLookingFor', '9.57'),
('SouthWestChickenSalad','GoodFoodTruck', '9.06'),
('TrailMix', 'JohnJaneAndVenison', '4.36'),
('VegetarianGumbo', 'BubbaGumps', '3.82'),
('VegetarianTacos', 'FourAnalystInATacoTruck', '5.84'),
('VegetarianTacos', 'FusionFoodTruck', '5.95'),
('VegetarianTacos', 'NachoBizness', '4.70'),
('VegPizza', 'CrazyPies', '3.48'),
('VegPizza', 'FoodTruckYoureLookingFor', '7.88'),
('VegSpringRolls', 'GoodFoodTruck', '3.11'),
('VegSpringRolls', 'TruckOfFood', '3.53'),
('Waffles', 'FoodTrolley', '5.82'),
('Waffles', 'GoodOnAStudentBudget', '3.44'),
('Waffles', 'WaffleTruffle', '6.65') ;

CREATE TABLE Contain (
	ContainsOrderID varchar(50) NOT NULL,
	NameOfFood varchar(50) NOT NULL,
    NameOfFoodTruck varchar(50) NOT NULL, 
	PurchaseQuantity int NOT NULL, 
	PRIMARY KEY (ContainsOrderID, NameOfFood, NameOfFoodTruck),
	constraint fk14 FOREIGN KEY (ContainsOrderID)
		REFERENCES CustomerOrder(OrderID),
	constraint fk15 FOREIGN KEY (NameOfFood)
		REFERENCES MenuItem(FoodName),
	constraint fk16 FOREIGN KEY (NameOfFoodTruck)
		REFERENCES MenuItem(FoodTruckName)
	) engine = innodb ;

Insert into Contain (ContainsOrderID, NameOfFood, NameOfFoodTruck, PurchaseQuantity)
Values
('0000000002', 'CeasarSalad', 'GoodOnAStudentBudget', '1'),
('0000000035', 'CeasarSalad', 'GoodOnAStudentBudget', '2'),
('0000000022', 'CeasarSalad', 'GoodOnAStudentBudget', '5'),
('0000000003', 'CheeseBurger', 'GoodOnAStudentBudget', '1'),
('0000000021', 'CheeseBurger', 'GoodOnAStudentBudget', '1'),
('0000000028', 'CheeseBurger', 'BurgerBird', '1'),
('0000000037', 'CheeseBurger', 'BurgerBird', '1'),
('0000000032', 'CheeseBurger', 'BurgerBird', '3'),
('0000000011', 'ChickenTacos', 'NachoBizness', '1'),
('0000000041', 'ChickenTacos', 'BubbaGumps', '1'),
('0000000006', 'ChickenTacos', 'FourAnalystInATacoTruck', '3'),
('0000000031', 'ChickenTacos', 'FourAnalystInATacoTruck', '3'),
('0000000034', 'ChickenTacos', 'FourAnalystInATacoTruck', '3'),
('0000000038', 'ChickenTacos', 'BubbaGumps', '7'),
('0000000015', 'ChickenWings', 'FoodTrolley', '1'),
('0000000020', 'ChickenWings', 'FourAnalystInATacoTruck', '1'),
('0000000016', 'ChickenWings', 'FoodTrolley', '2'),
('0000000004', 'ChickenWings', 'FoodTrolley', '4'),
('0000000033', 'ChickenWings', 'FoodTrolley', '5'),
('0000000026', 'ChickenWings', 'FoodTrolley', '6'),
('0000000029', 'ChickenWings', 'FourAnalystInATacoTruck', '6'),
('0000000013', 'ChocolateShake', 'FoodTrolley', '1'),
('0000000036', 'ChocolateShake', 'GoodOnAStudentBudget', '1'),
('0000000023', 'ChocolateShake', 'GoodOnAStudentBudget', '2'),
('0000000007', 'ElkBurger', 'BurgerBird', '2'),
('0000000014', 'HamBurger', 'GoodOnAStudentBudget', '4'),
('0000000001', 'MargheritaPizza', 'CrazyPies', '1'),
('0000000040', 'MargheritaPizza', 'CrazyPies', '1'),
('0000000012', 'MargheritaPizza', 'FoodTruckYoureLookingFor', '2'),
('0000000039', 'Nachos', 'NachoBizness', '2'),
('0000000010', 'Noodles', 'TruckOfFood', '1'),
('0000000024', 'Noodles', 'TruckOfFood', '1'),
('0000000025', 'Pie', 'BurgerBird', '1'),
('0000000005', 'SalmonTacos', 'NachoBizness', '3'),
('0000000008', 'Shawarma', 'ShawarmaExpress', '2'),
('0000000017', 'Shawarma', 'ShawarmaExpress', '6'),
('0000000009', 'TrailMix', 'JohnJaneAndVenison', '2'),
('0000000030', 'VegetarianGumbo', 'BubbaGumps', '1'),
('0000000019', 'VegetarianTacos', 'FourAnalystInATacoTruck', '3'),
('0000000027', 'VegPizza', 'FoodTruckYoureLookingFor', '1'),
('0000000018', 'Waffles', 'WaffleTruffle', '4'),
('0000000002', 'HotDog', 'GoodOnAStudentBudget', '1'),
('0000000035', 'Waffles', 'GoodOnAStudentBudget', '1'),
('0000000022', 'CheeseBurger', 'GoodOnAStudentBudget', '1'),
('0000000003', 'HamBurger', 'GoodOnAStudentBudget', '1'),
('0000000021', 'ChocolateShake', 'GoodOnAStudentBudget', '1'),
('0000000032', 'Pie', 'BurgerBird', '1'),
('0000000011', 'Nachos', 'NachoBizness', '4'), 
('0000000041', 'ShrimpGumbo', 'BubbaGumps', '1'),
('0000000006', 'ChickenWings', 'FourAnalystInATacoTruck', '4'),
('0000000031', 'ChickenWings', 'FourAnalystInATacoTruck', '5'), 
('0000000034', 'ChickenWings', 'FourAnalystInATacoTruck', '5'),
('0000000020', 'VegetarianTacos', 'FourAnalystInATacoTruck', '2'),
('0000000033', 'Pie', 'FoodTrolley', '1'),
('0000000026', 'ChocolateShake', 'FoodTrolley', '2'),
('0000000036', 'HamBurger', 'GoodOnAStudentBudget', '1'),
('0000000023', 'HamBurger', 'GoodOnAStudentBudget', '1'),
('0000000007', 'HamBurger', 'BurgerBird', '2'),
('0000000001', 'Pie', 'CrazyPies', '2'),
('0000000040', 'VegPizza', 'CrazyPies', '1'),
('0000000012', 'VegPizza', 'FoodTruckYoureLookingFor', '2'), 
('0000000010', 'VegSpringRolls', 'TruckOfFood', '3'),
('0000000024', 'VegSpringRolls', 'TruckOfFood', '5'),
('0000000022', 'HotDog', 'GoodOnAStudentBudget', '1'),
('0000000003', 'Waffles', 'GoodOnAStudentBudget', '2'),
('0000000021', 'HamBurger', 'GoodOnAStudentBudget', '3'),
('0000000011', 'SalmonTacos', 'NachoBizness', '3'),
('0000000041', 'VegetarianGumbo', 'BubbaGumps', '1'),
('0000000006', 'SalmonTacos', 'FourAnalystInATacoTruck', '1'),
('0000000031', 'SalmonTacos', 'FourAnalystInATacoTruck', '3'),
('0000000034', 'SalmonTacos', 'FourAnalystInATacoTruck', '3'), 
('0000000033', 'Waffles', 'FoodTrolley', '2'),
('0000000026', 'Pie', 'FoodTrolley', '1'),
('0000000001', 'VegPizza', 'CrazyPies', '1'),
('0000000022', 'Waffles', 'GoodOnAStudentBudget', '3'),
('0000000011', 'VegetarianTacos', 'NachoBizness', '3'),
('0000000031', 'VegetarianTacos', 'FourAnalystInATacoTruck', '1'),
('0000000026', 'Waffles', 'FoodTrolley', '2');

CREATE TABLE BuildingTag (
	BTName varchar(50) NOT NULL,
	Tag varchar(50) NOT NULL,
	PRIMARY KEY (BTName, Tag), 
	constraint fk17 FOREIGN KEY (BTName)
		REFERENCES Building(BuildingName)
	) engine = innodb ;

Insert into BuildingTag (BTName, Tag)
Values
('Clough', 'ADA'),
('Clough', 'Labs'),
('Clough', 'LEED'),
('College of Computing', 'Computing'),
('CrossLand Tower', 'LEED'),
('CrossLand Tower', 'Library'),
('KLAUS Adv Computing', 'Computing'),
('Molecular Engineering', 'Engineering'),
('Skiles', 'Liberal Arts'),
('Students_Center', 'LEED'),
('TechTower', 'ADA'),
('TechTower', 'Registrar'),
('Weber Building', 'ADA'),
('Weber Building', 'Sciences');





