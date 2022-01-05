

create table tblUsers 
(
    userId int identity(1,1),
	firstName nvarchar(12) not null,
	lastName nvarchar(12) not null,
	primary key(userId),
	phone nvarchar(10),
	email nvarchar(25) 
)

create table tblArchive 
(
 findId int constraint FK_Findings_Archive references tblFindings,
 lostId int constraint FK_Losses_Archive references tblLosses,
 loserId  int constraint FK_Losers_Archive references tblLosers,
 finderId  int constraint FK_Finders_Archive references tblFinders,
 returnDate datetime default getdate()
)

create table tblItems 
(
    itemId int primary key  not null identity(1,1),
	itemName nvarchar(15) not null
	
)



create table tblFinders
(
finderId int primary key constraint FK_Finders_Users references tblUsers not null 

)


create table tblQuestions
(
questionId int primary key identity(1,1) ,
questionContent nvarchar(50) 

)

create table tblQuestions_Findings
(
findingId int   not null constraint FK_Findings_Questions references tblFindings,
questionId int  not null constraint FK_Questions_Findings references tblQuestions,
primary key(findingId,questionId)
)

create table tblLosses
(
lostId int primary key  not null,
lostName nvarchar(15) not null,
itemId int constraint FK_Items_Losses references tblItems,
loserId int  constraint FK_Losers_Losses references tblLosers,
lostDate datetime default getdate(),
lostLocation nvarchar(50)
)

create table tblFindings
(
findingId int primary key  not null,
findingName nvarchar(15) not null,
itemId int constraint FK_Items_Finders references tblItems,
findDate datetime default getdate(),
findLocation nvarchar(50),
finderId int constraint FK_Finders_Findings references tblFinders not null
)



create table tblLosers
(
loserId int primary key constraint Fk_Losers_Users references tblUsers not null

)






