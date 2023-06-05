CREATE DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY (1,1),
	nomeAluno VARCHAR (40),
	dataNascAluno DATETIME,
	rgAluno CHAR (12),
	naturalidadeAluno CHAR (2),
	)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1),
	nomeCurso VARCHAR (10),
	cargahorariaCurso INT,
	valorCurso MONEY,
	)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1),
	nomeTurma VARCHAR (5),
	codCurso INT FOREIGN KEY (codCurso) REFERENCES tbCurso (codCurso),
	horarioTurma DATETIME,
	)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1),
	dataMatricula DATETIME,
	codAluno INT FOREIGN KEY (codAluno) REFERENCES tbAluno (codAluno),
	codTurma INT FOREIGN KEY (codTurma) REFERENCES tbTurma (codTurma),
	)