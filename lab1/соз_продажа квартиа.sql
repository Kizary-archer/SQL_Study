Use bd_estate_agency;

GO  
CREATE TABLE продажа_квартир
(  
 номер_продажи int IDENTITY(1,1) primary key,    
 квартира int not null,
 агент_по_продаже int not null,
 дата_заключения_сделки date not null,
 foreign key (квартира) references квартира(номер_квартиры),
 foreign key (агент_по_продаже) references агент_по_продаже(номер_агента),

);  
  
