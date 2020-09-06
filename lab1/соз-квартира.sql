Use bd_estate_agency;

GO  
CREATE TABLE квартира
(  
 номер_квартиры int ,    
 кол_комнат int not null check (кол_комнат in ('1', '2', '3', '4', '5')),
 цена_кв_м money not null,
 жилплощадь real not null ,
 район int ,
 дом int not null,
 стр_серия int,
 агент int,
 primary key(номер_квартиры,дом),
   foreign key (район) references район(номер_района),
    foreign key (стр_серия) references стр_серия(номер_серии),
    foreign key (агент) references агент(номер_агента),
	foreign key (дом) references дом(номер_дома)
  
 
);  
  
