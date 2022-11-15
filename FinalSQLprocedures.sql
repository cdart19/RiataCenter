use s21_kscdart
go


Create procedure spInsertContacts 
@FirstName varchar(60),
@LastName varchar(60),
@Phone char(15),
@PrimaryEmail varchar(100),
@SecondaryEmail varchar(100),
@Address1 varchar(100),
@Address2 varchar(100),
@City varchar(60),
@StateID int,
@Zipcode char(10),
@EmployerName varchar(100),
@jobTitle varchar(75),
@StudentStatus char(1),
@AlumniStatus char(1),
@CWID char(15),
@ContactID int out,
@MilitaryBranch dtMilitaryBranches readonly,
@Education dtEducation readonly
as 
begin 
	Insert into RC.Contact 
	 (FirstName, LastName, Phone, PrimaryEmail, SecondaryEmail, Address1, Address2, City, StateID, Zipcode, EmployerName, JobTitle, StudentStatus, AlumniStatus, CWID)
	values 
	(@FirstName, @LastName, @Phone, @PrimaryEmail, @SecondaryEmail, @Address1, @Address2, @City, @StateID, @Zipcode, @EmployerName, @JobTitle, @StudentStatus, @AlumniStatus, @CWID)
	
	set @ContactID = SCOPE_IDENTITY();
	Insert into RC.Education 
	(ContactID, Degree, StudentClassification, MajorName, MinorName, AnticipatedGradDate)
	Select @ContactID, Degree, StudentClassification, MajorName, MinorName,
	AnticipatedGradDate 
	from @Education 

	Insert into RC.ContactMilitaryXRef
	(ContactID, BranchID)
	select @ContactID, BranchID
	from @MilitaryBranch
end
go 


create procedure [dbo].[spGetStates]
as 
begin
select StateID, StateAbbr
from RC.StateMaster
order by StateID
end 
GO

create procedure [dbo].[spMilitaryCheck]
as 
begin
select BranchID, BranchName
from RC.MilitaryBranch
order by BranchID
end 
GO
