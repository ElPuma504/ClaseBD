CREATE DATABASE tarea;

USE tarea;

Create table estudiante(
num_cuenta int primary key not null,
nombre varchar(255) not null,
fecha datetime not null,
telefono int
);

create table asignatura(
cod_asignatura int primary key identity(1,1),
nombre Varchar(255) not null,
asignatura varchar (255) not null,
unidades int not null
);

create table estud_asignatura(
num int primary key not null identity (1,1),
num_cuenta int foreign key references estudiante(num_cuenta),
cod_asignatura int foreign key references asignatura(cod_asignatura),
);
create table profesor(
iddocente int primary key not null identity (1,1),
cod_asignatura int not null,
nombre varchar(255) not null,
telefono int not null
);
ALTER TABLE profesor add constraint FK_profesor_asignatura foreign key (cod_asignatura) REFERENCES asignatura(cod_asignatura);