--- 16-10-2023 09:13:15
--- PostgreSQL
DROP TABLE demo;

--- 16-10-2023 09:13:20
--- PostgreSQL
CREATE TABLE disciplinas (
  id_disciplina SERIAL PRIMARY KEY,
  nome_disciplina VARCHAR(50) NOT NULL,
  nome_professor VARCHAR(50) NOT NULL
);

--- 16-10-2023 09:18:12
--- PostgreSQL
CREATE TABLE alunos (
  id_alunos SERIAL PRIMARY KEY,
  nome_alunos VARCHAR(50) NOT NULL,
  disciplinas_id INT,
  CONSTRAINT disciplinas_fk FOREIGN KEY (disciplinas_id) REFERENCES disciplinas (id_disciplina)
);

--- 16-10-2023 09:20:08
--- PostgreSQL
INSERT INTO disciplinas(nome_disciplina,nome_professor) VALUES ('Banco de dados', 'Maria Alves');
INSERT INTO disciplinas(nome_disciplina,nome_professor) VALUES ('Python', 'Pietro Souza');
INSERT INTO disciplinas(nome_disciplina,nome_professor) VALUES ('POO', 'Bia Tavares');

--- 16-10-2023 09:22:07
--- PostgreSQL
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Cleiton', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Carol', null);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Ruan', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Gabi', 1);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Rian', NULL);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Mia', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Malu', 1);

--- 16-10-2023 09:23:43
--- PostgreSQL
SELECT nome_alunos, nome_disciplina FROM alunos INNER JOIN disciplinas ON disciplinas.id_disciplina = alunos.disciplinas_id;

--- 16-10-2023 09:26:29
--- PostgreSQL
SELECT nome_alunos, nome_disciplina FROM alunos LEFT JOIN disciplinas ON disciplinas.id_disciplina = alunos.disciplinas_id;

--- 16-10-2023 09:26:43
--- PostgreSQL
SELECT nome_alunos, nome_disciplina FROM alunos RIGHT JOIN disciplinas ON disciplinas.id_disciplina = alunos.disciplinas_id;

--- 16-10-2023 09:27:26
--- PostgreSQL
SELECT nome_alunos, nome_disciplina FROM alunos RIGHT JOIN disciplinas ON disciplinas.id_disciplina = alunos.disciplinas_id UNION 
SELECT nome_alunos, nome_disciplina FROM alunos LEFT JOIN disciplinas ON disciplinas.id_disciplina = alunos.disciplinas_id;

