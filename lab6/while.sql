WHILE ( SELECT AVG(�������) FROM �����_��_�������) < 7 
BEGIN  
    UPDATE �����_��_�������  
        SET ������� = ������� +1;  
    SELECT MAX ( �������) FROM �����_��_�������  
    IF ( SELECT MAX (�������) FROM �����_��_�������) > 10  
        BREAK;  
END 
