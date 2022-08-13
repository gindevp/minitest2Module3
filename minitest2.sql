create database Tours;
use Tours;
create table city(
id int auto_increment primary key,
cityName varchar(255) not null
);
create table destination(
id int primary key,
destinationName varchar(255) not null,
describes varchar(255) not null,
cost int not null,
city_id int,
foreign key(city_id) references city(id)
);
create table clients(
id int primary key,
nameClients varchar(255) not null,
idNumber varchar(255) not null unique,
dateBirth date not null,
city_id int not null,
foreign key(city_id) references city(id)
);
create table categoryTour(
id int primary key,
categoryCode varchar(255) not null,
categoryName varchar(255) not null
);
create table tour(
id int primary key,
tourCode varchar(255) not null,
category_id int not null,
destination_id int not null,
dateStart date not null,
dateEnd date not null,
foreign key(category_id) references categoryTour(id),
foreign key(destination_id) references destination(id)
);
create table orderTour(
id int primary key,
tour_id int not null,
clients_id int not null,
statuss varchar(255) not null,
foreign key(tour_id) references tour(id),
foreign key(clients_id) references clients(id)
);

insert into city (cityName) value ('ha long');
insert into city (cityName) value ('bac ninh');
insert into city (cityName) value ('can tho');
insert into city (cityName) value ('hai phong');
insert into city (cityName) value ('ca mau');


insert into destination(id, destinationName, describes,cost,city_id) values (201,'vinh ha long','dep mat sach se bikini nong bong mat luonnn',12000,1);
insert into destination(id, destinationName, describes,cost,city_id) values (202,'lang tranh dan gian Dong Ho','tranh dep gia tri tham my cao',11000,2);
insert into destination(id, destinationName, describes,cost,city_id) values (203,'khu o chuot','phong canh huu tinh ngươi dan than thien ',22000,3);
insert into destination(id, destinationName, describes,cost,city_id) values (204,'quan karaoke','nhan vien phuc vu nhiet tinh chu dao',13000,4);
insert into destination(id, destinationName, describes,cost,city_id) values (205,'dao ca mau','hoi nho nhưng dep huu tinh chu dao',14000,5);


insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1001,'Nguyen Huu Quyet', 0293883333,'2001-09-07',2);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1002,'Nguyen Huu Hieu', 0293883210,'2000-09-17',1);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1003,'Nguyen huu Hiep', 0293883209,'1999-09-07',2);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1004,'Nguyen Huu Hang', 0293883208,'1998-09-07',3);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1005,'Nguyen Huu Nam', 0293883201,'1997-09-07',4);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1006,'Nguyen Huu Duc Anh', 0293813333,'1999-07-07',5);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1007,'Nguyen Huu Ba', 029388333,'2002-09-07',1);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1008,'Nguyen Huu Dung', 029383333,'2003-09-07',5);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1009,'Nguyen Huu Hoang', 023883333,'2004-09-07',4);
insert into clients(id,nameClients,idNumber,dateBirth,city_id) values(1010,'Nguyen Huu Trang', 93883333,'2005-09-07',3);


insert into categoryTour(id,categoryCode,categoryName) values(011,'CT01','trong tinh');
insert into categoryTour(id,categoryCode,categoryName) values(012,'CT02','ngoai tinh');


insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(101,'A01',11,201,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(102,'A02',12,202,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(103,'A03',11,203,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(104,'A04',12,204,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(105,'A05',11,205,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(106,'A06',12,201,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(107,'A07',11,203,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(108,'A08',12,202,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(109,'A09',12,204,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(110,'A10',11,205,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(111,'A11',12,201,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(112,'A12',11,202,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(113,'A13',12,203,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(114,'A14',11,204,'2020-7-9','2020-2-2');
insert into tour(id, tourCode, category_id, destination_id, dateStart,dateEnd) values(115,'A15',12,205,'2020-7-9','2020-2-2');


insert into ordertour(id,tour_id,clients_id,statuss) values(121,101,1001,'da thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(122,102,1002,'chua thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(123,103,1003,'chua thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(124,104,1004,'da thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(125,105,1005,'chua thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(126,106,1006,'chua thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(127,107,1007,'chua thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(128,108,1008,'chua thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(129,109,1009,'da thanh toan');
insert into ordertour(id,tour_id,clients_id,statuss) values(130,110,1010,'chua thanh toan');

select * from city;
select * from destination;
select * from ordertour;
select * from tour;
select * from clients;
select * from categoryTour;
