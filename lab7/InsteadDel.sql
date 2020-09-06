drop trigger InsteadDel
go
CREATE TRIGGER InsteadDel
ON тип_дома
INSTEAD OF DELETE
AS
UPDATE тип_дома
SET Del = 1
WHERE серия in (SELECT серия FROM deleted)
go

INSERT INTO тип_дома(серия, описание)
VALUES ('тс777','трёх-комнатная квартира')
 
DELETE FROM тип_дома
WHERE серия='тс777';
 
SELECT * FROM тип_дома;
go
