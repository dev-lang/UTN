-- fix db 

-- PASO 1
-- Se agregan columnas faltantes en Profesores
ALTER TABLE Profesores ADD Pro_Apellido char(50);
ALTER TABLE Profesores ADD Pro_FecNac datetime;
-- 

-- SELECT * FROM Profesores;

-- PASO 2 (MS SQL)
-- cambiar nombre de CarrerasMaterias, CursosAlumnos y MateriasProfesores para que incluya un _ como separador
-- DEBERÁ DESCONECTAR Y VOLVER A CONECTARSE AL SERVIDOR PARA QUE LOS CAMBIOS SE VEAN EN EL EXPLORADOR DE OBJETOS
-- IGNORAR LOG DE PRECAUCIÓN


EXEC sp_rename 'CarrerasMaterias', 'Carreras_Materias'
EXEC sp_rename 'CursosAlumnos', 'Cursos_Alumnos'
EXEC sp_rename 'MateriasProfesores', 'Materias_Profesores'

-- PASO 3 (MS SQL)
-- Se cambia el nombre de Alumno.Alu_FechaIngreso a Alu_FecIngreso
-- DEBERÁ ACTUALIZAR LA DB PARA QUE LOS CAMBIOS SE VEAN EN EL EXPLORADOR DE OBJETOS
-- IGNORAR LOG DE PRECAUCIÓN

EXEC sp_rename 'Alumnos.Alu_FechaIngreso', 'Alu_FecIngreso', 'COLUMN';
