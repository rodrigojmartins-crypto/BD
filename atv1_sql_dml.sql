INSERT INTO usuarios (nome, email, cidade, estado, telefone) VALUES
('João Pedra', 'joao@gmail.com', 'Mococa', 'SP', '19999999999'),
('Maria Oliveira', 'maria@gmail.com', 'Ribeirão Preto', 'SP', '19988888888');

INSERT INTO produtos (nome, preco, estoque) VALUES 	
('jbl', '80.00' '5'),
('oculos VR', '400.00', '3');

UPDATE produtos
SET estoque = 10
WHERE nome = 'jbl';

DELETE FROM clientes 
WHERE nome = 'Maria Oliveira';

select * from clientes 
where estado = 'SP';

select * from produtos 
where preco between 10 and 1000;