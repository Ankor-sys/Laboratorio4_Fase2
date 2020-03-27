create database Planilla_Bd;
use Planilla_Bd;

create table concepto_7960(
codigo_concepto varchar(5) primary key,
nombre_concepto varchar(60),
efecto_concepto varchar(1),
estatus_concepto varchar(1)
)engine InnoDB default charset = latin1;

create table empleado_7960(
codigo_empleado varchar(5) primary key,
nombre_empleado varchar(60) not null,
codigo_puesto varchar(5) not null, 
codigo_departamento varchar(5) not null,
sueldo_empleado float(10,2),
estatus_empleado varchar(1),
foreign key (codigo_puesto) references puesto_7960(codigo_puesto),
foreign key (codigo_departamento) references departamento_7960(codigo_departamento)
)engine InnoDB default charset = latin1;


create table departamento_7960(
codigo_departamento varchar(5) primary key,
nombre_departamento varchar(60),
estatus_departamento varchar(1)
)engine InnoDB default charset = latin1;

create table puestos_7960(
codigo_puesto varchar(5) primary key,
nombre_puesto varchar(60),
estatus_puesto varchar(1)
)engine InnoDB default charset = latin1;

create table nominae_7960(
codigo_nominae varchar(5) primary key,
fecha_inicial_nomina date,
fecha_final_nomina date
)engine InnoDB default charset = latin1;

create table nominad_7960(
codigo_nomina varchar(5) primary key,
codigo_empleado varchar(5) primary key,
codigo_concepto varchar(5) primary key,
valor_nominaD float(10,2),
foreign key (codigo_nomina) references nominae_7960(codigo_nomina),
foreign key (codigo_empleado) references empleado_7960(codigo_empleado),
foreign key (codigo_concepto) references concepto_7960(codigo_concepto)
)engine InnoDB default charset = latin1;
