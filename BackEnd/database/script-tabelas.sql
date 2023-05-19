CREATE DATABASE FURIA;
USE FURIA;

CREATE TABLE Usuario (
idCadastro int primary key auto_increment,
nome varchar(50),
email varchar(50),
senha varchar(50)
);

CREATE TABLE Login (
email varchar(50),
senha varchar(50),
fkUsuario INT,
constraint fkUsuario foreign key (fkUsuario) references Usuario(idCadastro)
);

CREATE TABLE Quiz (
fkUsuario int primary key,
PorcentagemAcerto int
);
