CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos (
 id BIGINT AUTO_INCREMENT,
 Nome VARCHAR(30),
 Quantidade INT(2),
 Valor DECIMAL(8,2),
 Descrição VARCHAR(30),
 Tamanho VARCHAR (2),
 
 PRIMARY KEY(id)
 
);

INSERT INTO tb_produtos(Nome,Quantidade,Valor,Descrição,Tamanho)
VALUES("Calça",54,499.00,"Jeans","XL");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Valor >500;

SELECT * FROM tb_produtos WHERE Valor <500;