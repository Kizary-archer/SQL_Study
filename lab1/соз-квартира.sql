Use bd_estate_agency;

GO  
CREATE TABLE ��������
(  
 �����_�������� int ,    
 ���_������ int not null check (���_������ in ('1', '2', '3', '4', '5')),
 ����_��_� money not null,
 ���������� real not null ,
 ����� int ,
 ��� int not null,
 ���_����� int,
 ����� int,
 primary key(�����_��������,���),
   foreign key (�����) references �����(�����_������),
    foreign key (���_�����) references ���_�����(�����_�����),
    foreign key (�����) references �����(�����_������),
	foreign key (���) references ���(�����_����)
  
 
);  
  
