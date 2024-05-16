CREATE DATABASE db_escola;

CREATE TABLE tb_estudantes (
id INT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nota DECIMAL (3,1) NOT NULL,
classe CHAR,
serie INT,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, nota, classe, serie)
VALUES ("Maria Clara", 7.5, "B", 8),
("Giovana", 6.2, "B", 8),
("Bruno", 9.8, "B", 8),
("Ana", 7.2, "B", 8),
("José", 5.0, "B", 8),
("Mayara", 8.0, "B", 8),
("Diego", 10.0, "B", 8),
("Igor", 3.9, "B", 8);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nome = 'Rebeca' WHERE ID = 2;

