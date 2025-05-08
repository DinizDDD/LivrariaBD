-- criei o banco de dados
create database Livraria;

-- entrei dentro do banco de dados
use Livraria;

-- criei a tabela autores
create table autor(
    id_autor int PRIMARY KEY,
    nome varchar(255),
    nacionalidade varchar(255)
);

-- criei a tabela livros
create table livro(
    id_livro int PRIMARY KEY,
    titulo varchar(255),
    ano_publicacao int,
    id_autor int,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
    preco decimal
);

-- criei a tabela clientes
create table cliente(
    id_cliente int PRIMARY KEY,
    nome varchar(255),
    email varchar(255),
    cidade varchar(255),
);

-- creiei a tabela vendas
create table venda(
    id_venda int PRIMARY KEY,
    id_cliente int,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    id_livro int,
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    data_venda date,
    quantidade int
);