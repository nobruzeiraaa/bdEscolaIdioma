USE bdEscolaIdiomas

SET IDENTITY_INSERT tbAluno ON

INSERT INTO tbAluno
(codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES
(1, 'Paulo Santos', CONVERT(DATETIME,'10-03-2000',105), '82.282.122-0', 'SP')

INSERT INTO tbAluno
(codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES
(2, 'Maria da Gloria', CONVERT(DATETIME,'03-10-1999',105), '45.233.123-0', 'SP')

INSERT INTO tbAluno
(codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES
(3, 'Pedro Nogueira da Silva', CONVERT(DATETIME,'04-04-1998',105), '23.533.211-9', 'SP')

INSERT INTO tbAluno
(codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES
(4, 'Gilson Barros Silva', CONVERT(DATETIME,'09-09-1995',105), '34.221.111-X', 'PE')

INSERT INTO tbAluno
(codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES
(5, 'Mariana Barbosa Santos', CONVERT(DATETIME,'10-10-2001',105), '54.222.122-9', 'RJ')

INSERT INTO tbAluno
(codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES
(6, 'Alessandro Pereira', CONVERT(DATETIME,'11-10-2003',105), '24.402.454-9', 'ES')

INSERT INTO tbAluno
(codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno)
VALUES
(7, 'Aline Melo', CONVERT(DATETIME,'08-10-2001',105), '88.365.012-3', 'RJ')

SET IDENTITY_INSERT tbAluno OFF

SET IDENTITY_INSERT tbCurso ON 

INSERT INTO tbCurso
(codCurso, nomeCurso, cargahorariaCurso, valorCurso)
VALUES
(1, 'Inglês', 2000, 356)

INSERT INTO tbCurso
(codCurso, nomeCurso, cargahorariaCurso, valorCurso)
VALUES
(2, 'Alemão', 3000, 478)

INSERT INTO tbCurso
(codCurso, nomeCurso, cargahorariaCurso, valorCurso)
VALUES
(3, 'Espanhol', 4000, 500)

SET IDENTITY_INSERT tbCurso OFF

SET IDENTITY_INSERT tbTurma ON

INSERT INTO tbTurma
(codTurma, nomeTurma, codCurso, horarioTurma)
VALUES
(1, '1|A', 1, '12:00:00 PM')

INSERT INTO tbTurma
(codTurma, nomeTurma, codCurso, horarioTurma)
VALUES
(2, '1|C', 3, '18:00:00 PM')

INSERT INTO tbTurma
(codTurma, nomeTurma, codCurso, horarioTurma)
VALUES
(3, '1|B', 1, '18:00:00 PM')

INSERT INTO tbTurma
(codTurma, nomeTurma, codCurso, horarioTurma)
VALUES
(4, '1AA', 2, '19:00:00 PM')

SET IDENTITY_INSERT tbTurma OFF

SET IDENTITY_INSERT tbMatricula ON

INSERT INTO tbMatricula
(codMatricula, dataMatricula, codAluno, codTurma)
VALUES
(1, CONVERT(DATETIME,'03-10-2015',105), 1, 1)

INSERT INTO tbMatricula
(codMatricula, dataMatricula, codAluno, codTurma)
VALUES
(2, CONVERT(DATETIME,'04-05-2016',105), 5, 1)

INSERT INTO tbMatricula
(codMatricula, dataMatricula, codAluno, codTurma)
VALUES
(3, CONVERT(DATETIME,'04-05-2014',105), 2, 4)

INSERT INTO tbMatricula
(codMatricula, dataMatricula, codAluno, codTurma)
VALUES
(4, CONVERT(DATETIME,'03-05-2012',105), 3, 2)

INSERT INTO tbMatricula
(codMatricula, dataMatricula, codAluno, codTurma)
VALUES
(5, CONVERT(DATETIME,'03-03-2016',105), 6, 2)

INSERT INTO tbMatricula
(codMatricula, dataMatricula, codAluno, codTurma)
VALUES
(6, CONVERT(DATETIME,'07-05-2016',105), 4, 2)

INSERT INTO tbMatricula
(codMatricula, dataMatricula, codAluno, codTurma)
VALUES
(7, CONVERT(DATETIME,'05-07-2015',105), 7, 3)

SET IDENTITY_INSERT tbMatricula OFF
