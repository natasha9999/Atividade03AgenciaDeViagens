create database AgenciaDeViagens;
use AgenciaDeViagens;
create table Cliente(
idCliente int IDENTITY(1,1) primary key,
Nome varchar(50),
cpf varchar(20) UNIQUE,
Email varchar(50),
Telefone varchar(20),
Endereco varchar(50),
);

create table Destino(
idDestino int primary key,
Origem varchar(50),
Destino varchar(50),
DataIda varchar(50),
DataVolta varchar(50),
PrecoUnit varchar(30));

create table Compra(
idCompra int primary key,
idCliente int FOREIGN KEY REFERENCES Cliente(idCliente),
idDestino int FOREIGN KEY REFERENCES Destino(idDestino),
DataCompra varchar(20),
PrecoTotal varchar(30),
FormaDePagamento varchar(40),
Vencimento varchar(20));


select * from Cliente;
select * from Destino;
select * from Compra;


insert into Cliente(idCliente, Nome, CPF, Email, Telefone, Endereco)values('11', 'Edivaldo', '13351690762', 'valdo@gmail.com', '21123456789', 'Rua Canário, casa 110');

insert into Cliente(idCliente, Nome, CPF, Email, Telefone, Endereco)values('36', 'Selena Vera', '17351681732', 'veselena@gmail.com', '11123454789', 'Rua Fantástica, casa 49');

insert into Cliente(idCliente, Nome, CPF, Email, Telefone, Endereco)values('20', 'guilherme', '15351381739', 'gui@gmail.com', '11129450789', 'Rua Paulo Ramos, casa 78');

insert into Destino(idDestino, Origem, Destino, DataIda, DataVolta, PrecoUnit)values('23', 'Bahia', 'Rio Grande do Sul', '28/12/2021', '15/01/2022', '1.126,00');

insert into Destino(idDestino, Origem, Destino, DataIda, DataVolta, PrecoUnit)values('57', 'Maranhão', 'Rio de Janeiro', '24/02/2021', '01/03/2022', '1.102,00');

insert into Compra(idCompra, DataCompra, PrecoTotal, FormaDePagamento, Vencimento)values('194', '25/11/2021', '2.228,00', 'Cartão de crédito', '26/12/2021');



UPDATE Cliente SET Nome = 'Edivaldo Crisvianno' WHERE Email LIKE '%aldo%'

UPDATE Compra SET FormaDePagamento = 'Pix' WHERE PrecoTotal LIKE '2.228,00'

select * from Cliente;
select * from Destino;
select * from Compra;


delete from Cliente where idCliente = 29;
