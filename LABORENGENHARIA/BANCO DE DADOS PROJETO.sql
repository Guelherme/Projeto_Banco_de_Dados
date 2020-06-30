create database Autentica;
use Autentica;

START TRANSACTION;

create table tbUsuario(
codigoUsuario integer primary key not null,
nomeUsuario varchar(40) not null,
loginUsuario varchar(20) not null,
senhaUsuario varchar(20) not null,
telefoneUsuario varchar(20) not null,
emailUsuario varchar(40)not null);


insert into tbUsuario (codigoUsuario, nomeUsuario, loginUsuario, senhaUsuario, telefoneUsuario, emailUsuario) 
values (001,'Mateus','matlife',1234,945612405,'mateuscan42@gmail.com');

ALTER TABLE `tbusuario`
 MODIFY `codigoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
 COMMIT;
