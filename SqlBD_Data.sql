USE db_control;
---------------------------------------------------------------------------------------------------------
-- Table: campus
INSERT INTO campus (code,name, direction, place)
	VALUES
	('C001','Valle Grande','Cerca a Condoray','San Vicente - Cañete'),
	('C002','Condoray','Cerca a VG','San Vicente - Cañete'),
	('C003','Maryland High School','Cerca a Condoray y VG','San Vicente - Cañete'),
	('C004','Centro de Mujeres','Cerca a Condoray y VG','San Vicente - Cañete'),
	('C005','Santa Rita','Cerca a VG','San Vicente - Cañete');
GO

---------------------------------------------------------------------------------------------------------
-- Table: careers
INSERT INTO careers (names,descriptions,durations)
     VALUES
	 ('Analisis de sistemsas','Dar un servicio de calidad para satisfacer las necesidades reales de las personas.',3),
	 ('Producción Agraria','Dar un servicio de calidad para satisfacer las necesidades reales de las personas.',3),
	 ('Analisis de sistemsas Empresariales','Dar un servicio de calidad para satisfacer las necesidades reales de las personas.',3),
	 ('Producción Agricola','Dar un servicio de calidad para satisfacer las necesidades reales de las personas.',3),
	 ('Administración','Dar un servicio de calidad para satisfacer las necesidades reales de las personas.',6);
GO

---------------------------------------------------------------------------------------------------------
-- Table: teachers
INSERT INTO	teachers(names,last_names,specialty,phone,email)
    VALUES
	('Jesus','Canales','Base de Datos','962519370','jcanales@vallegrande.edu.pe'),
	('Juana','Arenas','Programación Java','962519371','jarenas@vallegrande.edu.pe'),
	('Jose','Levano','Apps Script','962519372','jlevano@vallegrande.edu.pe'),
	('Ebert','Ocares','Sistemas Operativos','962519373','eocares@vallegrande.edu.pe'),
	('Fatima','Matos','Formación Humana','962519374','fmatos@vallegrande.edu.pe');

-- Table: course
INSERT INTO course(code,names,credits)
     VALUES
	 ('CR01','Base de Datos',4),
	 ('CR02','Taller Programación 1',3),
	 ('CR03','Medio Ambiente',2),
	 ('CR04','Telematica 1',3),
	 ('CR05','Investigación e Innovación Tecnologica',4);

-- Table: careers_detail
INSERT INTO careers_detail(careers_id,course_code,teachers_id)
 VALUES
 (1,'CR01',1),
 (2,'CR02',2),
 (3,'CR03',3),
 (4,'CR04',4),
 (5,'CR05',5);


 -- Table: student
INSERT INTO student
	(document_type,document_number,genero,names,last_names,email,phone,birthday)
VALUES
	 ('DNI','71525032','M','Miguel','Lopez','mlopez@vallegrande.edu.pe','962519370','1989-11-14'),
	 ('DNI','71525023','F','Maria','Sanchez','msabchez@vallegrande.edu.pe','962519371','2004-08-14'),
	 ('DNI','71525035','M','Vidal','Luyo','vluyo@vallegrande.edu.pe','962519372','2005-08-14'),
	 ('DNI','71525038','M','Juan','Hilares','jhilares@vallegrande.edu.pe','962519373','2005-10-14'),
	 ('DNI','71525052','M','Henry','Lunazco','hlunazco@vallegrande.edu.pe','962519374','2005-09-14');
GO

---------------------------------------------------------------------------------------------------------
-- Table: seller
INSERT INTO seller(code,names,last_names,email,place,salary)
    VALUES
	('S001','Pepito','Perez','pepitop@vallegrande.edu.pe','San Vicente',1200.00),
	('S002','Lucho','Perez','luchop@vallegrande.edu.pe','Imperial',1200.00),
	('S003','Juana','Perez','juanap@vallegrande.edu.pe','San Vicente',1200.00),
	('S004','Camila','Perez','camilap@vallegrande.edu.pe','Lima',1200.00),
	('S005','Juan','Perez','juanp@vallegrande.edu.pe','San Vicente',1200.00);

---------------------------------------------------------------------------------------------------------
-- Table: enrollment
INSERT INTO enrollment(seller_code,careers_id,campus_code,student_id,start_date,price)
    VALUES
	('S001',1,'C001',1,'2025-03-08',150.0),
	('S002',2,'C002',2,'2025-03-08',150.0),
	('S003',3,'C003',3,'2025-03-08',150.0),
	('S004',4,'C004',4,'2025-03-08',150.0),
	('S005',5,'C005',5,'2025-03-08',150.0);

SELECT * FROM campus;
SELECT * FROM seller;
SELECT * FROM teachers;
SELECT * FROM student;
SELECT * FROM careers;
SELECT * FROM careers_detail;
SELECT * FROM enrollment;
SELECT * FROM course;
