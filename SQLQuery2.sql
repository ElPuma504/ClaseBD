
USE tarea;

create table ciudadano(
id int primary key identity(1,1),
nombre varchar(255) not null,
telefono int not null,
salario int not null

);

create table municipio(
codigo_municipio int primary key identity(1,1),
nombre_municipio varchar(255) not null,
);
create table localidad(
codigo_localidad int primary key identity(1,1),
id int,
codigo_municipio int,
nombre varchar(255)
);
ALTER TABLE localidad add constraint FK_localidad_ciudadano foreign key(id) REFERENCES ciudadano(id);
ALTER TABLE localidad add constraint FK_municipio_ciudadano foreign key(codigo_municipio) REFERENCES municipio(codigo_municipio);

create table departamento(
codigo int primary key identity(1,1),
codigo_municipio int,
nombre_Departamento varchar(255)
);
ALTER TABLE departamento add constraint FK_municipio_departamento foreign key(codigo_municipio) REFERENCES municipio(codigo_municipio);
