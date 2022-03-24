
-- [Excluir banco de dados]
-- drop database bd_rh_qui_manha

-- [Criar banco de dados]
create database bd_rh_qui_manha 

-- [Usar banco de dados]
use bd_rh_qui_manha


-- [Criar tabela test]
/*
create table tb_test
(
test int not null primary key
)
*/

-- [Deletar tabela test]
-- drop table tb_test

-- [Criar tabela Cargo]
create table tb_cargo
(
cd_cargo int not null primary key,
cargo char(30)
)

-- [Criat tabela Setor]
create table tb_setor
(
cd_setor int not null primary key,
setor char(30)
)

-- [Criar tabela Funcionario]
create table tb_funcionario
(
cpf int not null primary key,
funcionario char(50),
dt_nascimento date,
cd_setor int,
cd_cargo int,
salario decimal(12,2) -- money
)



-- [Criar Foreign Key de cd_cargo]
alter table tb_funcionario
add constraint FK_cargo Foreign Key (cd_cargo)
references tb_cargo (cd_cargo)

-- [Criar Foreign Key de cd_setor]
alter table tb_funcionario
add constraint FK_setor Foreign Key (cd_setor)
references tb_setor (cd_setor)

