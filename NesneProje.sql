USE msdb
GO

CREATE TABLE �R�NLER
( �r�n_id    INT NOT NULL,
  �r�n_ad� varchar(100) NOT NULL,
  PRIMARY KEY (�r�n_id));

CREATE TABLE KATAGOR�
( �r�n_kodu   INT NOT NULL,
  Marka_ad�			 VARCHAR(100)  NOT NULL,
  Marka_id           INT  NOT NULL,
  �r�n_rengi VARCHAR(100) NOT NULL,
  �r�n_id    INT NOT NULL,
 PRIMARY KEY (�r�n_kodu),
 FOREIGN KEY(�r�n_id) REFERENCES �R�NLER(�r�n_id) );

 CREATE TABLE MARKA
( Marka_id           INT  NOT NULL,
  Marka_ad�			 VARCHAR(100)  NOT NULL,
  �r�n_kodu          INT NOT NULL,
PRIMARY KEY   (Marka_id),
FOREIGN KEY ( �r�n_kodu ) REFERENCES KATAGOR�( �r�n_kodu ) );

INSERT INTO �R�NLER
VALUES		(1,'SPOR'),
            (2,'CLASS�C'),
            (3,'BOT'),
			(4,'��ZME');
INSERT INTO KATAGOR�
VALUES		(1,'AD�DAS',10,'TURUNCU',1),
			(1,'AD�DAS',10,'MAV�',1),
		    (1,'AD�DAS',10,'S�YAH',1),
			(1,'AD�DAS',10,'BEYAZ',1),
			(2,'N�KE',11,'TURUNCU',1),
			(2,'N�KE',11,'MAV�',1),
		    (2,'N�KE',11,'S�YAH',1),
			(2,'N�KE',11,'BEYAZ',1),
			(4,'CLA',12,'TURUNCU',2),
			(5,'PLA',13,'MAV�',2),
		    (6,'DLA',14,'S�YAH',2),
			(7,'CAT',15,'BEYAZ',3),
			(8,'HARLEY',16,'KAHVERENG�',3),
			(9,'KOTON',17,'MOR',4),
		    (10,'CZM',18,'TOPRAK',4),
			(11,'��ZM',19,'F�ME',4);
INSERT INTO MARKA
VALUES	
            (10,'AD�DAS',1),
			(11,'N�KE',2),
			(12,'CLA',4),
			(13,'PLA',5),
		    (14,'DLA',6),
			(15,'CAT',7),
			(16,'HARLEY',8),
			(17,'KOTON',9),
		    (18,'CZM',10),
			(19,'��ZM',11);

			SELECT*FROM KATAGOR�;
			SELECT*FROM �R�NLER;
			SELECT*FROM MARKA;
			