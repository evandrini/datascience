CREATE DATABASE IF NOT EXISTS livraria;

USE livraria;

CREATE TABLE IF NOT EXISTS autor(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS livros(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
   	genero VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_de_publicacao VARCHAR(100) NOT NULL,
	FOREIGN KEY (id_autor) REFERENCES autor(id)
);

CREATE TABLE IF NOT EXISTS cliente(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cpf CHAR(11),
	email VARCHAR(100),
    
    FOREIGN KEY (id_pedidos) REFERENCES pedidos(id) ON DELETE cascade ON UPDATE cascade
    
);

CREATE TABLE IF NOT EXISTS pedidos(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	datas VARCHAR(100),
	id_cliente INT,
    id_pedido INT,
    
	FOREIGN KEY (id_cliente) REFERENCES cliente(id) ON DELETE cascade ON UPDATE cascade,
	FOREIGN KEY (id_livros) REFERENCES livros(id) ON DELETE cascade ON UPDATE cascade
);


-----------------------------------------------------------

USE livraria;

START TRANSACTION;

#autores
INSERT INTO autor(id, nome) VALUES ('George Orwell');
INSERT INTO autor(id, nome) VALUES ('Agatha Christie');
INSERT INTO autor(id, nome) VALUES ('J.K. Rowling');
INSERT INTO autor(id, nome) VALUES ('Stephen King');
INSERT INTO autor(id, nome) VALUES ('Emily Brontë');
INSERT INTO autor(id, nome) VALUES ('F. Scott Fitzgerald');
INSERT INTO autor(id, nome) VALUES ('Haruki Murakami');
INSERT INTO autor(id, nome) VALUES ('J.R.R. Tolkien');

#livros
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('1984', 'Ficção Científica', 5, 1949);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('O Caso dos Dez Negrinhos', 'Suspense', 6, 1939);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('Harry Potter e a Pedra Filosofal', 'Fantasia', 7, 1997);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('It - A Coisa', 'Horror', 8, 1986);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES("Do Mil ao Milhao", "Financas", "Primo Rico", 2020);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('O Morro dos Ventos Uivantes', 'Romance', 9, 1847);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('O Grande Gatsby', 'Ficção', 10, 1925);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('Norwegian Wood', 'Ficção Contemporânea', 11, 1987);
INSERT INTO livro(titulo, genero, autor, ano_de_publicacao) VALUES('O Senhor dos Anéis', 'Fantasia', 12, 1954);

#clientes
INSERT INTO cliente(id, nome, cpf, email) VALUES('Joana Fernandes', 9876541, 'joana@email.com');
INSERT INTO cliente(id, nome, cpf, email) VALUES('Lucas Oliveira', 1234568, 'lucas@email.com');
INSERT INTO cliente(id, nome, cpf, email) VALUES('Mariana Santos', 8765433, 'mariana@email.com');
INSERT INTO cliente(id, nome, cpf, email) VALUES('Carlos Silva', 5647382, 'carlos@email.com');
INSERT INTO cliente(id, nome, cpf, email) VALUES('André Santos', 6541239, 'andre@email.com');
INSERT INTO cliente(id, nome, cpf, email) VALUES('Luísa Oliveira', 7891234, 'luisa@email.com');
INSERT INTO cliente(id, nome, cpf, email) VALUES('Eduardo Silva', 3214567, 'eduardo@email.com');
INSERT INTO cliente(id, nome, cpf, email) VALUES('Isabela Fernandes', 9876541, 'isabela@email.com');

#pedidos
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('03/07/2021', 1, 4);
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('12/10/2021', 2, 3);
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('05/01/2022', 3, 2);
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('08/04/2022', 4, 1);
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('22/06/2022', 5, 8);
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('14/09/2022', 6, 7);
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('03/12/2022', 7, 6);
INSERT INTO pedidos(id, datas, id_cliente, id_livros) VALUES('25/03/2023', 8, 5);


COMMIT