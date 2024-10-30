-- Creació de taules
CREATE TABLE professors (
	id INT UNSIGNED,
	nif_p CHAR(9),
	nom VARCHAR(20),
	especialitat VARCHAR(15),
	-- A tots els telefons se li assignara un prefix '+34'
	telefon INT UNSIGNED,
	PRIMARY KEY (id),
	UNIQUE (nif)
);

CREATE TABLE alumnes (
	num_matricula INT UNSIGNED,
	data_naixement DATE,
        -- A tots els telefons se li assignara un prefix '+34'
	telefon INT UNSIGNED
	PRIMARY KEY (num_matricula)
);

CREATE TABLE assignatures (
	codi INT UNSIGNED,
	nom VARCHAR(20),
	id_professor INT,
	FOREIGN KEY (id_professor) REFERENCES professors(id)
);

CREATE TABLE matriculacions (
	num_matricula_alumne INT UNSIGNED,
	codi_assignatura INT UNSIGNED,
	-- any_academic és un INT de 8 xifres on les 4 primeres xifres
	-- corresponen a l'any de setembre o desembre,
	--i les ultimes 4 xifres coresponen a l'any de gener a juny
	--Exemple: 20242025 correspon a l'any academic 2024-2025
 	any_academic -- TODO
	FOREIGN KEY (num_matricula_alumne) REFERENCES alumnes(num_matricula),
	FOREIGN KEY (codi_assignatura) REFERENCES assignatures (codi),
	PRIMARY KEY (num_matricula_alumne, codi_assignatura)
);


