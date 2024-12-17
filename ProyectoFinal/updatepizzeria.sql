
-- Esborrem tots els al·lergogens els quals no estiguin en cap ingredient
DELETE FROM al·lergogens
WHERE id NOT IN (SELECT DISTINCT id_alergogen FROM ingredients_al·lergogens);

---- Pujem un 20% el preu dels ingredients que no estiguin en cap pista (extras)
UPDATE ingredients SET preu = preu * 1.20
WHERE id NOT IN (SELECT DISTINCT id_ingredient FROM pizzes_ingredients);
