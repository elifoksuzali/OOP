USE msdb
GO

CREATE TABLE ÜRÜNLER
( ürün_id    INT NOT NULL,
  ürün_adý varchar(100) NOT NULL,
  PRIMARY KEY (ürün_id));

CREATE TABLE KATAGORÝ
( ürün_kodu   INT NOT NULL,
  Marka_adý			 VARCHAR(100)  NOT NULL,
  Marka_id           INT  NOT NULL,
  ürün_rengi VARCHAR(100) NOT NULL,
  ürün_id    INT NOT NULL,
 PRIMARY KEY (ürün_kodu),
 FOREIGN KEY(ürün_id) REFERENCES ÜRÜNLER(ürün_id) );

 CREATE TABLE MARKA
( Marka_id           INT  NOT NULL,
  Marka_adý			 VARCHAR(100)  NOT NULL,
  ürün_kodu          INT NOT NULL,
PRIMARY KEY   (Marka_id),
FOREIGN KEY ( ürün_kodu ) REFERENCES KATAGORÝ( ürün_kodu ) );

INSERT INTO ÜRÜNLER
VALUES		(1,'SPOR'),
            (2,'CLASSÝC'),
            (3,'BOT'),
			(4,'ÇÝZME');
INSERT INTO KATAGORÝ
VALUES		(1,'ADÝDAS',10,'TURUNCU',1),
			(1,'ADÝDAS',10,'MAVÝ',1),
		    (1,'ADÝDAS',10,'SÝYAH',1),
			(1,'ADÝDAS',10,'BEYAZ',1),
			(2,'NÝKE',11,'TURUNCU',1),
			(2,'NÝKE',11,'MAVÝ',1),
		    (2,'NÝKE',11,'SÝYAH',1),
			(2,'NÝKE',11,'BEYAZ',1),
			(4,'CLA',12,'TURUNCU',2),
			(5,'PLA',13,'MAVÝ',2),
		    (6,'DLA',14,'SÝYAH',2),
			(7,'CAT',15,'BEYAZ',3),
			(8,'HARLEY',16,'KAHVERENGÝ',3),
			(9,'KOTON',17,'MOR',4),
		    (10,'CZM',18,'TOPRAK',4),
			(11,'ÇÝZM',19,'FÜME',4);
INSERT INTO MARKA
VALUES	
            (10,'ADÝDAS',1),
			(11,'NÝKE',2),
			(12,'CLA',4),
			(13,'PLA',5),
		    (14,'DLA',6),
			(15,'CAT',7),
			(16,'HARLEY',8),
			(17,'KOTON',9),
		    (18,'CZM',10),
			(19,'ÇÝZM',11);

			SELECT*FROM KATAGORÝ;
			SELECT*FROM ÜRÜNLER;
			SELECT*FROM MARKA;
			