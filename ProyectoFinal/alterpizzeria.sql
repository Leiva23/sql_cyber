
-- Esborrem les FOREIGN KEY
ALTER TABLE ingredients DROP FOREIGN KEY ingredients_ibfk_1;
ALTER TABLE pizzes_masses DROP FOREIGN KEY pizzes_masses_ibfk_1;
ALTER TABLE pizzes_masses DROP FOREIGN KEY pizzes_masses_ibfk_2;
ALTER TABLE comandes_pizzes DROP FOREIGN KEY comandes_pizzes_ibfk_1;
ALTER TABLE comandes_pizzes DROP FOREIGN KEY comandes_pizzes_ibfk_2;
ALTER TABLE ingredients_al·lergogens DROP FOREIGN KEY ingredients_al·lergogens_ibfk_1;
ALTER TABLE ingredients_al·lergogens DROP FOREIGN KEY ingredients_al·lergogens_ibfk_2;
ALTER TABLE pizzes_ingredients DROP FOREIGN KEY pizzes_ingredients_ibfk_1;
ALTER TABLE pizzes_ingredients DROP FOREIGN KEY pizzes_ingredients_ibfk_2;

--Esborrem les PRIMARY KEY
ALTER TABLE comandes DROP PRIMARY KEY;
ALTER TABLE pizzes DROP PRIMARY KEY;
ALTER TABLE masses DROP PRIMARY KEY;
ALTER TABLE al·lergogens DROP PRIMARY KEY;
ALTER TABLE tipus_ingredients DROP PRIMARY KEY;
ALTER TABLE ingredients DROP PRIMARY KEY;

-- Recuperem les PRIMARY KEY
ALTER TABLE comandes ADD PRIMARY KEY (num_comanda);
ALTER TABLE pizzes ADD PRIMARY KEY (id);
ALTER TABLE masses ADD PRIMARY KEY (id);
ALTER TABLE al·lergogens ADD PRIMARY KEY (id);
ALTER TABLE tipus_ingredients ADD PRIMARY KEY (id);
ALTER TABLE ingredients ADD PRIMARY KEY (id);

-- Afegim el AUTO_INCREMENT amb la comanda MODIFY
ALTER TABLE comandes MODIFY num_comanda INT UNSIGNED AUTO_INCREMENT;
ALTER TABLE pizzes MODIFY id INT UNSIGNED AUTO_INCREMENT;
ALTER TABLE masses MODIFY id INT UNSIGNED AUTO_INCREMENT;
ALTER TABLE al·lergogens MODIFY id INT UNSIGNED AUTO_INCREMENT;
ALTER TABLE tipus_ingredients MODIFY id INT UNSIGNED AUTO_INCREMENT;
ALTER TABLE ingredients MODIFY id INT UNSIGNED AUTO_INCREMENT;

-- Recuperem les FOREIGN KEY
ALTER TABLE comandes_pizzes ADD CONSTRAINT comandes_pizzes_ibfk_1 FOREIGN KEY (num_comanda) REFERENCES comandes(num_comanda);
ALTER TABLE comandes_pizzes ADD CONSTRAINT comandes_pizzes_ibfk_2 FOREIGN KEY (id_pizza) REFERENCES pizzes(id);
ALTER TABLE pizzes_masses ADD CONSTRAINT pizzes_masses_ibfk_1 FOREIGN KEY (id_pizza) REFERENCES pizzes(id);
ALTER TABLE pizzes_masses ADD CONSTRAINT pizzes_masses_ibfk_2 FOREIGN KEY (id_massa) REFERENCES masses(id);
ALTER TABLE ingredients ADD CONSTRAINT ingredients_ibfk_1 FOREIGN KEY (id_tipus) REFERENCES tipus_ingredients(id);
ALTER TABLE ingredients_al·lergogens ADD CONSTRAINT ingredients_al·lergogens_ibfk_1 FOREIGN KEY (id_ingredient) REFERENCES ingredients(id);
ALTER TABLE ingredients_al·lergogens ADD CONSTRAINT ingredients_al·lergogens_ibfk_2 FOREIGN KEY (id_alergogen) REFERENCES al·lergogens(id);
ALTER TABLE pizzes_ingredients ADD CONSTRAINT pizzes_ingredients_ibfk_1 FOREIGN KEY (id_pizza) REFERENCES pizzes(id);
ALTER TABLE pizzes_ingredients ADD CONSTRAINT pizzes_ingredients_ibfk_2 FOREIGN KEY (id_ingredient) REFERENCES ingredients(id);

-- Modifiquem l'estat de les comandes de VARCHAR  a ENUM
ALTER TABLE comandes MODIFY estat ENUM('en preparacio', 'lliurada', 'cancel·lada');

-- Modifiquem els grams de INT UNSIGNED perque nomes s'admeteixin valor del 10 al 30
ALTER TABLE pizzes_ingredients 
MODIFY grams_per_ingredient INT CHECK (grams_per_ingredient BETWEEN 10 AND 30);
