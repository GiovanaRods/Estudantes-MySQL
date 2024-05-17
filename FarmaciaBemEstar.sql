CREATE DATABASE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT NOT NULL,
descricao VARCHAR(255),
administracao VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
dosagem INT,
preco DECIMAL (8,2),
quantidade INT,
PRIMARY KEY(id)
);
ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY(categoriaid) REFERENCES tb_categorias(id);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao, administracao)
VALUES ("Muscle Pharma", "injetável"),
("Aspen","via oral"),
("Pharmacom", "via oral"),
("LanderLan", "injetável"),
("Genesys","injetável");


INSERT INTO tb_produtos (nome, dosagem, preco, quantidade, categoriaid)
VALUES ("oxandrolona", 50, 70.00, 100, 1),
("durateston", 100, 30.00, 15, 4),
("boldenona", 250, 150.00, 20, 4),
("oxandrolona", 100, 130.00, 100, 2),
("deca durabolin", 300, 200.00, 50, 5),
("Dianabol", 50, 50.00, 200, 3),
("masteron", 100, 80.00, 85, 5),
("Stanozolol", 100, 60.00, 250, 1);

SELECT * FROM tb_produtos WHERE preco < 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, dosagem, preco, quantidade, tb_categorias.descricao, tb_categorias.administracao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT nome, dosagem, preco, quantidade, tb_categorias.descricao, tb_categorias.administracao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.id = 1;



