create database Lumos;
 use lumos;
 create table Ilumos (
 
 idRua int primary key,
 uF varchar (2),
 nomeCidade varchar(40),
 nomeBairro varchar(40),
 nomeRua varchar(40),
 iluRua varchar(5)
);

insert into Ilumos values (1, 'SP', 'São Paulo', 'Japão Liberdade', 'Japonês', 'Alta'),
(2, 'SP','Santo André', 'Erasmo', 'Av. Itamarati', 'Alta'),
(3, 'RJ', 'Niterói', 'Barreto', 'Engenhoca', 'Baixa'),
(4, 'SP', 'Santo André', 'Camilópolis', 'Rua Santa Isabel', 'Alta'),
(5, 'MG', 'Uberlandia', 'Jardim Brasília', 'Rua das Mães', 'Baixa'),
(6, 'PR', 'Curitiba', 'Água Verde', 'Av. Iguaçu', 'Alta'),
(7, 'RS', 'Pelotas', 'São Gonçalo', 'Rua Capitão Luis Soares', 'Baixa'),
(8, 'SP', 'Santo André', 'Bangu', 'Gerson Freire', 'Baixa')
;
insert into Ilumos values (9,'SP', 'São Caetano', 'Santa Paula', 'Av. Presidente Kennedy', 'Alta');
select * from Ilumos;
select idRua, nomeRua from Ilumos where iluRua = 'Baixa';
select * from Ilumos where idRua > 3 and idRua < 6;
select * from Ilumos where uF <> 'SP';
select * from Ilumos order by nomeBairro desc;
select * from Ilumos where idRua in(2,4,6,8);
select * from Ilumos where idRua not in(2,4,6,8);
select nomeCidade, nomeRua, iluRua from Ilumos where uF = 'SP';
select nomeBairro, nomeRua from Ilumos where nomeCidade like 'São%';

update Ilumos set nomeCidade = 'São Caetano', nomeBairro = 'Cerâmica', iluRua = 'Alta' where idRua=8;
update Ilumos set nomeCidade = 'Santo André', nomeBairro = 'Parque das Nações', nomeRua='Rua Cuba', iluRua = 'Baixa' where idRua=1; 

delete from Ilumos where idRua = 3;

drop table Ilumos;







