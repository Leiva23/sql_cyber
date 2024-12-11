USE pizzeria;

INSERT INTO clients (dni, nom, adreça, telefon)
    VALUES ('47564254A', 'Marc', 'C\ Travesera de Les Corts, 271', '+34 643587142'),
    ('47917385T', 'Marta', 'C\ La Comarca, 13', '+34 634895768'),
    ('59827490F', 'Pogba', 'C\ Numancia, 23', '+33 729472947'),
    ('91472864F', 'Carla', 'C\ Maria Cristina, 33', '+34 673983921'),
    ('42837583E', 'Pablo', 'Av. Madrid, 254', '+34 628462846');


INSERT INTO comandes (num_comanda, preu_total, data, estat, dni_client)
    VALUES (1, 23.45, '2024-02-07', 'lliurada', '47917385T'),
    (2, 75.82,'2024-03-09', 'cancel·lada', '47564254A'),
    (3, 9.99, '2024-04-10', 'lliurada', '59827490F'),
    (4, 23.95, '2024-05-11', 'en preparacio', '91472864F'),
    (5, 14.56, '2024-05-11', 'en preparacio', '42837583E');


INSERT INTO pizzes (id, nom, preu_base)
    VALUES ('Margarita', 9.95),
    ('Diavola', 8.75),
    ('Pepperoni', 10.95),
    ('Cuatro Quesos', 8.25),
    ('Napolitana', 9.75);


INSERT INTO masses (id, nom, preu)
    VALUES ('Fina', 4.95),
    ('Classica', 5.95),
    ('Gruixuda', 7.95),
    ('Sense Gluten', 8.95),
    ('Integral', 5.95);


INSERT INTO al·lergogens (id, nom, descripcio)
    VALUES ('Ou', ''),
    ('Lactosa', ''),
    ('Gluten', ''),
    ('Marisc', ''),
    ('Soja', '');

INSERT INTO tipus_ingredients (id, nom, descripcio)
    VALUES ('Carn', ),
    ('Vegetals'),
    ('Marisc'),
    ('Cereals'),
    ('Salsa');

INSERT INTO ingredients (nom, preu, descripcio, id_tipus)
    VALUES ('Pepperoni', 1.25),
    ('Mozzarella', 2.25),
    ('Xampinyons', 1.25),
    ('Slasa BBQ', 2.75),
    ('Calamars', 3.50);

