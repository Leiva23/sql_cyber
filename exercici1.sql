CREATE TABLE animals(
	id INT UNSIGNED,
	nom VARCHAR(20),
	tipus ENUM('gos','gat', 'conill'),
	raça VARCHAR(20),
	pes TINYINT UNSIGNED,
	color ENUM('negre','blanc', 'verd'),
	edat TINYINT UNSIGNED,
	PRIMARY KEY (id)
);

INSERT INTO animals(id,nom,tipus,raça,pes,color,edat)
	VALUES (0, 'Pepe', 'gos', 'Pasto Alemany', 35, 'negre', 7),
	(1, 'Marta', 'gat', 'Persa', 10, 'negre' 9),
	(2, 'blacky_hat', 'conill', 'Angora', 6, 'blanc', 8),
	(3, 'white', 'gat', 'esfinge', 10, 'verd', 12),
	(4, 'saxo', 'gat', 'oriental', 12, 'negre', 3),
	(5, 'red', 'gos', 'dalmata', 17, 'negre', 6);

SELECT * FROM animals;

SELECT nom, raça FROM animals;

SELECT nom, pes AS 'pes(kg)', 7-4 FROM animals;

SELECT nom, edat FROM animals;

SELECT 
	nom,
	YEAR(
		DATE_SUB(NOW(), INTERVAL edat YEAR) 
	AS 'data de naixament'
FROM  animals;

