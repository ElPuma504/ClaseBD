USE tarea2;

create table autor(
nombre varchar(255) primary key,
nacionalidad varchar(255) not null,
añodenacimiento varchar(255) not null

);

create table libro(
titulo varchar(255) primary key,
genero varchar(5) not null,
reseñas varchar(255) not null,


);
create table autor_libro(
nombre varchar(255) foreign key references autor(nombre),
titulo varchar(255) foreign key references libro(titulo),
PRIMARY KEY(nombre,titulo),


);
Create table isbn(

isbn varchar(255) primary key,
titulo varchar(255) not null,
año date not null,
idioma varchar(10) not null,
);
ALTER TABLE isbn add constraint FK_isbn_titulo foreign key (titulo) references libro(titulo);

create table copia(
numero int primary key identity(1,1),
isbn varchar(255),
);

ALTER TABLE copia add constraint FK_copia_edicion foreign key (isbn) references edicion(isbn);

create table usuario(
dni int primary key identity(1,1),
email varchar(20),
nombre varchar(255),
apellido varchar(255),

);
create table usuario_copia(
dni int foreign key references usuario(dni),
numero int foreign key references copia(numero),
PRIMARY KEY(dni,numero),
);
