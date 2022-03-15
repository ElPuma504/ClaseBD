USE tarea;

create table cliente1(
id int primary key identity(1,1),
nombre varchar(255) not null,
apellido varchar(255),
fecha datetime
);

create table producto(
codigo int primary key identity(1,1),
nombre varchar(255),
preciounitario int not null,
);

create table cliente_producto(
id int foreign key references cliente1(id),
codigo int foreign key references producto(codigo)
PRIMARY KEY(id,codigo),
);
create table proveedor(
rtn int primary key identity(1,1),
codigo int,
nombre varchar(255),
direccion varchar(255),
);
ALTER TABLE proveedor add constraint FK_proveedor_producto foreign key (codigo) REFERENCES producto(codigo);