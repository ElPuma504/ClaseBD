CREATE DATABASE tarea2;

use tarea2;

create table arbitro(

pasaportearbitro varchar(255) primary key,
nacionalidad varchar(255) not null,
nyarbitro varchar(255) not null,
pasaporte_new varchar(255) foreign key references arbitro(pasaportearbitro),
);

create table partido(

idpartido int primary key identity(1,1),
pasaportearbitro varchar(255),
nombreestadio varchar(255),
instancia varchar,
fecha time,
);

create table estadio(
nombre varchar(255) primary key,
ciudad varchar(255),
capacidadMax varchar(255),

);
create table aficionado(
noticket int primary key identity(1,1),
vestimenta varchar(255) not null,
ubicacion varchar (255) not null,

);
create table estadio_aficionado(
nombre varchar(255) foreign key references estadio(nombre),
noticket int foreign key references aficionado(noticket),
PRIMARY KEY(nombre,noticket),
);
create table equipo(
nombreseleccion varchar(255) primary key,
nombredt varchar(255) not null,
lugarentrenamiento varchar(255) not null,
miembroeqtecnico varchar(255) not null,
);
create table partido_equipo(
idpartido int foreign key references partido(idpartido),
nombreseleccion varchar(255) foreign key references equipo(nombreseleccion),
PRIMARY KEY(idpartido,nombreseleccion),

);
create table jugador(
Nrocamiseta int primary key identity(1,1),
Nombreseleccion varchar(255),
posicion varchar(255),
nyap varchar(255),
apodo varchar(255),
);
ALTER TABLE jugador add constraint FK_jugador_equipo foreign key(Nombreseleccion) REFERENCES equipo(nombreseleccion);