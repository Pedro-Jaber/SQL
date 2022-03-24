
-- drop database BD_Livro_Qui_Man

create database BD_Livro_Qui_Man


use BD_Livro_Qui_Man


create table tb_genero
(
cd_genero int not null primary key,
genero char(30)
)

create table tb_editora
(
cd_editora int not null primary key,
editora char(30)
)

create table tb_livro
(
Isbn int not null primary key,
titulo char(50),

-- Forign Key (SQL Server) --
-- cd_editora int Foreign Key references tb_editora (cd_editora),
-- cd_genero int Foreign Key references tb_genero (cd_genero),
-- ----------------------- --

-- Forign Key (MySQL) --
-- cd_editora int,
-- foreign key (cd_editora) references tb_editora(cd_editora),
-- cd_genero int,
-- foreign key (cd_genero) references tb_genero(cd_genero),
-- ------------------ --

cd_editora int,
cd_genero int,

dt_livro date,
preco decimal(12,2)
)


-- Forign Key (Geral) --
alter table tb_livro
add constraint fk_genero Foreign Key (cd_genero)
references tb_genero (cd_genero)

alter table tb_livro
add constraint fk_editora Foreign Key (cd_editora)
references tb_editora (cd_editora)
-- ------------------ --


-- [Adcionar um novo campo na tabela]
alter table tb_livro
add nota int

-- [Alterar o campo nota para char(20)]
alter table tb_livro
alter column nota char(20)

-- [Excluir o campo nota]
alter table tb_livro
drop column nota


-- [Criar a tabela teste]
create table tb_teste
(
cd_teste int not null primary key,
test char(10)
)

-- [Excluir a tabela teste]
drop table tb_teste