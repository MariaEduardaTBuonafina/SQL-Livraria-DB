CREATE DATABASE Livraria;
USE Livraria;

CREATE TABLE autores (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    pais_origem VARCHAR(50)
);

CREATE TABLE livros (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    id_autor INT,
    preco DECIMAL(8,2),
    estoque INT DEFAULT 0,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro)
);

INSERT INTO autores (nome, pais_origem) VALUES
('Machado de Assis', 'Brasil'),
('J.K. Rowling', 'Reino Unido'),
('George Orwell', 'Reino Unido');

INSERT INTO livros (titulo, id_autor, preco, estoque) VALUES
('Dom Casmurro', 1, 29.90, 10),
('Harry Potter e a Pedra Filosofal', 2, 39.90, 15),
('1984', 3, 25.50, 12);

INSERT INTO vendas (id_livro, quantidade, data_venda) VALUES
(1, 2, '2025-03-20'),
(2, 1, '2025-03-21'),
(3, 3, '2025-03-22');

SELECT livros.titulo, autores.nome AS autor, livros.preco, livros.estoque 
FROM livros 
JOIN autores ON livros.id_autor = autores.id_autor;

SELECT livros.titulo, SUM(vendas.quantidade) AS total_vendido
FROM vendas
JOIN livros ON vendas.id_livro = livros.id_livro
GROUP BY livros.titulo;
