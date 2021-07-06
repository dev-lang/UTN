Use UTN;
-- drop table Alumnos, Carreras, CarrerasMaterias, Cursos, CursosAlumnos, Departamentos, Materias, MateriasProfesores, Profesores;

create table Alumnos(
	Alu_Legajo numeric(18,0) primary key,
	Alu_Nombre char(50),
	Alu_Apellido char(50),
	Alu_FechaIngreso datetime
)

create table Carreras(
	Car_Codigo char(10) primary key,
	Car_Nombre char(50)
)

create table Materias(
	Mat_Codigo char(10) primary key,
	Mat_Nombre char(50),
	Dep_Codigo char(10)
)

create table CarrerasMaterias(
	Car_Codigo char(10),
	Mat_Codigo char(10),
	primary key (Car_Codigo, Mat_Codigo)
)

create table Cursos(
	Cur_Codigo char(10) primary key,
	Mat_Codigo char(10),
	Pro_Legajo numeric(18,0),
	Cur_Horario char(50),
	Cur_Sede char(10)
)

create table CursosAlumnos(
	Cur_Codigo char(10),
	Alu_Legajo numeric(18,0),
	primary key(Cur_Codigo, Alu_Legajo) 
)

create table Departamentos(
	Dep_Codigo char(10) primary key,
	Dep_Nombre char(50)
)

create table Profesores(
	Pro_Legajo numeric(18,0) primary key,
	Pro_Nombre char(50)
)

create table MateriasProfesores(
	Mat_Codigo char(10) primary key,
	Pro_Legajo numeric(18,0)
)

