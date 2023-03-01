CREATE TABLE `Curso` (
	`CursoId` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255),
	`Disciplina` INT NOT NULL,
	`Turma` INT NOT NULL,
	`TCC` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`CursoId`)
);

CREATE TABLE `Turma` (
	`TurmaId` INT NOT NULL AUTO_INCREMENT,
	`Modalidade` varchar(255) NOT NULL,
	`Turno` varchar(255) NOT NULL,
	`Aula` INT NOT NULL,
	PRIMARY KEY (`TurmaId`)
);

CREATE TABLE `Aluno` (
	`AlunoId` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Numero` varchar(255) NOT NULL,
	`Turma` INT NOT NULL,
	PRIMARY KEY (`AlunoId`)
);

CREATE TABLE `Professor` (
	`ProfessorId` INT NOT NULL AUTO_INCREMENT,
	`Disciplina` INT NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Numero` varchar(255) NOT NULL,
	`Turma` INT NOT NULL,
	PRIMARY KEY (`ProfessorId`)
);

CREATE TABLE `Disciplina` (
	`DisciplinaId` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255),
	`Materia` INT NOT NULL,
	PRIMARY KEY (`DisciplinaId`)
);

CREATE TABLE `Aula` (
	`AulaId` INT NOT NULL AUTO_INCREMENT,
	`Titulo` varchar(255),
	PRIMARY KEY (`AulaId`)
);

CREATE TABLE `Materia` (
	`MateriaId` INT NOT NULL AUTO_INCREMENT,
	`Aulas` INT NOT NULL,
	`Nome` varchar(255),
	`Prova` varchar(255) NOT NULL,
	PRIMARY KEY (`MateriaId`)
);

ALTER TABLE `Curso` ADD CONSTRAINT `Curso_fk0` FOREIGN KEY (`Disciplina`) REFERENCES `Disciplina`(`DisciplinaId`);

ALTER TABLE `Curso` ADD CONSTRAINT `Curso_fk1` FOREIGN KEY (`Turma`) REFERENCES `Turma`(`TurmaId`);

ALTER TABLE `Turma` ADD CONSTRAINT `Turma_fk0` FOREIGN KEY (`Aula`) REFERENCES `Aula`(`AulaId`);

ALTER TABLE `Aluno` ADD CONSTRAINT `Aluno_fk0` FOREIGN KEY (`Turma`) REFERENCES `Turma`(`TurmaId`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk0` FOREIGN KEY (`Disciplina`) REFERENCES `Disciplina`(`DisciplinaId`);

ALTER TABLE `Professor` ADD CONSTRAINT `Professor_fk1` FOREIGN KEY (`Turma`) REFERENCES `Turma`(`TurmaId`);

ALTER TABLE `Disciplina` ADD CONSTRAINT `Disciplina_fk0` FOREIGN KEY (`Materia`) REFERENCES `Materia`(`MateriaId`);

ALTER TABLE `Materia` ADD CONSTRAINT `Materia_fk0` FOREIGN KEY (`Aulas`) REFERENCES `Aula`(`AulaId`);








