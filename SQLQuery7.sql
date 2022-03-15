USE tarea;

create table autor(
codigo_autor int primary key identity(1,1),
nombre varchar(255),
);

create table libro(
codigo int primary key identity(1,1),
titulo varchar(255),
ISBN int not null,
editorial varchar(255),
numeropag int not null,

);

create table autor_libro(
codigo_autor int foreign key references autor(codigo_autor),
codigo int foreign key references libro(codigo),
PRIMARY KEY(codigo_autor,codigo),
);

create table ejemplar(
codigoejemplar int primary key identity(1,1),
codigo int not null,
localizacion varchar not null,
);
ALTER TABLE ejemplar add constraint FK_ejemplar_libro foreign key (codigo) references libro(codigo);

create table usuario(
codigo int primary key identity(1,1),
nombre int not null,
direccion varchar(255) not null,
telefono int not null
);

create table usuario_ejemplar(
codigo int foreign key references usuario(codigo),
codigoejemplar int foreign key references ejemplar(codigoejemplar),
PRIMARY KEY(codigo,codigoejemplar)
);