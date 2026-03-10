CREATE TABLE jogador (
id int primary key auto_increment,
nome varchar(15),
numero_camisa int
);

DESCRIBE jogador;


ALTER TABLE jogador ADD altura INT;
ALTER TABLE jogador ADD data_de_nascimento DATE;

DESCRIBE jogador;

DROP TABLE jogador;

SHOW TABLES;

INSERT INTO jogador(nome, numero_camisa,altura,data_de_nascimento) VALUES ('Clark', 10, 170, "2005-11-02");

select * from jogador;

TRUNCATE table jogador;

ALTER table jogador MODIFY numero_camisa VARCHAR(3);  

DESCRIBE jogador;
ALTER table jogador MODIFY numero_camisa VARCHAR(3);  

ALTER TABLE jogador ADD UNIQUE (numero_camisa);
DESCRIBE jogador;
INSERT INTO jogador(nome, numero_camisa,altura,data_de_nascimento) VALUES ('Clark', 10, 170, "2005-11-02");
INSERT INTO jogador(nome, numero_camisa,altura,data_de_nascimento) VALUES ('Clark', 11, 170, "2005-11-02");
select * from jogador;
DESCRIBE jogador;

CREATE TABLE times (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

ALTER TABLE jogador
ADD COLUMN time_id INT NOT NULL;

DESCRIBE jogador;

ALTER TABLE jogador
ADD CONSTRAINT fk_jogador_time
FOREIGN KEY (time_id)
REFERENCES times(id)
ON DELETE CASCADE;

ALTER TABLE jogador
ADD CONSTRAINT uk_time_camisa
UNIQUE (time_id, numero_camisa);


INSERT INTO times (nome) VALUES ('Bahia de Feria');
INSERT INTO times (nome) VALUES ('Feira FC');
INSERT INTO times (nome) VALUES ('Jacuipense');

SELECT * FROM times;


INSERT INTO jogador(nome, numero_camisa, altura, data_de_nascimento, time_id)
VALUES ('Rona', 10, 170, '1987-06-24', 4);

INSERT INTO jogador(nome, numero_camisa, altura, data_de_nascimento, time_id)
VALUES ('Galhardo', 9, 186, '2003-06-29', 5);

INSERT INTO jogador(nome, numero_camisa, altura, data_de_nascimento, time_id)
VALUES ('Kanives', 2, 178, '1998-12-20', 6);

SELECT * FROM jogador;

INSERT INTO jogador(nome, numero_camisa, altura, data_de_nascimento, time_id)
VALUES ('Lucaneta', 10, 180, '2000-01-01', 5);


