Use bd_estate_agency;

GO  
CREATE TABLE дом
(  
 id_дома int IDENTITY(1,1) primary key,  
 номер_дома varchar(10),
 улица int ,
 серия int not null,
 foreign key (улица) references улица(номер_улицы),
 foreign key (серия) references тип_дома(серия),

 
);  
  
