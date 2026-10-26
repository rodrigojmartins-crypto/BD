CREATE DATABASE pizzaria;

USE pizzaria;

CREATE TABLE clientes (
	id_cliente INT auto_increment PRIMARY KEY,
    nome VARCHAR (100),
    email VARCHAR (100),
    telefone INT,
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES consumidores(id_pedido)
    );
    
     CREATE TABLE pedido (
	id_pedido INT auto_increment PRIMARY KEY,
    data_pedido DATE,
	valor_total INT,
    status_pedido INT
    );
    
    CREATE TABLE rel (
	id_pedido INT auto_increment PRIMARY KEY,
    FOREIGN KEY (id_pizza) REFERENCES pizzas (id_pizza)
    );
    
    CREATE TABLE pizza (
	id_pizza INT auto_increment PRIMARY KEY,
    nome VARCHAR(100),
	sabor VARCHAR(100),
    preço INT
    );
    
     