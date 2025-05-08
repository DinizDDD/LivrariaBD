create database Livraria;

use Livraria;

create table autor(
    id_autor int PRIMARY KEY,
    nome varchar(255),
    nacionalidade varchar(255)
)

create table livro(
    id_livro int PRIMARY KEY,
    titulo varchar(255),
    ano_publicacao int,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
    preco decimal
)

create table cliente(
    id_cliente int PRIMARY KEY,
    nome varchar(255),
    email varchar(255),
    cidade varchar(255),
)

create table venda(
    id_venda int PRIMARY KEY,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    data_venda date,
    quantidade int
)