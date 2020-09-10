set DATEFORMAT dmy

CREATE TABLE [Treatment Doctor] (
	Treatment_Doctor_id int NOT NULL PRIMARY KEY,
	Name  nvarchar(30) ,
	Surename nvarchar(30) ,
	Patronimic nvarchar(30) ,
	Expirience int ,
	Specialization_id int ,
	Cabinet_No_id int 
);
CREATE TABLE [Treatment] (
	Treatment_id int NOT NULL PRIMARY KEY,
	Start_date date ,
	Diagnosis_Doctor_id int ,
	End_date  date,
	Current_state_id int,
	Treatment_Doctor_id int ,
	Diseas_id int,
	Patient_id int,
	Diagnosis nvarchar(30)
);
CREATE TABLE [Patient] (
	Patient_id int NOT NULL PRIMARY KEY,
	Name NVARchar(30) ,
	Surname nvarchar ,
	Patronimic nvarchar(30), 
	Born_date date ,
	Policy_No int,
	Social_status_id int
);
CREATE TABLE [Recipe] (
	Recipe_id int NOT NULL PRIMARY KEY,
	Recipe_No int,
	Treatment_id int,
	Medicine_id int 
);
CREATE TABLE [Specialization] (
	Specialization_id int  NOT NULL PRIMARY KEY,
	Specialization NVARchar(30) NOT NULL 
);
CREATE TABLE [Diagnosis Doctor] (
	Diagnosis_Doctor_id int NOT NULL primary key,
	Name nvarchar(30) ,
	Surename nvarchar(30) ,
	Patronimic nvarchar(30) ,
	Expirience int ,
	Specialization_id int ,
	Cabinet_No_id int ,
	Position_id int 
);
CREATE TABLE [Cabinet No.] (
	Cabinet_No_id int NOT NULL PRIMARY KEY,
	Number int
);
CREATE TABLE [Medicine] (
	Medicine_id int NOT NULL PRIMARY KEY,
	Medicine_name NVARchar(30)
);
CREATE TABLE [Social status] (
	Social_Status_id int NOT NULL PRIMARY KEY,
	Social_status nvarchar(30)
);
CREATE TABLE [Current state](
    Current_state_id int NOT NULL PRIMARY KEY,
	Current_state nvarchar(30)
);

ALTER TABLE [Treatment Doctor] WITH CHECK ADD CONSTRAINT [Treatment_Doctor_id_1] FOREIGN KEY ([Specialization_id]) REFERENCES [Specialization]([Specialization_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment Doctor] WITH CHECK ADD CONSTRAINT [Treatment_Doctor_id_2] FOREIGN KEY ([Cabinet_No_id]) REFERENCES [Cabinet No.]([Cabinet_No_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_1] FOREIGN KEY ([Diagnosis_Doctor_id]) REFERENCES [Diagnosis Doctor]([Diagnosis_Doctor_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_2] FOREIGN KEY ([Treatment_Doctor_id]) REFERENCES [Treatment Doctor]([Treatment_Doctor_id])
ON DELETE CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_3] FOREIGN KEY ([Patient_id]) REFERENCES [Patient]([Patient_id])
ON delete CASCADE;

ALTER TABLE [Treatment] WITH CHECK ADD CONSTRAINT [Treatment_id_4] FOREIGN KEY ([Current_state_id]) REFERENCES [Current state]([Current_state_id])
ON delete CASCADE;

ALTER TABLE [Patient] WITH CHECK ADD CONSTRAINT [Patient _id] FOREIGN KEY ([Social_status_id]) REFERENCES [Social status]([Social_Status_id])
ON delete CASCADE;

ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_id_1] FOREIGN KEY ([Medicine_id]) REFERENCES [Medicine]([Medicine_id])
ON delete CASCADE;

ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_id_2] FOREIGN KEY ([Treatment_id]) REFERENCES [Treatment]([Treatment_id])
ON delete CASCADE;

ALTER TABLE [Diagnosis Doctor] WITH CHECK ADD CONSTRAINT [Diagnosis_Doctor_id_1] FOREIGN KEY ([Specialization_id]) REFERENCES [Specialization]([Specialization_id])
ON update CASCADE;

ALTER TABLE [Diagnosis Doctor] WITH CHECK ADD CONSTRAINT [Diagnosis_Doctor_id_2] FOREIGN KEY ([Cabinet_No_id]) REFERENCES [Cabinet No. ]([Cabinet_No_id])
ON update CASCADE;









