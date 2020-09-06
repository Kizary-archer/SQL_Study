Use bd_estate_agency;

GO  
CREATE TABLE агент_по_продаже
(  
 номер_агента int IDENTITY(1,1) primary key,    
 имя  varchar(30) not null,
 Фамилия varchar(30) not null,
 отчество varchar(30) ,
 процент real not null,
 
);  
  
