
USE tarea;

create table cliente(
num_cliente int primary key identity(1,1),
apellido varchar(255),
domicilio varchar(255),
telefono int not null,
);

create table evento(
codigo int primary key identity(1,1),
precio int not null,
horario time not null,
presentador varchar(255)
);

create table cliente_evento(
num_cliente int foreign key references cliente (num_cliente),
codigo int foreign key references evento (codigo),
PRIMARY KEY (num_cliente,codigo)
);

create table presentador(
dni int primary key identity(1,1),
codigo int not null,
apellido varchar(255) not null,
año datetime not null

);
create table animador(
dni int primary key identity(1,1),
codigo int,
codigoanimador int not null,
apellido varchar(255) not null,
disfraz varchar(255) not null
);
ALTER TABLE animador add constraint FK_animador_codigo foreign key(codigo) REFERENCES evento(codigo);

create table disfraz(
codigo int primary key identity(1,1),
dni int,
personaje varchar(255),
precioalquiler int not null,
);
ALTER TABLE disfraz add constraint FK_disfraz_animador foreign key(dni) REFERENCES animador(dni);