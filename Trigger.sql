IF EXISTS (SELECT * FROM sys.objects WHERE type = 'TR' AND name = 'Ill1')
	DROP TRIGGER Ill1;
GO

CREATE TRIGGER Ill1 ON dbo.[Treatment]
AFTER INSERT
AS
IF EXISTS (SELECT inserted.Treatment_id
           FROM  inserted, [Treatment], [Current state], [Treatment Doctor]
		   WHERE  (inserted.Current_state_id=[Current state].Current_state_id
				  AND inserted.Treatment_Doctor_id = [Treatment Doctor].Treatment_Doctor_id
				  AND inserted.Current_state_id=(SELECT [Current state].Current_state_id
									   FROM [Current state]
									   WHERE [Current state].Current_state='т€желое'))
									   AND ([Treatment Doctor].Expirience > (SELECT MIN(Expirience)
										  FROM [Treatment Doctor])))
BEGIN
   PRINT ('ѕациент направлен')

UPDATE [Treatment] SET Treatment_Doctor_id=(SELECT TOP(1) [Treatment].Treatment_Doctor_id                                               
                                            FROM   [Treatment Doctor]
											WHERE  [Treatment Doctor].Expirience = (SELECT MAX(Expirience)
										                                        FROM [Treatment Doctor] )) 
WHERE Treatment_id IN (SELECT inserted.Treatment_id
                       FROM inserted, [Treatment], [Current state], [Treatment Doctor]
					   WHERE inserted.Treatment_Doctor_id = [Treatment Doctor].Treatment_Doctor_id
                             AND inserted.Current_state_id=(SELECT [Current state].Current_state_id
                                                                   FROM [Current state]
                                                                   WHERE [Current state].Current_state='т€желое')
                             AND ([Treatment Doctor].Expirience>(SELECT MIN(Expirience) FROM [Treatment Doctor])))
END

GO




IF EXISTS (SELECT * FROM sys.objects WHERE type = 'TR' AND name = 'Ill2')
	DROP TRIGGER Ill2;
GO

CREATE TRIGGER Ill2 ON dbo.[Treatment]
AFTER UPDATE
AS
IF EXISTS (SELECT inserted.Treatment_id
           FROM  inserted, [Treatment], [Current state], [Treatment Doctor]
		   WHERE  inserted.Current_state_id=[Current state].Current_state_id
				  AND inserted.Treatment_Doctor_id = [Treatment Doctor].Treatment_Doctor_id
				  AND inserted.Current_state_id=(SELECT [Current state].Current_state_id
									   FROM [Current state]
									   WHERE [Current state].Current_state='т€желое')
									   AND ([Treatment Doctor].Expirience > (SELECT MIN(Expirience)
										  FROM [Treatment Doctor])))
BEGIN
   
   PRINT ('ѕациент направлен')

   DELETE FROM [Treatment]
   WHERE [Treatment].Treatment_id IN (SELECT deleted.Treatment_id
                       FROM deleted, [Treatment], [Current state], [Treatment Doctor]
					   WHERE
                             deleted.Patient_id=[Treatment].Patient_id
							 AND deleted.Treatment_Doctor_id = [Treatment Doctor].Treatment_Doctor_id
                             AND deleted.Current_state_id=[Current state].Current_state_id
                             AND [Current state].Current_state_id=(SELECT [Current state].Current_state_id
                                                                   FROM [Current state]
                                                                   WHERE [Current state].Current_state='т€желое')
                             AND ([Treatment Doctor].Expirience>(SELECT MIN(Expirience) FROM [Treatment Doctor])))

   INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)
   SELECT Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis
   FROM deleted
   WHERE Treatment_id IN
       (SELECT deleted.Treatment_id
           FROM  inserted, [Patient], [Treatment], [Current state], [Treatment Doctor]
		   WHERE ([Patient].Patient_id=inserted.Patient_id
		          AND inserted.Current_state_id=[Current state].Current_state_id
				  AND inserted.Treatment_Doctor_id = [Treatment Doctor].Treatment_Doctor_id
				  AND [Current state].Current_state_id=(SELECT [Current state].Current_state_id
									   FROM [Current state]
									   WHERE [Current state].Current_state='т€желое'))
									   AND ([Treatment Doctor].Expirience > (SELECT MIN(Expirience)
										  FROM [Treatment Doctor])))
   
   UPDATE [Treatment] SET Treatment_Doctor_id=(SELECT TOP (1) Treatment_Doctor_id 
                                               FROM [Treatment Doctor]
											   WHERE [Treatment Doctor].Expirience<=(SELECT MIN(Expirience)
						                                                             FROM [Treatment Doctor]))
   WHERE Treatment_id IN  																					   					       
   (SELECT inserted.Treatment_id
                       FROM inserted, [Treatment], [Current state], [Treatment Doctor]
					   WHERE
                             inserted.Patient_id=[Treatment].Patient_id
                             AND inserted.Current_state_id=[Current state].Current_state_id
							 AND inserted.Treatment_Doctor_id = [Treatment Doctor].Treatment_Doctor_id
                             AND [Current state].Current_state_id=(SELECT [Current state].Current_state_id
                                                                   FROM [Current state]
                                                                   WHERE [Current state].Current_state='т€желое')
                             AND ([Treatment Doctor].Expirience>(SELECT MIN(Expirience) FROM [Treatment Doctor])))

END

go

--изменим состо€ние пациента на т€желое 
/*UPDATE [Treatment] SET [Treatment].Current_state_id='2' WHERE Treatment_id='45'

GO
SELECT *
From  [Current state], [Treatment]
where [Current state].Current_state_id=[Treatment].Current_state_id
AND Treatment.Patient_id = 45

GO
--проверим триггер на работаспособность
select [Treatment Doctor].Expirience from [Treatment Doctor], [Treatment], [Patient]
Where [Treatment Doctor].Treatment_Doctor_id=[Treatment].Treatment_Doctor_id
AND   [Treatment].Patient_id=[Patient].Patient_id
AND   [Patient].Patient_id=45*/	

/*set dateformat dmy
INSERT INTO [Treatment](Treatment_id, [Start_date], Diagnosis_Doctor_id, End_date, Current_state_id, Treatment_Doctor_id, Patient_id, Diagnosis)VALUES(51, '01/02/2016' , 20 , '26/10/2016' , 2 , 20 , 50 , ' ариес');
*/
 --select * from [Treatment]
   