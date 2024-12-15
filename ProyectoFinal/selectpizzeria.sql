-- 1: Llista el nom, adreça i telèfon de tots els clients.
SELECT nom, adreça, telefon FROM clients;

-- 2: Llista totes les pizzes que tenen un preu base superior a 10 euros
SELECT nom FROM pizzes WHERE preu_base > 10;

-- 3: Mostra la pizza amb el preu base més car.
SELECT nom FROM pizzes WHERE preu_base = (SELECT MAX(preu_base) FROM pizzes);

-- 4: Llista les 3 masses més cares ordenades per preu, de la més cara a la més barata.
SELECT nom FROM masses ORDER BY preu DESC LIMIT 3;

-- 5: Llista quantes comandes ha fet cada client.
SELECT COUNT(*), dni_client FROM comandes GROUP BY dni_client;

-- 6: Llista totes les comandes realitzades abans del migdia.
SELECT * FROM comandes WHERE TIME(data) < '12:00:00';

-- 7: Llista els ingredients que contenen al·lergògens, mostrant només el nom de l'ingredient amb l’àlias “Ingredients amb al·lergògens”.
SELECT DISTINCT ingredients.nom AS Ingredients_amb_al·lergògens FROM ingredients JOIN ingredients_al·lergogens ON ingredients.id = ingredients_al·lergogens.id_ingredient;

-- 8: Mostra la mitjana de preu per ingredient.
SELECT AVG(preu) FROM ingredients;

-- 9: Mostra el total de grams d’ingredients que conté cada pizza.
SELECT pizzes.nom AS pizza, ingredients.nom AS ingredient, SUM(pizzes_ingredients.grams_per_ingredient) AS total_grams
FROM pizzes JOIN pizzes_ingredients ON pizzes.id = pizzes_ingredients.id_pizza JOIN ingredients ON pizzes_ingredients.id_ingredient = ingredients.id
GROUP BY pizzes.id, ingredients.nom;

-- 10: Llista el nombre total de comandes per client, mostrant el nom del client i el total de comandes realitzades.  (punt extra)
SELECT clients.nom, COUNT(comandes.num_comanda) AS comandes_totals FROM clients JOIN comandes ON clients.dni = comandes.dni_client GROUP BY clients.dni;

-- 12: Extreu la facturació que ha tingut un client específic en tota la seva vida, indicant la base imposable, l'IVA i el total facturat.
SELECT clients.nom AS client, clients.dni AS dni, SUM(comandes.preu_total / 1.21) AS base_imposable, SUM(comandes.preu_total - (comandes.preu_total / 1.21)) AS IVA, SUM(comandes.preu_total) AS total_facturat
FROM clients JOIN comandes ON clients.dni = comandes.dni_client WHERE clients.dni = '47564254A' GROUP BY clients.dni;