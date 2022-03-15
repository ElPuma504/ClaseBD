USE tarea;

create table camionero(
dni int primary key identity(1,1),
nombre varchar(255) not null,
telefono int not null,
direccion varchar(255) not null,
salario int not null
);

create table camion(
matricula int primary key identity(1,1),
modelo varchar(255),
tipo varchar(255),
potencia varchar(255),
);
create table camion_camionero(
dni int FOREIGN KEY REFERENCES camionero(dni),
matricula int FOREIGN KEY REFERENCES camion(matricula),
PRIMARY KEY(dni,matricula)

);
create table paquete(
cod_paquete int primary key identity(1,1),
dni int,
descripcion varchar(255) not null,
destinatario varchar(255) not null,
dire_destinatario varchar(255) not null

);
ALTER TABLE paquete add constraint FK_paquete_camionero foreign key (dni) REFERENCES camionero(dni);

create table departamento1(
cod_depart int primary key identity(1,1),
cod_paquete int,
nombre varchar(255),
);
ALTER TABLE departamento1 add constraint FK_departamento_paquete foreign key (cod_paquete) REFERENCES paquete(cod_paquete);