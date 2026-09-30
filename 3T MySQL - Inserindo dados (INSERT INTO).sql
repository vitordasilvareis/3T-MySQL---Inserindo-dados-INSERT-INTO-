create database if not exists clinica_nome
default character set utf8mb4
--  anotações
collate utf8mb4_0900_ai_ci; 
use clinica_nome;

create table if not exists paciente (
	id int primary key auto_increment,
    nome varchar(30) not null,
    data_nascimento date,
    altura decimal(3,2),
    status_cadastro boolean,
    genero enum ('M','F','OUTRO')
) character set utf8mb4;

-- Atividade 01: inserir mais 5 registros de paciente (código completo) igual exemplo

INSERT INTO paciente (nome, data_nascimento, altura, status_cadastro, genero) VALUES
('Carlos Silva', '1985-04-12', 1.75, TRUE, 'M'),
('Mariana Santos', '1993-09-22', 1.62, TRUE, 'F'),
('Alex Souza', '2000-01-05', 1.80, TRUE, 'OUTRO'),
('Beatriz Costa', '1978-11-30', 1.58, FALSE, 'F'),
('Ricardo Oliveira', '1990-07-15', 1.85, TRUE, 'M');




-- Atividade 02 inserir mais 5 registros de médico (código completo) igual exemplo
INSERT INTO medico (nome) VALUES
('Dr. Arnaldo Ribeiro'),
('Dra. Carolina Lima'),
('Dr. Fernando Prado'),
('Dra. Juliana Mendes'),
('Dr. Roberto Albuquerque');

-- Atividade 03: Cadastrar (código completo) igual exemplo

INSERT INTO consulta (data_time, id_paciente, id_medico) VALUES
('2026-10-01 14:00:00', 1, 1), -- Carlos com Dr. Arnaldo
('2026-10-01 15:30:00', 2, 2), -- Mariana com Dra. Carolina
('2026-10-02 09:00:00', 3, 3), -- Alex com Dr. Fernando
('2026-10-02 10:30:00', 4, 4), -- Beatriz com Dra. Juliana
('2026-10-03 16:00:00', 5, 5); -- Ricardo com Dr. Roberto
