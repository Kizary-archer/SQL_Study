Use bd_estate_agency;

GO  
CREATE TABLE тип_дома
(  
 номер_типа int IDENTITY(1,1) primary key,  
 серия varchar (30) not null,
 описание varchar(200),
);  
  
