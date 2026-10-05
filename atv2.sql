CREATE DATABASE empresa;

USE  empresa;

CREATE TABLE departamento (
	id_alunos INT auto_increment PRIMARY KEY,
    nome VARCHAR (100),
    loclizacao VARCHAR (100)
    );
    
     CREATE TABLE funcionario (
	id_funcionario INT auto_increment PRIMARY KEY,
    nome VARCHAR (100),
    cargo VARCHAR (100),
	salario INT,
    id_departamento INT,
    FOREIGN KEY (id_alunos) REFERENCES consumidores(id_cliente)
    );
    
     CREATE TABLE projeto (
	id_projeto INT auto_increment PRIMARY KEY,
    nome VARCHAR (100),
    email DATE
    );
    
     CREATE TABLE funcionarios_projeto (
	id_funcionarios INT auto_increment PRIMARY KEY,
    FOREIGN KEY (id_projeto) REFERENCES projetos(id_projeto)
    );