CREATE DATABASE HelpDeskDB;

USE HelpDeskDB;

-- a table for various role types
CREATE TABLE RoleType ( 
RoleName varchar (50) NOT NULL,
PRIMARY KEY (RoleName)
);
-- insert the values
INSERT INTO RoleType(
   RoleName
) VALUES
('FULL TIME STAFF'), ('STUDENT STAFF'), ('SUPERVISOR');

-- create a table for user
-- it has reference to role type
CREATE TABLE DashboardUser (
UserName varchar (30) NOT NULL,
U_Password varchar (30) NOT NULL,
FirstName varchar (30) NOT NULL,
LastName varchar (30) NOT NULL,
RoleName varchar (50) NOT NULL,
PRIMARY KEY (UserName),
FOREIGN KEY (RoleName) REFERENCES RoleType (RoleName)
);

-- a table for various technician types
CREATE TABLE TechnicianType ( 
TechnicianType varchar (5) NOT NULL,
PRIMARY KEY (TechnicianType)
); 

-- insert the values
INSERT INTO TechnicianType(
   TechnicianType
) VALUES
('T1'),('T2');

-- a table for various technician types
CREATE TABLE TechnicianAvailibiltySchedule ( 
UserName varchar (30) NOT NULL,
FirstAppointment Time NOT NULL,
LastAppointment Time NOT NULL,
BreakTime Time NOT NULL,
PRIMARY KEY(UserName)
);

CREATE TABLE TechSchedule (
UserName varchar (30) NOT NULL,
TechnicianType varchar (5) NOT NULL,
StartDate DateTime NOT NULL,
EndDate DateTime NOT NULL
);

-- a table for various resource status
CREATE TABLE ResourceStatus ( 
ResourceStatus varchar (5) NOT NULL,
PRIMARY KEY (ResourceStatus)
); 

-- insert the values
INSERT INTO ResourceStatus(
   ResourceStatus
) VALUES 
('UP'),('DOWN');

-- a table for various resources
CREATE TABLE Resources (
ResourceId int NOT NULL AUTO_INCREMENT,
ResourceName varchar (50) NOT NULL,
URL varchar (255) NOT NULL,
PRIMARY KEY (ResourceId)
); 

-- insert the values
INSERT INTO Resources(
   ResourceName, URL
) VALUES 
('myneu', 'myneu.neu.edu'),('myapps','myapps.neu.edu'),('Northeastern','northeastern.edu');