Use bd_estate_agency;

GO  
CREATE TABLE �������_�������
(  
 �����_������� int IDENTITY(1,1) primary key,    
 �������� int not null,
 �����_��_������� int not null,
 ����_����������_������ date not null,
 foreign key (��������) references ��������(�����_��������),
 foreign key (�����_��_�������) references �����_��_�������(�����_������),

);  
  
