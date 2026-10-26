CREATE DATABASE escola;

USE  escola;

CREATE TABLE alunos (
	id_alunos INT auto_increment PRIMARY KEY,
    nome VARCHAR (100),
    email VARCHAR (100),
    idade INT
    );
    
    CREATE TABLE professores (
	id_professores INT auto_increment PRIMARY KEY,
    nome VARCHAR (100),
    email VARCHAR (100),
	disciplina VARCHAR (15),
    id_cliente INT,
    FOREIGN KEY (id_alunos) REFERENCES consumidores(id_cliente)
    );
    
       CREATE TABLE cursos (
	id_cursos INT auto_increment PRIMARY KEY,
    nome_curso VARCHAR (100),
    duracao FLOAT,
    id_professor INT,
    FOREIGN KEY (id_alunos) REFERENCES consumidores(id_cliente)
    );
    
    