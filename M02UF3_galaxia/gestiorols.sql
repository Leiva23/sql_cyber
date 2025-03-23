CREATE ROLE 'xenomorf';
CREATE ROLE 'metahuma';
GRANT ALL PRIVILEGES ON galaxia.PLANETES TO 'xenomorf';
GRANT ALL PRIVILEGES ON galaxia.TRIPULANTS TO 'xenomorf';
GRANT ALL PRIVILEGES ON galaxia.naus TO 'metahuma';
SELECT user, host FROM mysql.user;

SET DEFAULT ROLE 'metahuma' TO 'clark'@'localhost';
GRANT 'xenomorf' TO 'clark'@'localhost';

SET ROLE xenomorf;
SELECT * FROM TRIPULANTS;
SELECT * FROM PLANETES;
SELECT CURRENT_ROLE();
