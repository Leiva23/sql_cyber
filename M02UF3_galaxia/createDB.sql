CREATE DATABASE galaxia;
USE galaxia;

CREATE TABLE PLANETES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(25)
);

CREATE TABLE NAUS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(25),
    capacitat INT
);

CREATE TABLE TRIPULANTS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(25) NOT NULL,
    càrrec VARCHAR(15)
);

INSERT INTO PLANETES (nom) VALUES
('Tierra'),
('Venus'),
('Jupiter'),
('Urano'),
('Neptuno');

INSERT INTO NAUS (nom, capacitat) VALUES
('Nau A', 100),
('Nau B', 200),
('Nau C', 50),
('Nau D', 150);

INSERT INTO TRIPULANTS (nom, càrrec) VALUES
('Joe Miller', 'General'),
('Ellie', 'Comandant'),
('Kratos', 'Enginyer'),
('Arthur', 'Pilot');
