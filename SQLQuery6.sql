USE tarea;

create table ciudad(
codigo_postal int primary key identity(1,1),
nombre varchar(255),
);
create table farmacia(
id int primary key identity(1,1),
direccion varchar(255),
dias datetime,
);

create table empleado(
ids int primary key identity(1,1),
id int,
nombre varchar(255),
fechaingreso datetime,
enfermedades varchar(255),
);
ALTER TABLE empleado add constraint FK_empleado_farmacia foreign key (id) REFERENCES farmacia(id);

create table laboratorio(
nombrelab varchar(255) primary key,
domicilio varchar(255),
nombre varchar(255),
apellido varchar(255),

);
create table medicamento(
nombr1 varchar(255) primary key,
nombrelab varchar(255),
presentacion varchar(255) not null,
precio int not null,
);
ALTER TABLE medicamento add constraint FK_medicamento_laboratorio foreign key(nombrelab) REFERENCES laboratorio(nombrelab);

create table farmacia_medicamento(
id int foreign key references farmacia(id),
nombr1 varchar(255) foreign key references medicamento(nombr1),
PRIMARY KEY(id,nombr1),
);

create table componente(
nombrecientifico varchar(255) primary key,
nombre varchar(255),
nombrecomercial varchar(255),
cantidad int not null,
);
ALTER TABLE componente add constraint FK_componenete_medicamento foreign key (nombre) REFERENCES medicamento(nombr1);

create table accionterapeutica(
nombre varchar(255) primary key,
nombr1 varchar(255) not null,
tiempo datetime not null,
);
ALTER TABLE accionterapeutica add constraint FK_accion_medicamento foreign key (nombr1) References medicamento(nombr1);