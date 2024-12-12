DELETE FROM al·lergogens
WHERE id NOT IN (SELECT DISTINCT id_alergogen FROM ingredients_al·lergogens);


UPDATE ingredients
SET preu = preu * 1.20
WHERE id NOT IN (SELECT DISTINCT id_alergogen FROM pizzes_ingredients);


