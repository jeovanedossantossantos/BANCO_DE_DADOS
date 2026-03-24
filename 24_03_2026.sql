create table pessoa (
id int auto_increment primary key unique,
nome varchar(254),
email varchar(254)
);

insert into pessoa(nome,email) values ("Manuel", "manuel@gmail.com"); 
insert into pessoa(nome,email) values ("Plinio", "manuel@gmail.com"); 
select * from pessoa;

update pessoa set email = 'plinio@gmail.com' where id=2;


delete from pessoa where id=1; 
-- COUNT: conta a quantidade de elementos, como usar → SELECT COUNT (*) FROM alunos ;
SELECT COUNT(*) FROM pessoa;
-- AVG: Calcula a média dos valores de uma coluna: como usar → SELECT AVG(idade) FROM alunos;

SELECT AVG(id) FROM pessoa;
-- SUM: Soma os valores de uma coluna:  como usar→ SELECT SUM(idade) FROM alunos;
SELECT sum(id) FROM pessoa;
-- MAX: Pega o maior valor de uma coluna:  como usar → SELECT MAX(idade) FROM alunos;
SELECT max(id) FROM pessoa;
-- MIN: Pega o menor valor de uma coluna: como usar → SELECT MIN(idade) FROM alunos;
SELECT min(id) FROM pessoa;
-- ORDER BY
-- Ordem crescente (ASC):SELECT * FROM alunos ORDER BY nome ASC ;
SELECT * from pessoa ORDER BY nome ASC;
-- Ordem decrescente (DESC): SELECT * FROM alunos ORDER BY idade DESC ;--
SELECT * from pessoa ORDER BY id DESC;
