CREATE USER 'alien'@'localhost';
SHOW GRANTS FOR 'alien'@'localhost';

CREATE USER 'clark'@'localhost' IDENTIFIED BY 'contrasenya';
SHOW GRANTS FOR 'alien'@'localhost';

GRANT USAGE ON *.* TO 'alien'@'localhost';
GRANT USAGE ON *.* TO 'clark'@'localhost';

GRANT SELECT ON galaxia.TRIPULANTS TO 'clark'@'localhost';
GRANT SELECT, INSERT, UPDATE ON galaxia.* TO 'alien'@'localhost' WITH GRANT OPTION;

GRANT SELECT ON galaxia.NAUS TO 'clark'@'localhost';
