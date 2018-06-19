create database Icbf
use Icbf

create table Rol(
	idRol		int not null primary key identity(1,1),
    nombreRol	varchar(50),
    descripcion text
);

insert into Rol (nombreRol,descripcion)
values ('Administrador', 'Admin del sistema');
insert into Rol 
values ('MadreComunitaria', 'Persona encargada de niños en el jardín');
insert into Rol 
values ('Acudiente', 'Representante del niño, ya sea padre, madre u otra persona que legalmente lo represente');
select * from Rol;

create table Persona(
	Cedula		bigint not null primary key,
    Nombres		varchar(45) not null,  
	FechaNacimiento date not null,  
    Telefono	varchar(15) not null,
    Celular		varchar(10) not null,
    Direccion	varchar(50) not null,
    Correo		varchar(50) not null,
	Clave		varchar(10) not null,
    idRol		int not null
);
alter table Persona add foreign key (idRol) references Rol(idRol) on delete cascade
insert into Persona 
values(1015, 'Blanca Castro', '12/12/1995', '1234567', '300300000', 'Cra 20 10-50', 'baro@gmail.com', '123',1)
insert into Persona 
values(1013, 'Catalina Casas', '12/12/1990', '1232067', '3003012000', 'Cra 30 10-80', 'cata@gmail.com', '123',2)
insert into Persona 
values(1012, 'Carlos Castro', '12/12/1989', '1238067', '300280000', 'Cra 200 100-50', 'carlos@gmail.com', '123',3)
insert into Persona 
values(1014, 'Marina Castro', '12/12/1980', '1237067', '301580000', 'Cra 68 100-50', 'marina@gmail.com', '123',2)
insert into Persona 
values(1020, 'Emilce Rodriguez', '12/12/1999', '1238067', '311280000', 'Calle 68 100-50', 'emilce@gmail.com', '123',3)


create table Registro_Jardin
(
IdJardin			int Primary key not null identity(1,1),
NombreJardin		varchar(50) not null,
DireccionJardin		varchar(50) not null,
EstadoJardin		varchar(30)not null,
IdMadreComunitaria	bigint not null,
)
---------Se crea la llave foranea del IdMadreComunitaria en la tabla registro jardin, para vincularlo a una madre
---------Relacion uno a muchos, un jardin, varias madres comunitarias
alter table Registro_Jardin add foreign key (IdMadreComunitaria) references Persona(Cedula) on delete cascade
insert into Registro_Jardin 
values ('Rayito de amor', 'Cra 100 10-15', 'Aprobado', 1013);
insert into Registro_Jardin 
values ('Pequeños gigantes', 'Cra 68 10-20', 'Aprobado', 1014);

select * from Registro_Jardin;

create table RegistroNinios
(
RegistroNIUP		Bigint primary key not null,
Nombre				varchar (50) not null,
FechaNac			dateTime     not null,
TipoSangre			varchar (10) not null,
CiudadNacimiento	varchar (50) not null,
DocAcudiente		Bigint       not null,
Telefono			varchar (20) not null,
Direccion			varchar (50) not null,
EPS					varchar (50) not null,
IdJardin			int,
) 
--- Creo la relacion uno a muchos de las tablas jardin y niños
alter table RegistroNinios add foreign key (IdJardin) references Registro_Jardin (IdJardin) on delete cascade
alter table RegistroNinios add foreign key (DocAcudiente) references  Persona (Cedula) on delete cascade

insert into RegistroNinios 
values (100, 'Juan Castro', '12-12-2012', 'O+', 'Bogotá', 1012, '1234577', 'Cra 68  50-10', 'Compensar', 2)
insert into RegistroNinios 
values (101, 'Vanesa Castro', '12-12-2015', 'O+', 'Bogotá', 1020, '1234467', 'Cra 68  15-10', 'Cafam', 1)
insert into RegistroNinios 
values (102, 'Carlos Perez', '12-12-2016', 'O+', 'Bogotá', 1012, '1234577', 'Cra 68  50-10', 'Compensar', 2)
insert into RegistroNinios 
values (103, 'Vanesa Pineda', '12-12-2015', 'O+', 'Bogotá', 1020, '1234467', 'Cra 68  15-10', 'Cafam', 1)

select * from RegistroNinios;

-----Creamos la Tabla de Asistencia y su relacion con la tabla niños

create table Registro_Asistencia 
(
idRegistro		bigint primary Key identity(1,1) not null,
IdNinio			bigint not null,
fecha			datetime not null,
DesEstadoNinio	text
)
alter table Registro_Asistencia add foreign key (IdNinio) references RegistroNinios (RegistroNIUP) on delete cascade

insert into Registro_Asistencia 
values (100, '10/05/2018', 'En buenas condiciones de salud');
insert into Registro_Asistencia 
values (101, '18/05/2018', 'En buenas condiciones de salud');
insert into Registro_Asistencia 
values (102, '17/05/2018', 'En buenas condiciones de salud');
insert into Registro_Asistencia 
values (103, '18/05/2018', 'En buenas condiciones de salud');

SELECT * FROM Registro_Asistencia;

create table Registro_Avance_Academico
(
CodRegistro			Bigint primary key not null identity(1,1),
idNinio				bigint not null,
AnioEscolar			int not null,
Nivel				varchar(50) not null,
Notas				varchar(20) not null,
Descripcion			text not null,
FechaEntregaNota	datetime not null
)

alter table Registro_Avance_Academico add foreign key (idNinio) references RegistroNinios (RegistroNIUP) on delete cascade

insert into Registro_Avance_Academico
values (100, 2017, 'Parvulos', '10, 8, 9', 'Muy activo en todas las actividades', '12-05-2017');
insert into Registro_Avance_Academico
values (101, 2017, 'Parvulos', '10, 8, 9', 'Muy activo en todas las actividades', '12-05-2017');
insert into Registro_Avance_Academico
values (102, 2017, 'Parvulos', '10, 8, 9', 'Muy activo en todas las actividades', '12-05-2017');
insert into Registro_Avance_Academico
values (103, 2017, 'Parvulos', '10, 8, 9', 'Muy activo en todas las actividades', '12-05-2017');

SELECT * FROM Registro_Avance_Academico go

--PROCEDIMIENTO ALMACENADO PARA VALIDAR USUARIO Y CLAVE--

CREATE PROCEDURE SP_LOGIN 
	@Correo varchar(50),
	@Clave varchar(10)
AS
BEGIN
	SELECT Nombres, Correo FROM Rol R 
	INNER JOIN Persona P on R.idRol = P.idRol

	WHERE P.Correo=@Correo and P.Clave=@Clave
END
GO
--CALL SP_LOGIN ('baro@gmail.com', '123')

ALTER PROCEDURE [dbo].[SP_LOGIN]
	@Correo varchar(50),
	@Clave varchar(10)
AS
BEGIN
	SELECT Nombres, R.idRol, Correo FROM Rol R 
	INNER JOIN Persona P on R.idRol = P.idRol
	WHERE P.Correo=@Correo and P.Clave=@Clave
END
GO
SELECT * FROM PERSONA;