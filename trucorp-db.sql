CREATE DATABASE IF NOT EXISTS Trucorp;
USE Trucorp;

CREATE TABLE users(
	ID INT NOT NULL,
	Nama VARCHAR (255) NOT NULL,
	Kantor VARCHAR (255) NOT NULL,
	CONSTRAINT C_Kantor CHECK (Kantor = 'Pusat' OR Kantor = 'Cabang')

);


INSERT INTO users(ID, Nama, Kantor)
VALUES
(1, "Boom", "Pusat"),
(2, "TnC", "Cabang"),
(3, "OG", "Pusat"),
(4, "Secret", "Cabang"),
(5, "Nigma", "Cabang");
