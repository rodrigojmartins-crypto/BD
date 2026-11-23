CREATE database oficina_mecanica;

use oficina_mecanica;

CREATE TABLE clientes (
	id_cliente INT auto_increment PRIMARY KEY,
    nome VARCHAR (100),
    cidade VARCHAR (100),
    telefone VARCHAR (20),
    data_cadastro DATE 
);

CREATE TABLE servicos (
id_servicos  INT auto_increment not null PRIMARY KEY,
descricao VARCHAR(150),
categoria VARCHAR(100),
preco decimal(10,2)
);

CREATE TABLE veiculos (
id_veiculos INT auto_increment not null PRIMARY KEY,
id_cliente INT,
modelo VARCHAR(100),
placa VARCHAR(10),
ano INT,
FOREIGN KEY (id_cliente) REFERENCES consumidores(id_cliente)
);

CREATE TABLE orrdens_servico (
id_ordens_servico INT auto_increment not null PRIMARY KEY,
id_cliente INT,
id_veiculos INT,
id_servicos INT,
data_os date,
quantidade INT,
FOREIGN KEY (id_cliente) REFERENCES consumidores(id_cliente),
FOREIGN KEY (id_veiculos) REFERENCES consumidores(id_veiculos),
FOREIGN KEY (id_servisos) REFERENCES consumidores(id_servicos)
);


INSERT INTO clientes (nome, cidade, telefone, data_cadastro) VALUES
('João Silva', 'Mococa', '19999999999', '2026-01-10'),
('Rodrigo Jose', 'Mococa', '19988888888', '2026-01-12'),
('Pedro Rocha', 'São Paulo', '19977777777', '2026-02-05'),
('Ana Souza', 'Ribeirão Preto', '19966666666', '2026-02-15'),
('Carlos Lima', 'Mococa', '19955555555', '2026-03-01');


INSERT INTO servicos (descricao, categoria, preco) VALUES
('troca de óleo', 'Manutenção', 120.00),
('alinhamento', 'Suspensão', 80.00),
('balanceamento', 'Pneus', 60.00),
('lavagem completa', 'Limpeza', 50.00),
('Troca de pneus', 'Pneus', 300.00);


INSERT INTO veiculos (id_cliente, modelo, placa, ano) VALUES
(1, 'corsa', 'ABC1234', 2020),
(2, 'Onix', 'DEF5678', 2022),
(3, 'Corolla', 'GHI9012', 2019),
(4, 'Gol', 'JKL3456', 2018),
(5, 'Camaro', 'MNO7890', 2023);


INSERT INTO orrdens_servico (id_cliente, id_veiculos, id_servicos, data_os, quantidade) VALUES
(1, 1, 1, '2026-03-05', 1),
(2, 2, 2, '2026-03-06', 1),
(3, 3, 3, '2026-03-07', 2),
(4, 4, 4, '2026-03-08', 1),
(5, 5, 5, '2026-03-09', 4);

UPDATE servico
SET preco = 200
WHERE nome = 'troca de óleo';

DELETE FROM veiculos
WHERE ano = 2018;

SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;

SELECT categoria, COUNT(*) AS total_servicos
FROM servicos
GROUP BY categoria;

SELECT id_cliente, COUNT(*) AS total_ordens
FROM orrdens_servico
GROUP BY id_cliente
HAVING COUNT(*) > 1;