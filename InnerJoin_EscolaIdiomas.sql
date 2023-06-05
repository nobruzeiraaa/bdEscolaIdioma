--1)Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem

SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
INNER JOIN tbMatricula ON
tbAluno.codAluno = tbMatricula.codAluno

INNER JOIN tbTurma ON
tbMatricula.codTurma = tbTurma.codTurma

INNER JOIN tbCurso ON
tbTurma.codCurso = tbCurso.codCurso

--2)Apresentar a quantidade de alunos matriculados por nome do curso

SELECT COUNT(tbAluno.codAluno) AS 'Quantidade de Alunos', nomeCurso AS 'Curso' FROM tbAluno 
INNER JOIN tbMatricula ON
tbAluno.codAluno = tbMatricula.codAluno

INNER JOIN tbTurma ON
tbMatricula.codTurma = tbTurma.codTurma

INNER JOIN tbCurso ON
tbTurma.codCurso = tbCurso.codCurso

GROUP BY nomeCurso

--3)Apresentar a quantidade de alunos matriculados por nome da turma

SELECT COUNT(tbAluno.codAluno) AS 'Quantidade de Alunos', nomeTurma AS 'Turma' FROM tbAluno 
INNER JOIN tbMatricula ON
tbAluno.codAluno = tbMatricula.codAluno

INNER JOIN tbTurma ON
tbMatricula.codTurma = tbTurma.codTurma

GROUP BY nomeTurma

--4)Apresentar a quantidade de alunos que fizeram matricula em maio de 2016

SELECT COUNT(tbAluno.codAluno) AS 'Quantidade de Alunos', dataMatricula FROM tbAluno 
INNER JOIN tbMatricula ON
tbAluno.codAluno = tbMatricula.codAluno
WHERE dataMatricula BETWEEN '01-05-2016' AND '31-05-2016'
GROUP BY dataMatricula 

--5)Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas em que estão matriculados

SELECT nomeAluno AS 'Aluno', nomeTurma AS 'Turma' FROM tbAluno 
INNER JOIN tbMatricula ON
tbAluno.codAluno = tbMatricula.codAluno

INNER JOIN tbTurma ON
tbMatricula.codTurma = tbTurma.codTurma

ORDER BY nomeAluno ASC

--6)Apresentar o nome dos cursos e os horários em que eles são oferecidos

SELECT nomeCurso AS 'Curso', horarioTurma AS 'Horário' FROM tbCurso
INNER JOIN tbTurma ON
tbCurso.codCurso = tbTurma.codCurso

--7)Apresentar a quantidade de alunos nascidos por estado

SELECT COUNT(codAluno) AS 'Quantidade de Alunos', naturalidadeAluno AS 'Estado' FROM tbAluno
GROUP BY naturalidadeAluno

--8)Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa

SELECT nomeAluno AS 'Aluno',  CONVERT(VARCHAR(10),dataMatricula,103) AS 'Data da Matrícula' FROM tbAluno 
INNER JOIN tbMatricula ON
tbAluno.codAluno = tbMatricula.codAluno

--9)Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês

SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
INNER JOIN tbMatricula ON
tbAluno.codAluno = tbMatricula.codAluno

INNER JOIN tbTurma ON
tbMatricula.codTurma = tbTurma.codTurma

INNER JOIN tbCurso ON
tbTurma.codCurso = tbCurso.codCurso

WHERE nomeCurso LIKE 'I%' AND nomeAluno LIKE 'A%'


--10)Apresentar a quantidade de matriculas feitas no ano de 2016

SELECT COUNT(codMatricula) AS 'Quantidade de Matriculas' FROM tbMatricula
WHERE YEAR (dataMatricula) = 2016
GROUP BY codMatricula
