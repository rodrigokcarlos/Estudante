CREATE TABLE `Cursos` (
	`CusosId` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255),
	`DisciplinaId` bigint NOT NULL,
	`TCC` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`CusosId`)
);

CREATE TABLE `Turmas` (
	`TurmasId` bigint NOT NULL AUTO_INCREMENT,
	`CursosId` bigint NOT NULL AUTO_INCREMENT,
	`ProfessoresId` bigint NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`TurmasId`)
);

CREATE TABLE `Alunos` (
	`AlunosId` bigint NOT NULL,
	`Nome` varchar(255) NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Numero` varchar(255) NOT NULL,
	`TurmasId` bigint NOT NULL
);

CREATE TABLE `Professores` (
	`ProfessoresId` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL,
	`DisciplinaId` bigint NOT NULL,
	`Idade` varchar(255) NOT NULL,
	`Email` varchar(255) NOT NULL,
	`Numero` varchar(255) NOT NULL,
	PRIMARY KEY (`ProfessoresId`)
);

CREATE TABLE `Disciplina` (
	`DisciplinaId` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255),
	`MateriaId` varchar(255) NOT NULL,
	PRIMARY KEY (`DisciplinaId`)
);

CREATE TABLE `Aula` (
	`AulaId` bigint NOT NULL AUTO_INCREMENT,
	`Titulo` varchar(255),
	PRIMARY KEY (`AulaId`)
);

CREATE TABLE `Materia` (
	`MateriaId` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255),
	`Prova` varchar(255) NOT NULL,
	`AulaId` bigint NOT NULL,
	PRIMARY KEY (`MateriaId`)
);

ALTER TABLE `Cursos` ADD CONSTRAINT `Cursos_fk0` FOREIGN KEY (`DisciplinaId`) REFERENCES `Disciplina`(`DisciplinaId`);

ALTER TABLE `Turmas` ADD CONSTRAINT `Turmas_fk0` FOREIGN KEY (`CursosId`) REFERENCES `Cursos`(`CusosId`);

ALTER TABLE `Turmas` ADD CONSTRAINT `Turmas_fk1` FOREIGN KEY (`ProfessoresId`) REFERENCES `Professores`(`ProfessoresId`);

ALTER TABLE `Alunos` ADD CONSTRAINT `Alunos_fk0` FOREIGN KEY (`TurmasId`) REFERENCES `Turmas`(`TurmasId`);

ALTER TABLE `Professores` ADD CONSTRAINT `Professores_fk0` FOREIGN KEY (`DisciplinaId`) REFERENCES `Disciplina`(`DisciplinaId`);

ALTER TABLE `Disciplina` ADD CONSTRAINT `Disciplina_fk0` FOREIGN KEY (`MateriaId`) REFERENCES `Materia`(`MateriaId`);

ALTER TABLE `Materia` ADD CONSTRAINT `Materia_fk0` FOREIGN KEY (`AulaId`) REFERENCES `Aula`(`AulaId`);








