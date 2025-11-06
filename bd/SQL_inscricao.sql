create database inscricao

create table Cliente
(
	id_cliente int primary key,
	nome varchar (100) not null,
	CPF_CNPJ varchar (18) unique not null,
	telefone varchar (20),
	email varchar (100) unique not null,
	senha varchar (100) not null
)	
go

create table Transportadora 
(
	id_transportadora int primary key,
	RNTRC varchar (20),
	nome varchar (100) not null,
	CNPJ varchar (18) unique not null,
	telefone varchar (20),
	email varchar (100) unique not null,
	senha varchar (100) not null
)
go

create table motorista
(
	id_motorista int primary key,
	nome varchar (100) not null,
	CPF_CNPJ varchar (18) unique not null,
	telefone varchar (20),
	email varchar (100) unique not null,
	senha varchar (100) not null,
	id_transportadora int,
	foreign key (id_transportadora) references Transportadora (id_transportadora)
)