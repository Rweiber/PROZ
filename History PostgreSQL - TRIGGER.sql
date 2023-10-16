
--- 16-10-2023 11:54:20
--- PostgreSQL
CREATE TABLE disciplinas (
  id_disciplina SERIAL PRIMARY KEY,
  nome_disciplina VARCHAR(50) not NULL,
  nome_professor VARCHAR(50) not NULL
  );

--- 16-10-2023 11:54:31
--- PostgreSQL
CREATE TABLE alunos (
  id_alunos SERIAL PRIMARY KEY,
  nome_alunos VARCHAR(50) NOT NULL,
  disciplinas_id INT,
  CONSTRAINT disciplinas_fk FOREIGN KEY (disciplinas_id) REFERENCES disciplinas (id_disciplina)
);

--- 16-10-2023 11:54:38
--- PostgreSQL
INSERT INTO disciplinas(nome_disciplina,nome_professor) VALUES ('Banco de dados', 'Maria Alves');
INSERT INTO disciplinas(nome_disciplina,nome_professor) VALUES ('Python', 'Pietro Souza');
INSERT INTO disciplinas(nome_disciplina,nome_professor) VALUES ('POO', 'Bia Tavares');

--- 16-10-2023 11:54:47
--- PostgreSQL
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Cleiton', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Carol', null);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Ruan', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Gabi', 1);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Rian', NULL);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Mia', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Malu', 1);

--- 16-10-2023 11:54:57
--- PostgreSQL
CREATE OR REPLACE FUNCTION verifica_disciplina() RETURNS TRIGGER AS $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM disciplinas WHERE id_disciplina = NEW.disciplinas_id) THEN
    RAISE EXCEPTION 'Disciplina não encontrada: %', NEW.disciplinas_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER alunos_disciplina_trigger
BEFORE INSERT ON alunos
FOR EACH ROW
EXECUTE FUNCTION verifica_disciplina();

--- 16-10-2023 11:56:23
--- PostgreSQL
/***** ERROR ******
db error: ERROR: Disciplina não encontrada: 999
 ----- 
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Teste', 999);
*****/

