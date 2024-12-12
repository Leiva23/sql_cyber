USE pizzeria;

INSERT INTO clients (dni, nom, adreça, telefon) VALUES
    ('47564254A', 'Marc', 'C\ Travesera de Les Corts, 271', '+34 643587142'),
    ('47917385T', 'Marta', 'C\ La Comarca, 13', '+34 634895768'),
    ('59827490F', 'Pogba', 'C\ Numancia, 23', '+33 729472947'),
    ('91472864F', 'Carla', 'C\ Maria Cristina, 33', '+34 673983921'),
    ('42837583E', 'Pablo', 'Av. Madrid, 254', '+34 628462846');


INSERT INTO comandes (num_comanda, preu_total, data, estat, dni_client) VALUES
    (1, 23.45, '2024-02-07', 'lliurada', '47564254A'),
    (2, 75.82,'2024-03-09', 'cancel·lada', '47917385T'),
    (3, 9.99, '2024-04-10', 'lliurada', '59827490F'),
    (4, 23.95, '2024-05-11', 'en preparacio', '91472864F'),
    (5, 14.56, '2024-05-11', 'en preparacio', '42837583E');


INSERT INTO pizzes (id, nom, preu_base) VALUES
    (1, 'Margarita', 9.95),
    (2, 'Diavola', 8.75),
    (3, 'Pepperoni', 10.95),
    (4, 'Cuatro Quesos', 8.25),
    (5, 'Napolitana', 9.75);


INSERT INTO masses (id, nom, preu) VALUES
    (1, 'Fina', 4.95),
    (2, 'Classica', 5.95),
    (3, 'Gruixuda', 7.95),
    (4, 'Sense Gluten', 8.95),
    (5, 'Integral', 5.95);


INSERT INTO al·lergogens (id, nom, descripcio) VALUES
    (1, 'Ou', 'Productes amb ou o dreivats'),
    (2, 'Lactosa', 'Productes lactics'),
    (3, 'Gluten', 'Tipus de cereals'),
    (4, 'Fruits secs', 'nous, ametlles, avellanes...'),
    (5, 'Soja', 'En derivats de la soja');

INSERT INTO tipus_ingredients (id, nom, descripcio) VALUES
    (1, 'Carn', 'Embutits, carns, peixos...' ),
    (2, 'Vegetals', 'Productes vegetals'),
    (3, 'Formatge', 'Productes lactics com Mozzarella, Parmesa, Brie...'),
    (4, 'Fruits secs', 'nous, ametlles, avellanes...'),
    (5, 'Salsa', 'BBQ, Salsa de tomaquet, Salsa picant');

INSERT INTO ingredients (id, nom, preu, descripcio, id_tipus) VALUES 
    (1, 'Pepperoni', 1.25, 'Carn'),
    (2, 'Mozzarella', 2.25, 'Formatge'),
    (3, 'Xampinyons', 1.25, 'Fruits secs'), 
    (4, 'Salsa BBQ', 2.75, 'Salsa'),
    (5, 'Hortalisses', 3.50, 'Vegetals');


INSERT INTO pizzes_masses (id_pizza, id_massa) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO comandes_pizzes (num_comanda, id_pizza) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO ingredients_al·lergogens (id_ingredient, id_alergogen) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO pizzes_ingredients (id_pizza, id_alergogen, grams_per_ingredient) VALUES
    (1, 1, 100),
    (2, 2, 120),
    (3, 3, 90),
    (4, 4, 80),
    (5, 5, 50);




