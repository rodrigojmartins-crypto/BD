CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY,
    criacoes INT,
    idade INT,
    nome VARCHAR(100)
);

CREATE TABLE Leitor (
    id_leitor INT PRIMARY KEY,
    email VARCHAR(100),
    idade INT,
    nome VARCHAR(100)
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY,
    id_autor INT,
    genero VARCHAR(100),
    criacao DATE,
    titulo VARCHAR(100),
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

CREATE TABLE Emprestimo (
    id_livro INT,
    id_leitor INT,
    PRIMARY KEY (id_livro, id_leitor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_leitor) REFERENCES Leitor(id_leitor)
);

    INSERT INTO leitor (id_leitor, idade, nome, email) VALUES
(1, 16, 'rodrigo', 'rodrigo@gmail.com'),
(2, 67, 'jorge', 'jorge@gmail.com'),
(3, 34, 'adriano', 'adriano@gmail.com'),
(4, 18, 'carol', 'carol@gmail.com'),
(5, 23, 'maria', 'maria@gmail.com');

    INSERT INTO autor (id_autor, criacoes, idade, nome) VALUES
(1, 10, 67, 'monteiro lobato'),
(2, 6, 42, 'machado de assis'),
(3, 8, 13, 'clarice lispector'),
(4, 7, 90, 'shakesper'),
(5, 14, 78, 'jose de camargo');

    INSERT INTO Livro (id_livro, id_autor, genero, criacao, titulo) VALUES
(1, 1, 'Romance', '1781-01-01', 'Um novo dia'),
(2, 2, 'Infantil', '1920-12-02', 'Memorias antigas'),
(3, 3, 'Comedia', '1943-07-03', 'O melhor no que faz'),
(4, 4, 'Terro', '1433-03-04', 'a rua noturna'),
(5, 5, 'Acao', '2098-06-05', 'a ilha infinita');

INSERT INTO Emprestimo (id_livro, id_leitor) VALUES
(1,1),
(2,5),
(4,1),
(3,2),
(5,3);

ALTER TABLE livro MODIFY genero VARCHAR(50);
DELETE FROM leitor
WHERE id_leitor = 4;

SET SQL_SAFE_UPDATES = 0;

UPDATE leitor 
SET idade = 17
WHERE nome LIKE 'rodrigo';