SELECT mysql.user.user,mysql.user.host, mysql.tables_priv.Db,mysql.tables_priv.Table_name, mysql.tables_priv.Table_priv, mysql.tables_priv.Column_priv
FROM mysql.user JOIN mysql.tables_priv ON mysql.user.user = mysql.tables_priv.User WHERE Db='galaxia';

SELECT table_name, table_rows
FROM information_schema.tables
WHERE table_schema = 'galaxia';

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'TRIPULANTS';
