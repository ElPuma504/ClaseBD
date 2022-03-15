USE tarea2;

create table agencia(
codigo int primary key identity(1,1),
fechainicio date,
ciudad varchar(255),

);

create table paquete_turistico(
codpaq int primary key identity(1,1),
codpaq1 int foreign key references paquete_turistico(codpaq),
codigo int,
pais varchar(255),
precio int,
);

ALTER TABLE paquete_turistico add constraint FK_paquete_agencia foreign key(codigo) references agencia(codigo);

create table cliente(
dni int primary key identity(1,1),
domicilio varchar(255),
myap varchar(255),


);
create table paqueteturistico_cliente(
codpaq int foreign key references paquete_turistico(codpaq),
dni int foreign key references cliente(dni),
PRIMARY KEY(codpaq,dni),
);
create table formapago(
tipo varchar(255) primary key,
dni int,
nombre int,
monto int,

);
ALTER TABLE formapago add constraint FK_formapago_cliente foreign key(dni) references cliente(dni);
ALTER TABLE formapago add constraint FK_formapago_cliente foreign key(nombre) references banco(nombre);

create table banco(
nombre varchar(255) primary key,
sucursal varchar(255),

);