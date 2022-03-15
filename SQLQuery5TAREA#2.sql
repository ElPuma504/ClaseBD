USE tarea2;

create table cliente(
codcliente int primary key identity(1,1),
nombre varchar(255) not null,
apellido varchar(255) not null,
nif int not null,
teleofno int not null,
fechaalta date not null,
numeroat int not null,

);

create table estandar(
nombre varchar(255) not null,
apellido varchar(255) not null,
nif int not null,
teleofno int not null,
fechaalta date not null,
numeroat int not null,
codcliente int,
);
ALTER TABLE estandar add constraint FK_estandar_cliente foreign key(codcliente) references cliente(codcliente);

create table premium(
nombre varchar(255) not null,
apellido varchar(255) not null,
nif int not null,
teleofno int not null,
fechaalta date not null,
numeroat int not null,
codcliente int,
);
ALTER TABLE premium add constraint FK_estandar_cliente foreign key(codcliente) references cliente(codcliente);

create table pedido(
numerolocalizador int primary key identity(1,1),
cod_cliente int not null,
importe varchar(255),

);
ALTER TABLE pedido add constraint FK_pedido_cliente foreign key(cod_cliente) references cliente(codcliente);


create table articulo(
numeroreferencia int primary key identity(1,1),
nombre varchar(255) not null,
descripcion varchar(255) not null,

);
create table almacen(
codalmacen int primary key identity(1,1),
nombre varchar(255) not null,
fechaapertura date not null,
direccion varchar(255) not null,
telefono int not null,
gerente varchar(255) not null,
);

create table almacen_articulo(
codalmacen int foreign key references almacen(codalmacen),
numeroreferencia int foreign key references articulo(numeroreferencia),
PRIMARY KEY(codalmacen,numeroreferencia),
);
create table lineas(
numero int primary key identity(1,1),
importe varchar(255),
numeroreferencia int not null,
);

ALTER TABLE lineas add constraitn FK_lineas_articulo foreign key(numeroreferencia) references articulo(numeroreferencias)

create table pedidos_lineas(
numerolocalizador int foreign key references pedido(numerolocalizador),
numero int foreign key references lineas(numero),
PRIMARY KEY(numerolocalizador,numero),
);

create table provincia(
codprovincia int primary key,
nombre varchar(255),
extension int not null,
codalmacen int not null,
);
ALTER TABLE provincia add constraint FK_provincia_almacen foreign key(nombre) references almacen(nombre);
