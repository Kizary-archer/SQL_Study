Use bd_estate_agency;

GO  
CREATE TABLE улица
(  
 номер_улицы int IDENTITY(1,1) primary key,  
 название varchar (30) not null,
 район int not null,
 foreign key (район) references район(номер_района)

);  
  
