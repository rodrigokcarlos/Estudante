CREATE TABLE `Cursos` (
	`CusosId` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255),
	`Disciplina` INT NOT NULL,
	`Turmas` INT NOT NULL,
	`TCC` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`CusosId`)
);

CREATE TABLE `Turmas` (
	`TurmasId` INT NOT NULL AUTO_INCREMENT,
	`Professores` INT NOT NULL,
	`Alunos` INT NOT NULL,
	PRIMARY KEY (`TurmasId`)
);

CREATE TABLE `Alunos` (
	`AlunosId` INT NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Numero` varchar(255) NOT NULL,
	PRIMARY KEY (`AlunosId`)
);

CREATE TABLE `Professores` (
	`ProfessoresId` INT NOT NULL AUTO_INCREMENT,
	`Disciplina` INT NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Numero` varchar(255) NOT NULL,
	PRIMARY KEY (`ProfessoresId`)
);

CREATE TABLE `Disciplina` (
	`DisciplinaId` INT NOT NULL AUTO_INCREMENT,
	`Materia` INT NOT NULL,
	`Nome` varchar(255),
	PRIMARY KEY (`DisciplinaId`)
);

CREATE TABLE `Aula` (
	`AulaId` INT NOT NULL AUTO_INCREMENT,
	`Titulo` varchar(255),
	`Turma` INT NOT NULL,
	PRIMARY KEY (`AulaId`)
);

CREATE TABLE `Materia` (
	`MateriaId` INT NOT NULL AUTO_INCREMENT,
	`Aulas` INT NOT NULL,
	`Nome` varchar(255),
	`Prova` varchar(255) NOT NULL,
	PRIMARY KEY (`MateriaId`)
);

ALTER TABLE `Cursos` ADD CONSTRAINT `Cursos_fk0` FOREIGN KEY (`Disciplina`) REFERENCES `Disciplina`(`DisciplinaId`);

ALTER TABLE `Cursos` ADD CONSTRAINT `Cursos_fk1` FOREIGN KEY (`Turmas`) REFERENCES `Turmas`(`TurmasId`);

ALTER TABLE `Turmas` ADD CONSTRAINT `Turmas_fk0` FOREIGN KEY (`Professores`) REFERENCES `Professores`(`ProfessoresId`);

ALTER TABLE `Turmas` ADD CONSTRAINT `Turmas_fk1` FOREIGN KEY (`Alunos`) REFERENCES `Alunos`(`AlunosId`);

ALTER TABLE `Professores` ADD CONSTRAINT `Professores_fk0` FOREIGN KEY (`Disciplina`) REFERENCES `Disciplina`(`DisciplinaId`);

ALTER TABLE `Disciplina` ADD CONSTRAINT `Disciplina_fk0` FOREIGN KEY (`Materia`) REFERENCES `Materia`(`MateriaId`);

ALTER TABLE `Aula` ADD CONSTRAINT `Aula_fk0` FOREIGN KEY (`Turma`) REFERENCES `Turmas`(`TurmasId`);

ALTER TABLE `Materia` ADD CONSTRAINT `Materia_fk0` FOREIGN KEY (`Aulas`) REFERENCES `Aula`(`AulaId`);








