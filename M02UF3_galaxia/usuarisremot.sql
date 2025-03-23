CREATE USER 'et'@'192.168.1.41';
GRANT INSERT ON galaxia.* TO 'et'@'192.168.1.41';
SHOW GRANTS FOR 'et'@'192.168.1.41';
INSERT INTO TRIPULANTS (nom, càrrec) VALUES ('et', 'Explorador');

GRANT SELECT (nom, càrrec) ON galaxia.TRIPULANTS TO 'et'@'192.168.1.41';
SELECT nom, càrrec FROM galaxia.TRIPULANTS;
