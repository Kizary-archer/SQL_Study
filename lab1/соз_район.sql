Use bd_estate_agency;

GO  
CREATE TABLE район
(  
 номер_улицы int IDENTITY(1,1) primary key,  
 название varchar (30) not null, 
 номер_города int,
   foreign key (номер_города) references город(номер_города),
);  
  
