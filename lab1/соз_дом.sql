Use bd_estate_agency;

GO  
CREATE TABLE ���
(  
 id_���� int IDENTITY(1,1) primary key,  
 �����_���� varchar(10),
 ����� int ,
 ����� int not null,
 foreign key (�����) references �����(�����_�����),
 foreign key (�����) references ���_����(�����),

 
);  
  
