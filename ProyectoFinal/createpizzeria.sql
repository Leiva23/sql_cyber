USE pizzeria;

CREATE TABLE IF NOT EXISTS clients(
    dni CHAR(9),
    nom VARCHAR(16),
    adreça VARCHAR(35),
    telefon VARCHAR(14),
    PRIMARY KEY (dni)
);

CREATE TABLE IF NOT EXISTS comandes(
num_comanda INT UNSIGNED,
preu_total DECIMAL(5,2),
data DATE,
estat VARCHAR(16),
dni_client char(9),
PRIMARY KEY (num_comanda),
FOREIGN KEY (dni_client) REFERENCES clients(dni)
);

CREATE TABLE IF NOT EXISTS pizzes(
    id INT UNSIGNED,
    nom VARCHAR(25),
    preu_base DECIMAL(4,2),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS masses(
    id INT UNSIGNED,
    nom VARCHAR(25),
    preu DECIMAL(4,2),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS al·lergogens(
    id INT UNSIGNED,
    nom VARCHAR(25),
    descripcio VARCHAR(70),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ingredients(
    id INT UNSIGNED,
    nom VARCHAR(25),
    preu DECIMAL(4,2),
    descripcio VARCHAR(70),
    id_tipus VARCHAR(16),
    PRIMARY KEY(id),
    FOREIGN KEY(id_tipus) REFERENCES tipus_ingredients(id)
);

CREATE TABLE IF NOT EXISTS tipus_ingredients(
    id INT UNSIGNED,
    nom VARCHAR(25),
    descripcio VARCHAR(70),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS pizzes_masses(
    id_pizza INT UNSIGNED,
    id_massa INT UNSIGNED,
    PRIMARY KEY(id_pizza, id_massa),
    FOREIGN KEY(id_pizza) REFERENCES pizzes(id),
    FOREIGN KEY(id_massa) REFERENCES masses(id)
);

CREATE TABLE IF NOT EXISTS comandes_pizzes(
    id_comandes INT UNSIGNED,
    id_pizza INT UNSIGNED,
    PRIMARY KEY(id_comandes,id_pizza),
    FOREIGN KEY(id_comandes) REFERENCES comandes(num_comanda),
    FOREIGN KEY(id_pizza) REFERENCES pizzes(id)
);

CREATE TABLE IF NOT EXISTS ingredients_al·lergogens(
    id_ingredient INT UNSIGNED,
    id_alergogen INT UNSIGNED,
    PRIMARY KEY(id_ingredient,id_alergogen),
    FOREIGN KEY(id_ingredient) REFERENCES ingredients(id),
    FOREIGN KEY(id_alergogen) REFERENCES al·lergogens(id)
);

CREATE TABLE IF NOT EXISTS pizzes_ingredients(
    id_pizza INT UNSIGNED,
    id_ingredient INT UNSIGNED,
    grams_per_ingredients INT UNSIGNED,
    PRIMARY KEY(id_pizza,id_ingredient)
    FOREIGN KEY(id_pizza) REFERENCES pizzes(id),
    FOREIGN KEY(id_pizza) REFERENCES ingredients(id)
);