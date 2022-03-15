USE tarea2;

create table cupon(
numero int primary key identity(1,1),
hora time not null,
importe varchar(255),
fecha date not null,
numero_cupon int foreign key references cupon(numero),

);
create table cliente(
dni int primary key identity(1,1),
nombre varchar(255) not null,
email varchar(255) not null,
telefono int not null,

);
create table cupon_cliente(
numero int foreign key references cupon(numero),
dni int foreign key references cliente(dni),
PRIMARY KEY(numero,dni),
);
create table producto(
codproducto int not null,
precioventa int not null,
dimensiones int not null,

);

create table proveedor(
cuit int primary key identity(1,1),
razonsocial varchar(255),
telefono int not null,

);

create table producto_proveedor(
cuit int foreign key references proveedor(cuit),
PRIMARY KEY(cuit),
);