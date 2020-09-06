WHILE ( SELECT AVG(процент) FROM агент_по_продаже) < 7 
BEGIN  
    UPDATE агент_по_продаже  
        SET процент = процент +1;  
    SELECT MAX ( процент) FROM агент_по_продаже  
    IF ( SELECT MAX (процент) FROM агент_по_продаже) > 10  
        BREAK;  
END 
