USE cursos;

CREATE TABLE cursos (
    id integer not null auto_increment PRIMARY KEY,
    name varchar(200)
);

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

insert into cursos (name) values ('Docker');
insert into cursos (name) values ('Fundamentos de Arquitetura de Software');
insert into cursos (name) values ('Comunicação');
insert into cursos (name) values ('RabbitMQ');
insert into cursos (name) values ('Autenticação e Keycloak');
insert into cursos (name) values ('Domain Driven Desgin e Arquitetura hexagonal');
insert into cursos (name) values ('Arquitetura de projeto prático - Codeflix');
insert into cursos (name) values ('Microserviço: Catálogo de vídeos com Laravel (Back-end)');
insert into cursos (name) values ('Microserviço: Catálogo de vídeos com React (Forn-end)');
insert into cursos (name) values ('Microserviço de Encoder de Vídeo com Go Lang');
insert into cursos (name) values ('Microserviço - API do Catálogo com Node.JS (Back-end)');
