create table Alunos(
ra int,
nome varchar(50),
dataNascimento date,
curso varchar(50));
insert into Alunos values( 1, 'Jos ', '31/01/2000', 'ADS' );�
select * from alunos;
create table Funcionarios(
re int,
nome varchar(50),
salario decimal(15,2),
dataAdmissao date,
primary key(re));
insert into funcionarios values( 100, 'Jo o', 2000, '20/02/2000');�
insert into funcionarios values( 101, 'Jo o', 2000, '20/02/2000');�
insert into funcionarios values( 102, 'Ana', 3000, '20/02/2020');
select * from funcionarios;
create table Produtos(
codigo int,
descricao varchar(100),
preco decimal(15,2),
quantidade int,
primary key(codigo));
insert into produtos values( 1, 'l pis', 2.50, 100 );�
insert into produtos values( 2, 'caneta', 5.49, 200 );
select * from produtos;
drop table Alunos;
create table Alunos(
ra int,
nome varchar(50),
dataNascimento date,
curso varchar(50),
primary key(ra));
create table Telefones(
ra int,
numero varchar(30),
tipo varchar(20),
primary key( ra, numero ),
foreign key( ra ) references Alunos(ra));
select * from Alunos;
insert into Alunos values( 1, 'Aluno', '01/01/2000', 'ADS' );
insert into Telefones values( 1, '(11)91202-3912', 'Celular');
insert into Telefones values( 1, '(11)3033-1234', 'residencial');
insert into Telefones values(1, '(11)2222-1234', 'comercial');
delete from telefones where ra = 1;
delete from Alunos where ra = 1;
create table emails(
ra int,
email varchar(255),
tipo varchar(30),
primary key( ra, email ),
foreign key( ra ) references Alunos(ra) on delete cascade );
insert into Alunos values( 2, 'Fulano', '01/10/2000', 'BCC' );
insert into Alunos values( 3, null, null, null );
select * from alunos;
insert into emails values( 1, 'aluno@teste.com', 'teste' );
insert into emails values( 1, 'aluno@teste1.com', 'teste1' );
insert into emails values( 2, 'fulano@teste.com', 'pessoal' );
delete from alunos where ra = 2;
select * from Alunos;
select * from emails;
create table Veiculos(
codigo int,
marca varchar(50) not null,
modelo varchar(50) not null,
cor varchar(50) not null,
placa char(7) unique,
primary key(codigo));
/* erro */
insert into veiculos values( 1, null, null, null, null );
insert into veiculos values( 1, 'VW', 'Gol', 'Branco', 'ABC1234' );
drop table Funcionarios;
create table Departamentos(
codigo int,
nome varchar(50),
primary key(codigo));
create table Funcionarios(
re int,
nome varchar(50),
salario decimal(15,2),
dataAdmissao date,
coddep int,
primary key(re),
foreign key(coddep) references Departamentos(codigo));
insert into Departamentos values( 1, 'TI' );
insert into Departamentos values( 2, 'RH' );
insert into Departamentos values( 3, 'FI' );
insert into Departamentos values( 4, 'AD' );
select * from Departamentos;
insert into Funcionarios values( 100, 'Jos ', 2000, '03/09/2024', 1 );�
insert into Funcionarios values( 101, 'Jo o', 2500, '01/09/2024', 1 );�
insert into Funcionarios values( 102, 'Ana',3000, '20/08/2024', 1 );
/* erro, pois n o existe departamento com c digo 10 */� �
insert into Funcionarios values( 103, 'teste', 2000, '03/09/2024', 10 );
/* pode haver funcionario sem departamento */
insert into Funcionarios values( 103, 'Teste', 2000, '03/09/2024', null );
create table Cursos(
codigo int,
nome varchar(50),
primary key(codigo));
create table Alunos(
ra int,
nome varchar(50),
dataNascimento date,
codCurso int,
primary key(ra),
foreign key(codCurso) references Cursos(codigo));
insert into Cursos values( 1, 'ADS' );
insert into Cursos values( 2, 'BCC' );
insert into Alunos values( 100, 'Aluno', '01/10/2000', 1 );
insert into Alunos values( 101, 'Aluno1', '05/10/2000', 2 );
insert into Alunos values( 102, 'Aluno2', '02/10/2000', 1 );
/* caso N para N */
create table Materiais(
codigo int,
descricao varchar(50),
quantidade int,
primary key(codigo));
create table Fornecedores(
codigo int,
nome varchar(50),
primary key(codigo));
create table Forncecimentos(
codmat int,
codforn int,
preco decimal(15,2),
primary key( codmat, codforn ),
foreign key(codmat) references Materiais(codigo) on delete cascade,
foreign key(codforn) references Fornecedores(codigo) on delete cascade);
insert into Materiais values( 1, 'L pis', 100 );�
insert into Materiais values( 2, 'Caneta', 150 );
insert into Materiais values( 3, 'borracha', 50 );
insert into fornecedores values( 100, 'ABC' );
insert into fornecedores values( 101, 'XYZ' );
insert into fornecedores values( 102, 'MNB' );
insert into forncecimentos values( 1, 100, 2.00 );
insert into forncecimentos values( 1, 101, 2.20 );
insert into forncecimentos values( 2, 100, 3.00 );
select * from Alunos;
create table Disciplinas(
codigo int,
nome varchar(50),
ch int,
primary key(codigo));
create table Matriculas(
codigo int,
raAluno int,
codDisc int,
nota decimal(5,2),
primary key(CODIGO),
foreign key(raAluno) references Alunos(ra),
foreign key(codDisc) references Disciplinas(codigo));
insert into Disciplinas values( 1000, 'Bancos de Dados', 66 );
insert into Disciplinas values( 1001, 'Algoritmos', 66 );
insert into Disciplinas values( 1002, 'Redes de Computadores', 66 );
insert into Matriculas values( 1, 101, 1000, 8.0 );
insert into Matriculas values( 2, 101, 1001, 7.0 );
insert into Matriculas values( 3, 102, 1000, 8.5 );
select * FROM ALUNOS;
SELECT NOME FROM ALUNOS;
select ra, nome from alunos;
/* DUAL uma tabela virtual que sempre existe�
espec fico do Oracle */�
select 1+2, 'teste' from DUAL;
select nome from funcionarios order by nome;
select nome, salario from funcionarios order by salario desc;
select * from Funcionarios WHERE salario > 2500;
select *
from Funcionarios
WHERE salario >=2500 and salario <= 3000;
select *
from funcionarios
where salario between 2500 and 3000;
select *
from funcionarios
where salario not between 2500 and 3000;
select * from funcionarios where nome > 'B';
select * from Funcionarios where dataadmissao > '01/09/2024';
select * from funcionarios;
insert into Funcionarios values( 5, 'Jos ', 4000,'01/01/2000' 1 );�
insert into Funcionarios values( 6, 'Jo o', 5000, '10/02/2000', 1 );�
insert into Funcionarios values( 7, 'Ana', 6000, '31/03/2000', 2 );
insert into Funcionarios values( 8, 'Mary', 4500, '20/04/2000', 3 );
insert into Funcionarios values( 9, 'Pedro', 5500, '15/05/2000', 1 );
insert into Funcionarios values( 10, 'Marcelo', 4700, '12/06/2000', 1 );
insert into Funcionarios values( 11, 'Lucas', 3000, '11/10/2000', 1 );
select distinct nome from Funcionarios;
select * from Funcionarios where nome LIKE 'J%';
select * from Funcionarios where nome LIKE '%o';
select * from Funcionarios where nome LIKE '%d%';
select * from Funcionarios where nome LIKE '___';
insert into Funcionarios values( 12, 'Teste', 3000, '11/10/2000', null );
select * from funcionarios where coddep is null;
select * from funcionarios where coddep is not null;
select * from Funcionarios, departamentos;
select funcionarios.nome, departamentos.nome
from Funcionarios, departamentos;
select F.nome nome_funcionario, D.nome nome_departamento
from Funcionarios F, departamentos D;
select *
from funcionarios f, departamentos d
where codigo = coddep;
select f.nome, salario, d.nome
from funcionarios f, departamentos d
where codigo = coddep and salario > 5000;
select *
from funcionarios f, departamentos d
where codigo = coddep;
select * from Departamentos;
select *
from funcionarios f, departamentos d
where codigo(+) = coddep;
select *
from funcionarios f, departamentos d
where codigo = coddep (+);
select * from Alunos a, telefones t
where a.ra = t.ra (+);
/* duas formas de fazer a jun o */��
select *
from funcionarios f, departamentos d
where codigo = coddep;
select *
from funcionarios f inner join departamentos d on coddep = codigo;
select *
from funcionarios f inner join departamentos d on coddep = codigo
where salario between 2000 and 4000;
select *
from funcionarios f right outer join departamentos d on coddep = codigo;
select *
from funcionarios f full outer join departamentos d on coddep = codigo;
select nome from alunos;
select nome from funcionarios;
select nome from Alunos
union
select nome from Funcionarios;
select nome from Alunos
union all
select nome from Funcionarios;
select * from Alunos;
insert into Alunos values( 2, 'Jos ', null, 2 );�
select nome from Alunos
intersect
select nome from Funcionarios;
select nome from Funcionarios
minus
select nome from alunos;
create table Carros(
placa char(7),
marca varchar(50),
modelo varchar(50),
cor varchar(50),
cpf char(11),
primary key(placa));
insert into Carros values( 'AAA1234', 'VW', 'Fusca','Branca','12345678900');
insert into Carros values( 'AAA1111', 'VW', 'Kombi','Branca','2222222222');
insert into Carros values( 'AAA2222', 'GM', 'Onix','Prata','12345678900');
insert into Carros values( 'AAA4444', 'Fiat', '500','Preto','33333333333');
select cpf from Carros where marca = 'VW'
intersect
select cpf from Carros where marca = 'GM';
/* exerc cios */�
/* listar nome dos alunos em ordem alfab tica */�
select nome from alunos order by nome;
/* listar todos os dados de funcion rios em ordem de sal rio */� �
select * from funcionarios order by salario desc;
/* listar funcion rios com nome iniciado com 'M' */�
select * from funcionarios where nome like 'M%';
/* listar os funcion rios do departamento de nome 'TI' */�
select * from
funcionarios f, departamentos d
where f.coddep = d.codigo and d.nome='TI';
select * from
funcionarios f inner join departamentos d
on f.coddep = d.codigo
where d.nome='TI';
/* listar todos os alunos e seu respectivo e-mail (se houver) */
select *
from Alunos a, emails e
where a.ra = e.ra(+);
select *
from Alunos a left outer join emails e
on a.ra = e.ra;
select max(salario) from funcionarios;
select min(salario) from funcionarios;
select sum(salario) from funcionarios;
select avg(salario) from funcionarios;
select count(*) from funcionarios;
select count(salario) from funcionarios;
select count(distinct salario) from funcionarios;
select * from Funcionarios;
insert into Funcionarios values( 104, 'John',3000,'24/09/2024',null);
select coddep, sum(salario)
from Funcionarios
group by coddep;
select coddep, sum(salario), avg(salario)
from Funcionarios
group by coddep;
select coddep, sum(salario), avg(salario)
from Funcionarios
where coddep is not null
group by coddep
having sum(salario) > 5000;
select *
from Funcionarios
where coddep in ( select coddep from Departamentos );
select *
from Funcionarios
where coddep not in ( select coddep from Departamentos );
/* solu o alternativa sem intersec o */�� ��
/* cpf que tem carros da marca VW e GM */
select cpf
from carros
where marca = 'VW' and
cpf in ( select cpf from carros where marca='GM' );
select *
from Funcionarios
where coddep in ( select coddep from Departamentos );
select *
from Funcionarios
where coddep in ( 1 ,2 );
select * from funcionarios
where salario >= all ( select salario from funcionarios );
select * from Funcionarios
where salario = (select max(salario) from Funcionarios);
select coddep, sum(salario)
from Funcionarios
group by coddep
having sum(salario) >= all (select sum(salario)
from Funcionarios
group by coddep);
/* exerc cios */�
/*
Listar os dados do aluno mais velho
Listar o produto mais caro
Listar o curso que tem mais alunos
Listar o departamento que tem mais funcionarios
*/
select * from Alunos
where datanascimento <= all
( select datanascimento from Alunos where datanascimento is not null);
select * from Produtos where preco = (select max(preco) from Produtos);
select curso, count(*) from Alunos group by curso
having count(*) >= all(select count(*) from Alunos group by curso);
select coddep, count(*)
from Funcionarios
group by coddep
having count(*) >= all(select count(*)
from Funcionarios
group by coddep);
select * from Funcionarios f where
exists(select * from departamentos where codigo = f.coddep);
delete from Funcionarios;
delete from Funcionarios where salario > 2000;
delete from Funcionarios where re = 5;
delete from Funcionarios
where salario >= (select avg(salario) from Funcionarios);
update Funcionarios
set salario = salario * 1.1;
select * from funcionarios;
update funcionarios
set salario = salario * 1.10
where salario <= 5000;
update funcionarios
set salario = salario * 1.05
where salario > 5000;
/* nesse caso, essa ordem pode gerar dois aumentos para alguns
funcion rios. Devemos inverter os comandos */�
create table Alunos2(
ra int,
nome varchar(50),
datanascimento date,
curso int,
primary key(ra));
delete from alunos where ra = 1;
insert into alunos2 select * from alunos;
create table Pessoas(
codigo int,
nome varchar(50),
codMae int,
primary key(codigo),
foreign key(codMae) references Pessoas(codigo));
insert into Pessoas values( 1, 'AAA', null );
insert into Pessoas values( 2, 'BBB', 1 );
insert into Pessoas values( 3, 'CCC', 1 );
insert into Pessoas values( 4, 'DDD', 2 );
insert into Pessoas(nome,codigo,codMae)
values('EEE',5,3);
/* valores n o definidos ficam vazios */�
insert into Pessoas(nome,codigo)
values('FFF',6);
/* exerc cios de revis o */� �
/* criar o atributo multivalorado telefones
para a tabela de funcion rios */�
select * from Funcionarios;
create table TelefonesF(
re int,
numero varchar(30),
tipo varchar(50),
primary key(re, numero),
foreign key(re) references Funcionarios(re) on delete cascade);
insert into TelefonesF values( 100, '12345', 'fixo' );
insert into TelefonesF values( 100, '65432', 'celular' );
/* para testar os exerc cios SQL */�
create table Fabricantes(
codigo int,
nome varchar(50),
pais varchar(50),
primary key(codigo));
drop table Produtos;
create table Produtos(
codigo int,
descricao varchar(50),
quantidade float,
preco decimal(15,2),
codFabricante int,
primary key(codigo),
foreign key(codFabricante) references Fabricantes(codigo));
insert into fabricantes values( 1, 'AAA', 'Brasil' );
insert into fabricantes values( 2, 'BBB', 'EUA' );
insert into fabricantes values( 3, 'CCC', 'China' );
insert into fabricantes values( 4, 'DDD', 'Brasil' );
insert into fabricantes values( 5, 'EEE', 'Jap o' );�
insert into produtos values (100, 'l pis', 100, 2.00, 1 );�
insert into produtos values (101, 'l pis', 150, 2.10, 2 );�
insert into produtos values (102, 'l pis', 200, 2.20, 3 );�
insert into produtos values (103, 'caneta', 200, 10.00, 1 );
insert into produtos values (104, 'caneta', 300, 11.00, 2 );
insert into produtos values (105, 'papel', 500, 12.00, 1 );
insert into produtos values (106, 'borracha', 50, 1.50, 3 );
insert into produtos values (107, 'clips', 1000, 3.00, 4 );
insert into produtos values (108, 'clips', 2000, 3.50, 3 );
insert into produtos values (109, 'borracha', 70, 2.00, 2 );
insert into produtos values (110, 'caderno', 10, 30.00, 1 );
/*
1) Listar as descri es de produtos��
*/
select descricao from produtos;
/*
2) Listar os fabricantes em ordem alfab tica�
*/
select nome from fabricantes order by nome;
/*
3) Listar os produtos com pre o entre 10 e 20�
*/
select * from produtos where preco between 10 and 20;
select * from produtos where preco >= 10 and preco <= 20;
/*
4) Listar os produtos com pre o maior que 10�
*/
select * from produtos where preco > 10;
/*
5) Listar o produto com maior pre o�
*/
select * from produtos
where preco = (select max(preco) from produtos );
select * from produtos
where preco >= all (select preco from produtos );
/*
6) Listar as descri es de produto com o nome do respectivo fabricante��
*/
select descricao, nome
from produtos p, fabricantes f
where p.codfabricante = f.codigo;
select descricao, nome
from produtos p inner join fabricantes f
on p.codfabricante = f.codigo;
/*
7) Listar os produtos fabricados no pa s Brasil�
*/
select *
from produtos p inner join fabricantes f
on p.codfabricante = f.codigo
where pais = 'Brasil';
select *
from produtos p, fabricantes f
where p.codfabricante = f.codigo and pais = 'Brasil';
/*
8) Listar a quantidade de produtos diferentes feitos por cada fabricante
*/
select codfabricante, count(*)
from produtos p inner join fabricantes f
on p.codfabricante = f.codigo
group by codfabricante;
/*
9) Listar os fabricantes que produzem o produto de descri o 'l pis' e 'caneta'�� �
*/
select f.nome
from produtos p inner join fabricantes f
on p.codfabricante = f.codigo
where p.descricao = 'l pis'�
intersect
select f.nome
from produtos p inner join fabricantes f
on p.codfabricante = f.codigo
where p.descricao = 'caneta';
select f.nome
from produtos p inner join fabricantes f
on p.codfabricante = f.codigo
where p.descricao = 'l pis' and f.nome in (select f.nome�
from produtos p inner join fabricantes f
on p.codfabricante = f.codigo
where p.descricao = 'caneta');
/*
10) Listar os fabricantes que n o tem produto cadastrado�
*/
select f.codigo, f.nome, f.pais
from produtos p right outer join fabricantes f
on p.codfabricante = f.codigo
where p.codigo is null;
/* corre o da atividade */��
create table Clientes(
codigo int,
nome varchar(50),
primary key(codigo));
create table emailsclientes(
codCli int,
email varchar(255),
primary key(codCli, email),
foreign key(codCli) references Clientes(codigo) on delete cascade);
insert into clientes values( 1, 'cliente1' );
insert into clientes values( 2, 'cliente2' );
insert into clientes values( 3, 'cliente3' );
insert into emailsclientes values( 1, 'cliente1@teste.com' );
insert into emailsclientes values( 1, 'cliente1@teste1.com' );
insert into emailsclientes values( 2, 'cliente2@teste.com' );
insert into emailsclientes values( 3, 'cliente3@teste.com' );
insert into emailsclientes values( 3, 'cliente3@teste1.com' );
insert into emailsclientes values( 3, 'cliente3@teste2.com' );
create table filmes(
codigo int,
titulo varchar(100),
primary key(codigo));
create table Fitas(
codigo int,
descricao varchar(50),
codFilme int not null,
primary key(codigo),
foreign key(codFilme) references Filmes(codigo));
insert into filmes values( 100, 'Titanic' );
insert into filmes values( 101, 'Star Wars' );
insert into fitas values( 1000, 'fita 1', 100 );
insert into fitas values( 1001, 'fita 2', 100 );
insert into fitas values( 1002, 'fita 3', 100 );
insert into fitas values( 1003, 'fita 1', 101 );
create table filmesAssistidos(
codCli int,
codFilme int,
dataAssistido date,
primary key(codCli, codFilme),
foreign key(codCli) references Clientes(codigo) on delete cascade,
foreign key(codFilme) references Filmes(codigo) on delete cascade);
insert into filmesAssistidos values( 1, 100, '01/01/1998' );
select * from Funcionarios;
create table Medicos(
re int,
crm int unique not null,
especialidade varchar(50),
primary key(re),
foreign key(re) references Funcionarios(re) on delete cascade);
insert into Medicos values ( 104, 123456, 'Geral' );
create table Motoristas(
re int,
cnh varchar(50),
pontos int,
primary key(re),
foreign key(re) references Funcionarios(re) on delete cascade);
insert into Motoristas values( 100, '1234567', 0 );
select * from Alunos;
select * from professores;
select * from disciplinas;
create table Professores(
re int,
titulacao varchar(50),
primary key(re),
foreign key(re) references Funcionarios(re) on delete cascade);
Create table APD(
ra int,
re int,
codDisc int,
primary key(ra, re, codDisc),
foreign key(ra) references Alunos(ra) on delete cascade,
foreign key(re) references Professores(re) on delete cascade,
foreign key(codDisc) references Disciplinas(codigo) on delete cascade);
select * from Funcionarios;
insert into professores values( 101, 'Mestre' );
select * from Alunos;
select * from disciplinas;
insert into APD values( 100, 101, 1000 );