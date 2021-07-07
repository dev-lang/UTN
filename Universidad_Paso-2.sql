USE UTN;

-- alterar tabla destino para agregar constraint, no la "source"
-- agrega un foreign key DESTINO_ORIGEN
-- referencia el foreign (destino) al origen (primary key)

-- 1
ALTER TABLE Materias
ADD CONSTRAINT FK_Materias_Departamentos
FOREIGN KEY (Dep_Codigo) REFERENCES Departamentos(Dep_Codigo)
-- 2
ALTER TABLE CursosAlumnos
ADD CONSTRAINT FK_CursosAlumnos_Cursos
FOREIGN KEY (Alu_Legajo) REFERENCES Alumnos(Alu_Legajo)
-- 3
ALTER TABLE CarrerasMaterias
ADD CONSTRAINT FK_CarrerasMaterias_Carreras
FOREIGN KEY (Car_Codigo) REFERENCES Carreras(Car_Codigo)
-- 4
ALTER TABLE CarrerasMaterias
ADD CONSTRAINT FK_CarrerasMaterias_Materias
FOREIGN KEY (Mat_Codigo) REFERENCES Materias(Mat_Codigo)
-- 5
-- ? doble pk? (puede ser por mi version o algo hice mal?)
ALTER TABLE MateriasProfesores
ADD CONSTRAINT FK_MateriasProfesores_Materias
FOREIGN KEY (Mat_Codigo) REFERENCES Materias(Mat_Codigo)
-- 6
ALTER TABLE MateriasProfesores
ADD CONSTRAINT FK_MateriasProfesores_Profesores
FOREIGN KEY (Pro_Legajo) REFERENCES Profesores(Pro_Legajo)
-- 7
ALTER TABLE Cursos
ADD CONSTRAINT FK_Cursos_Profesores
FOREIGN KEY (Pro_Legajo) REFERENCES Profesores(Pro_Legajo)

--8
ALTER TABLE CursosAlumnos
ADD CONSTRAINT FK_CursosAlumnos_Alumnos
FOREIGN KEY (Cur_Codigo) REFERENCES Cursos(Cur_Codigo)
