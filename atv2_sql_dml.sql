CREATE DATABASE loja_gamer;
USE loja_gamer;

CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    quantidade INT
);

INSERT INTO produtos (id, nome, preco, quantidade) VALUES
(1, 'Teclado', 100.00, 10),
(2, 'Mouse', 50.00, 20),
(3, 'Monitor', 800.00, 5),
(4, 'Fone', 120.00, 15),
(5, 'Notebook', 3000.00, 3);

UPDATE produtos
SET preco = 60.00
WHERE id = 2;

DELETE FROM produtos
WHERE id = 4;

SELECT * FROM produtos
WHERE preco > 100;