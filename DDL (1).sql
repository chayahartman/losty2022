create database CassettesLendings3

use CassettesLendings3

--create table subject
--(
--   subjectId int primary key not null identity(10,1),
--   description nvarchar(10)  not null 
--)
 
--create table cassettes
--(
--   cassetteId int primary key not null identity(1,1),
--   cassetteName nvarchar(10)  not null,
--   subjectId int not null,
--   length int default 60 check (length>0),
--   foreign key (subjectId) references subject
--)

create table lendings
(
   cassetteId int not null ,
   lendDate datetime not null default getDate(),
   returnDate dateTime ,
   primary key(cassetteId,lendDate),
   check (returnDate>lendDate)
)

create table clients
(
   clientId nvarchar(9) primary key,
   clientName nvarchar(15)
)


Alter table clients
add phone nvarchar(10)

alter table lendings
add
  mode nvarchar(10),
  clientId nvarchar(9) references clients

alter table lendings
alter column mode bit

Alter table clients
drop column phone

alter table lendings
drop constraint [FK__lendings__client__2F10007B]

alter table lendings
add clientId nvarchar(9)

alter table lendings
add constraint FK_lendings_client foreign key (clientId) references clients

exec Sp_rename 'lendings.mode','state','column'

drop table clients

--TRUNCATE table subject

create table tblAuthors
(athorId int primary key identity(100,3) not null,
athorName nvarchar(20) not null,
city nvarchar(10) default 'haifa'
)

--exec sp_rename 'tblAuthors','autrhors','table'


alter table cassettes
add authorId int  not null,
constraint FK_cas_aut foreign key (authorId)
references tblAuthors 


create table cities 
(
cityId int primary key identity(1,1) not null,
cityName nvarchar(10)

)

alter table clients 
add address nvarchar(30),
cityId int references cities,
phone nvarchar(11)

alter table tblAuthors 
alter column city2 int 

alter table tblAuthors
add constraint FK_aut_cit foreign key(city2) references cities 

exec sp_rename 'tblAuthors.city2','cityId','column'

alter table cassettes 
add publishDate dateTime default getDate()
check (publishDate<=getDate())

alter table tblAuthors
drop constraint FK_aut_cit

alter table cassettes
drop constraint FK_cas_aut

drop table tblAuthors

create table kindOf
(
kind int primary key not null,
cityId int  ,
constraint FK_kind_subject foreign key(cityId) references cities(cityId)

)






--alter table tblAuthors
--drop column city
--add city int references cassettes
--alter table tblAuthors
--add constraint FK_authors_city foreign key (city) references city
--drop constraint DF_tblAuthors_city
--add constraint df_city default 'agha'

drop database CassettesLendings