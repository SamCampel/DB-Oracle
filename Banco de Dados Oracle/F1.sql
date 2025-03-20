create table pilotos(
codpiloto int,
numero int,
nome varchar(100),
pais varchar(100),
primary key(codPiloto));
create table motores(
codMotor int,
nome varchar(50),
primary key(codMotor));
create table Equipes(
codEquipe int,
nome varchar(100),
codMotor int,
primary key(codEquipe),
foreign key(codMotor) references Motores(codMotor));
create table Autodromos(
codAutodromo int,
nome varchar(100),
pais varchar(100),
primary key(codAutodromo));
create table Corridas(
codCorrida int,
ano int,
numeroEtapa int,
codAutodromo int,
primary key(codCorrida),
foreign key(codAutodromo) references Autodromos(codAutodromo));
create table PilotoEquipe(
codPiloto int,
codEquipe int,
ano int,
primary key(codPiloto, codEquipe, ano),
foreign key(codPiloto) references Pilotos(codPiloto),
foreign key(codEquipe) references Equipes(codEquipe));
create table PilotoCorrida(
codPiloto int,
codCorrida int,
colocacao int,
pontos int,
grid int,
vmr char(1),
primary key( codPiloto, codCorrida ),
foreign key(codPiloto) references Pilotos(codPiloto),
foreign key(codCorrida) references Corridas(codCorrida));
insert into pilotos values( 1, 1, 'Max Verstappen', 'Pa ses Baixos' );�
insert into pilotos values( 2, 4, 'Lando Norris', 'Inglaterra' );
insert into pilotos values( 3, 16, 'Charles Leclerc', 'M naco' );�
insert into pilotos values( 4, 81, 'Oscar Piastri', 'Austr lia' );�
insert into pilotos values( 5, 55, 'Carlos Sainz Jr', 'Espanha' );
insert into pilotos values( 6, 44, 'Lewis Hamilton', 'Inglaterra' );
insert into pilotos values( 7, 63, 'George Russell', 'Inglaterra' );
insert into pilotos values( 8, 11, 'Sergio Perez', 'M xico' );�
insert into pilotos values( 9, 14, 'Fernando Alonso', 'Espanha' );
insert into pilotos values( 10, 27, 'Nico Hulkemberg', 'Alemanha' );
insert into pilotos values( 11, 18, 'Lance Stroll', 'Canad ' );�
insert into pilotos values( 12, 22, 'Yuki Tsunoda', 'Jap o' );�
insert into pilotos values( 13, 20, 'Kevin Magnussen', 'Dinamarca' );
insert into pilotos values( 14, 23, 'Alexander Albon', 'Tail ndia' );�
insert into pilotos values( 15, 3, 'Daniel Ricciardo', 'Austr lia' );�
insert into pilotos values( 16, 10, 'Pierre Gasly', 'Fran a' );�
insert into pilotos values( 17, 50, 'Olivier Bearman', 'Inglaterra' );
insert into pilotos values( 18, 43, 'Franco Colapinto', 'Argentina' );
insert into pilotos values( 19, 31, 'Esteban Ocon', 'Fran a' );�
insert into pilotos values( 20, 30, 'Liam Lawson', 'Austr lia' );�
insert into pilotos values( 21, 24, 'Guanyu Zhou', 'China' );
insert into pilotos values( 22, 2, 'Logan Sargeant', 'Estados Unidos' );
insert into pilotos values( 23, 77, 'Valtteri Bottas', 'Finl ndia' );�
insert into motores values( 1, 'Honda' );
insert into motores values( 2, 'Renault' );
insert into motores values( 3, 'Ferrari' );
insert into motores values( 4, 'Mercedes' );
insert into equipes values( 1, 'Red Bull', 1 );
insert into equipes values( 2, 'Ferrari', 3 );
insert into equipes values( 3, 'Mercedes', 4 );
insert into equipes values( 4, 'McLaren', 4 );
insert into equipes values( 5, 'Alpine', 2 );
insert into equipes values( 6, 'Haas', 3 );
insert into equipes values( 7, 'Aston Martin', 4 );
insert into equipes values( 8, 'RB', 1 );
insert into equipes values( 9, 'Williams', 4 );
insert into equipes values( 10, 'Sauber', 3 );
insert into autodromos values( 1, 'Bar m', 'Bar m' );� �
insert into autodromos values( 2, 'Gid ', 'Ar bia Sudita' );� �
insert into autodromos values( 3, 'Melbourne', 'Autr lia' );�
insert into autodromos values( 4, 'Suzuka', 'Jap o' );�
insert into autodromos values( 5, 'Xangai', 'China' );
insert into autodromos values( 6, 'Miami', 'Estados Unidos' );
insert into autodromos values( 7, ' mola', 'It lia' );� �
insert into autodromos values( 8, 'M naco', 'M naco' );� �
insert into autodromos values( 9, 'Gilles Villeneuve', 'Canad ' );�
insert into autodromos values( 10, 'Catalunha', 'Espanha' );
insert into autodromos values( 11, 'Red Bull Ring', ' ustria' );�
insert into autodromos values( 12, 'Silverstone', 'Inglaterra' );
insert into autodromos values( 13, 'Hungaroring', 'Hungria' );
insert into autodromos values( 14, 'Spa-Francorchamps', 'B lgica' );�
insert into autodromos values( 15, 'Zandvoort', 'Pa ses Baixos' );�
insert into autodromos values( 16, 'Monza', 'It lia' );�
insert into autodromos values( 17, 'Bacu', 'Azerbaij o' );�
insert into autodromos values( 18, 'Marina Bay', 'Singapura' );
insert into autodromos values( 19, 'Circuito das Am ricas', 'Estados Unidos' );�
insert into autodromos values( 20, 'Hermanos Rogrigues', 'M xico' );�
insert into autodromos values( 21, 'Interlagos', 'Brasil' );
insert into autodromos values( 22, 'Las Vegas', 'Estados Unidos' );
insert into autodromos values( 23, 'Lusail', 'Catar' );
insert into autodromos values( 24, 'Yas Marina', 'Emirados rabes' );�
/* cada corrida sprint conta como uma corrida */
insert into Corridas values (1, 2024 , 1, 1);
insert into Corridas values (2, 2024 , 2, 2);
insert into Corridas values (3, 2024 , 3, 3);
insert into Corridas values (4, 2024 , 4, 4);
insert into Corridas values (5, 2024 , 5, 5);
insert into Corridas values (6, 2024 , 5, 5);
insert into Corridas values (7, 2024 , 6, 6);
insert into Corridas values (8, 2024 , 6, 6);
insert into Corridas values (9, 2024 , 7, 7);
insert into Corridas values (10, 2024 , 8, 8);
insert into Corridas values (11, 2024 , 9, 9);
insert into Corridas values (12, 2024 , 10, 10);
insert into Corridas values (13, 2024 , 11, 11);
insert into Corridas values (14, 2024 , 11, 11);
insert into Corridas values (15, 2024 , 12, 12);
insert into Corridas values (16, 2024 , 13, 13);
insert into Corridas values (17, 2024 , 14, 14);
insert into Corridas values (18, 2024 , 15, 15);
insert into Corridas values (19, 2024 , 16, 16);
insert into Corridas values (20, 2024 , 17, 17);
insert into Corridas values (21, 2024 , 18, 18);
insert into Corridas values (22, 2024 , 19, 19);
insert into Corridas values (23, 2024 , 19, 19);
insert into Corridas values (24, 2024 , 20, 20);
insert into Corridas values (25, 2024 , 21, 21);
insert into Corridas values (26, 2024 , 21, 21);
insert into Corridas values (27, 2024 , 22, 22);
insert into Corridas values (28, 2024 , 23, 23);
insert into Corridas values (29, 2024 , 23, 23);
insert into Corridas values (30, 2024 , 24, 24);
insert into PilotoEquipe values( 1, 1, 2024 );
insert into PilotoEquipe values( 2, 4, 2024 );
insert into PilotoEquipe values( 3, 2, 2024 );
insert into PilotoEquipe values( 4, 4, 2024 );
insert into PilotoEquipe values( 5, 2, 2024 );
insert into PilotoEquipe values( 6, 3, 2024 );
insert into PilotoEquipe values( 7, 3, 2024 );
insert into PilotoEquipe values( 8, 1, 2024 );
insert into PilotoEquipe values( 9, 7, 2024 );
insert into PilotoEquipe values( 10, 6, 2024 );
insert into PilotoEquipe values( 11, 7, 2024 );
insert into PilotoEquipe values( 12, 8, 2024 );
insert into PilotoEquipe values( 13, 6, 2024 );
insert into PilotoEquipe values( 14, 9, 2024 );
insert into PilotoEquipe values( 15, 8, 2024 );
insert into PilotoEquipe values( 16, 5, 2024 );
insert into PilotoEquipe values( 17, 2, 2024 );
insert into PilotoEquipe values( 18, 9, 2024 );
insert into PilotoEquipe values( 19, 5, 2024 );
insert into PilotoEquipe values( 20, 8, 2024 );
insert into PilotoEquipe values( 21, 10, 2024 );
insert into PilotoEquipe values( 22, 9, 2024 );
insert into PilotoEquipe values( 23, 10, 2024 );
/*
insert into pilotos values( 1, 1, 'Max Verstappen', 'Pa ses Baixos' );�
insert into pilotos values( 2, 4, 'Lando Norris', 'Inglaterra' );
insert into pilotos values( 3, 16, 'Charles Leclerc', 'M naco' );�
insert into pilotos values( 4, 81, 'Oscar Piastri', 'Austr lia' );�
insert into pilotos values( 5, 55, 'Carlos Sainz Jr', 'Espanha' );
insert into pilotos values( 6, 44, 'Lewis Hamilton', 'Inglaterra' );
insert into pilotos values( 7, 63, 'George Russell', 'Inglaterra' );
insert into pilotos values( 8, 11, 'Sergio Perez', 'M xico' );�
insert into pilotos values( 9, 14, 'Fernando Alonso', 'Espanha' );
insert into pilotos values( 10, 27, 'Nico Hulkemberg', 'Alemanha' );
insert into pilotos values( 11, 18, 'Lance Stroll', 'Canad ' );�
insert into pilotos values( 12, 22, 'Yuki Tsunoda', 'Jap o' );�
insert into pilotos values( 13, 20, 'Kevin Magnussen', 'Dinamarca' );
insert into pilotos values( 14, 23, 'Alexander Albon', 'Tail ndia' );�
insert into pilotos values( 15, 3, 'Daniel Ricciardo', 'Austr lia' );�
insert into pilotos values( 16, 10, 'Pierre Gasly', 'Fran a' );�
insert into pilotos values( 17, 50, 'Olivier Bearman', 'Inglaterra' );
insert into pilotos values( 18, 43, 'Franco Colapinto', 'Argentina' );
insert into pilotos values( 19, 31, 'Esteban Ocon', 'Fran a' );�
insert into pilotos values( 20, 30, 'Liam Lawson', 'Austr lia' );�
insert into pilotos values( 21, 24, 'Guanyu Zhou', 'China' );
insert into pilotos values( 22, 2, 'Logan Sargeant', 'Estados Unidos' );
insert into pilotos values( 23, 77, 'Valtteri Bottas', 'Finl ndia' );�
*/
/*
codPiloto
codCorrida
colocacao
pontos
grid
vmr
*/
/* Bar m */�
insert into pilotocorrida values( 1, 1, 1, 26, 1, 'S' );
insert into pilotocorrida values( 8, 1, 2, 18, 5, 'N' );
insert into pilotocorrida values( 5, 1, 3, 15, 4, 'N' );
insert into pilotocorrida values( 3, 1, 4, 12, 2, 'N' );
insert into pilotocorrida values( 7, 1, 5, 10, 3, 'N' );
insert into pilotocorrida values( 2, 1, 6, 8, 3, 'N' );
insert into pilotocorrida values( 6, 1, 7, 6, 3, 'N' );
insert into pilotocorrida values( 4, 1, 8, 4, 3, 'N' );
insert into pilotocorrida values( 9, 1, 9, 2, 3, 'N' );
insert into pilotocorrida values( 11, 1, 10, 1, 3, 'N' );
/* Ar bia Saudita */�
insert into pilotocorrida values( 1, 2, 1, 25, 1, 'N' );
insert into pilotocorrida values( 8, 2, 2, 18, 3, 'N' );
insert into pilotocorrida values( 3, 2, 3, 16, 2, 'S' );
insert into pilotocorrida values( 4, 2, 4, 12, 5, 'N' );
insert into pilotocorrida values( 9, 2, 5, 10, 4, 'N' );
insert into pilotocorrida values( 7, 2, 6, 8, 7, 'N' );
insert into pilotocorrida values( 17, 2, 7, 6, 11, 'N' );
insert into pilotocorrida values( 2, 2, 8, 4, 6, 'N' );
insert into pilotocorrida values( 6, 2, 9, 2, 8, 'N' );
insert into pilotocorrida values( 10, 2, 10, 1, 15, 'N' );
/* Austr lia */�
insert into pilotocorrida values( 5, 3, 1, 25, 2, 'N' );
insert into pilotocorrida values( 3, 3, 2, 19, 4, 'S' );
insert into pilotocorrida values( 2, 3, 3, 15, 3, 'N' );
insert into pilotocorrida values( 4, 3, 4, 12, 5, 'N' );
insert into pilotocorrida values( 8, 3, 5, 10, 6, 'N' );
insert into pilotocorrida values( 11, 3, 6, 8, 9, 'N' );
insert into pilotocorrida values( 12, 3, 7, 6, 8, 'N' );
insert into pilotocorrida values( 9, 3, 8, 4, 10, 'N' );
insert into pilotocorrida values( 10, 3, 9, 2, 16, 'N' );
insert into pilotocorrida values( 13, 3, 10, 1, 14, 'N' );
/* Jap o */�
insert into pilotocorrida values( 1, 4, 1, 26, 1, 'S' );
insert into pilotocorrida values( 8, 4, 2, 18, 2, 'N' );
insert into pilotocorrida values( 5, 4, 3, 15, 4, 'N' );
insert into pilotocorrida values( 3, 4, 4, 12, 8, 'N' );
insert into pilotocorrida values( 2, 4, 5, 10, 3, 'N' );
insert into pilotocorrida values( 9, 4, 6, 8, 5, 'N' );
insert into pilotocorrida values( 7, 4, 7, 6, 9, 'N' );
insert into pilotocorrida values( 4, 4, 8, 4, 6, 'N' );
insert into pilotocorrida values( 6, 4, 9, 2, 7, 'N' );
insert into pilotocorrida values( 12, 4, 10, 1, 10, 'N' );
/* China Sprint*/
insert into pilotocorrida values( 1, 5, 1, 8, 4, 'N' );
insert into pilotocorrida values( 6, 5, 2, 7, 2, 'N' );
insert into pilotocorrida values( 8, 5, 3, 6, 6, 'N' );
insert into pilotocorrida values( 3, 5, 4, 5, 7, 'N' );
insert into pilotocorrida values( 5, 5, 5, 4, 5, 'N' );
insert into pilotocorrida values( 2, 5, 6, 3, 1, 'N' );
insert into pilotocorrida values( 4, 5, 7, 2, 8, 'N' );
insert into pilotocorrida values( 7, 5, 8, 1, 11, 'N' );
/* China */
insert into pilotocorrida values( 1, 6, 1, 25, 1, 'N' );
insert into pilotocorrida values( 2, 6, 2, 18, 4, 'N' );
insert into pilotocorrida values( 8, 6, 3, 15, 2, 'N' );
insert into pilotocorrida values( 3, 6, 4, 12, 6, 'N' );
insert into pilotocorrida values( 4, 6, 5, 10, 7, 'N' );
insert into pilotocorrida values( 7, 6, 6, 8, 8, 'N' );
insert into pilotocorrida values( 9, 6, 7, 7, 3, 'S' );
insert into pilotocorrida values( 4, 6, 8, 4, 5, 'N' );
insert into pilotocorrida values( 6, 6, 9, 2, 18, 'N' );
insert into pilotocorrida values( 10, 6, 10, 1, 9, 'N' );
/* Miami Sprint */
insert into pilotocorrida values( 1, 7, 1, 8, 1, 'S' );
insert into pilotocorrida values( 3, 7, 2, 7, 2, 'N' );
insert into pilotocorrida values( 8, 7, 3, 6, 3, 'N' );
insert into pilotocorrida values( 15, 7, 4, 5, 4, 'N' );
insert into pilotocorrida values( 5, 7, 5, 4, 5, 'N' );
insert into pilotocorrida values( 4, 7, 6, 3, 6, 'N' );
insert into pilotocorrida values( 10, 7, 7, 2, 10, 'N' );
insert into pilotocorrida values( 12, 7, 8, 1, 15, 'N' );
/* Miami */
insert into pilotocorrida values( 2, 8, 1, 25, 5, 'N' );
insert into pilotocorrida values( 1, 8, 2, 18, 1, 'N' );
insert into pilotocorrida values( 3, 8, 3, 15, 2, 'N' );
insert into pilotocorrida values( 8, 8, 4, 12, 4, 'N' );
insert into pilotocorrida values( 5, 8, 5, 10, 3, 'N' );
insert into pilotocorrida values( 6, 8, 6, 8, 8, 'N' );
insert into pilotocorrida values( 12, 8, 7, 6, 10, 'N' );
insert into pilotocorrida values( 7, 8, 8, 4, 7, 'N' );
insert into pilotocorrida values( 9, 8, 9, 2, 15, 'N' );
insert into pilotocorrida values( 19, 8, 10, 1, 13, 'N' );
/* Em lia-Romanha */�
insert into pilotocorrida values( 1, 9, 1, 25, 1, 'N' );
insert into pilotocorrida values( 2, 9, 2, 18, 3, 'N' );
insert into pilotocorrida values( 3, 9, 3, 15, 4, 'N' );
insert into pilotocorrida values( 4, 9, 4, 12, 2, 'N' );
insert into pilotocorrida values( 5, 9, 5, 10, 5, 'N' );
insert into pilotocorrida values( 6, 9, 6, 8, 8, 'N' );
insert into pilotocorrida values( 7, 9, 7, 7, 6, 'S' );
insert into pilotocorrida values( 8, 9, 8, 4, 11, 'N' );
insert into pilotocorrida values( 11, 9, 9, 2, 13, 'N' );
insert into pilotocorrida values( 12, 9, 10, 1, 7, 'N' );
/* M naco */�
insert into pilotocorrida values( 3, 10, 1, 25, 1, 'N' );
insert into pilotocorrida values( 4, 10, 2, 18, 2, 'N' );
insert into pilotocorrida values( 5, 10, 3, 15, 3, 'N' );
insert into pilotocorrida values( 2, 10, 4, 12, 4, 'N' );
insert into pilotocorrida values( 7, 10, 5, 10, 5, 'N' );
insert into pilotocorrida values( 1, 10, 6, 8, 6, 'N' );
insert into pilotocorrida values( 6, 10, 7, 7, 7, 'S' );
insert into pilotocorrida values( 12, 10, 8, 4, 8, 'N' );
insert into pilotocorrida values( 14, 10, 9, 2, 9, 'N' );
insert into pilotocorrida values( 16, 10, 10, 1, 10,'N' );
/* Canad */�
insert into pilotocorrida values( 1, 11, 1, 25, 2, 'N' );
insert into pilotocorrida values( 2, 11, 2, 18, 3, 'N' );
insert into pilotocorrida values( 7, 11, 3, 15, 1, 'N' );
insert into pilotocorrida values( 6, 11, 4, 13, 7, 'S' );
insert into pilotocorrida values( 4, 11, 5, 10, 4, 'N' );
insert into pilotocorrida values( 9, 11, 6, 8, 6, 'N' );
insert into pilotocorrida values( 11, 11, 7, 6, 9, 'N' );
insert into pilotocorrida values( 15, 11, 8, 4, 5, 'N' );
insert into pilotocorrida values( 16, 11, 9, 2, 15, 'N' );
insert into pilotocorrida values( 19, 11, 10, 1, 18,'N' );
/* Quest es */�
select nome from pilotos order by nome;
select p.nome, e.nome, ano
from Pilotos p inner join PilotoEquipe pe on p.codpiloto= pe.codpiloto
inner join equipes e on pe.codequipe = e.codequipe
where ano = 2024;
select *
from equipes e inner join motores m on e.codmotor = m.codmotor
where m.nome = 'Mercedes';
select pais from pilotos
union
select pais from autodromos;
select pais, count(*)
from pilotos
group by pais;
select pais, count(*)
from pilotos
group by pais
having count(*) >= all (select count(*)
from pilotos
group by pais);
select nome, count(*)
from PilotoCorrida pc inner join pilotos p on p.codpiloto= pc.codpiloto
where colocacao = 1
group by nome;
select sum(pontos)
from PilotoCorrida pc inner join pilotos p on p.codpiloto= pc.codpiloto
where nome = 'Lando Norris';
select p.codPiloto, p.nome, sum(pontos)
from PilotoCorrida pc inner join pilotos p on p.codpiloto= pc.codpiloto
group by(p.codpiloto, p.nome)
order by 3 desc;
select e.codEquipe, e.nome, sum(pontos)
from PilotoCorrida pc inner join pilotos p on p.codpiloto= pc.codpiloto
inner join pilotoequipe pe on pe.codpiloto = p.codpiloto
inner join equipes e on e.codequipe = pe.codequipe
group by( e.codequipe, e.nome )
order by 3 desc;