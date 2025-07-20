use iti
CREATE or alter PROCEDURE GetStudentCountPerDepartment
As
 BEGIN
    SELECT 
        d.Dept_Name,
        COUNT(s.St_Id) AS student_count
    FROM 
       dbo.Department d
    LEFT JOIN 
        student s ON d.Dept_Id = s.Dept_Id
    GROUP BY 
        d.Dept_Id, d.Dept_Name;
END

EXEC GetStudentCountPerDepartment;
-----------------------------------------------
use MyCompany

create or alter proc getnumberofemployeeinp1 
As
  Begin
  declare @numberofempinp1 int
  select @numberofempinp1 = count(ESSn)
  from Works_for 
  where pno=100
    IF @numberofempinp1 >= 3
    BEGIN
        PRINT 'The number of employees in the project p1 is 3 or more';
    END
    ELSE
    BEGIN
        PRINT 'The following employees work for the project p1';

        SELECT e.fname, e.Lname
        FROM Employee e
        JOIN works_for wf ON e.SSn = wf.ESSn
        WHERE wf.pno= 100;
    END
    end

    exec gett
    --------------------------------------------------------------

  create or alter proc updateWorks_For @NewSSN int,@OldSSN int,@PNumber int
  AS
  Begin
  update Works_for 
  set ESSn = @NewSSN
  where ESSn = @OldSSN And pno = @PNumber
  end

  exec grt 968574,112233,100

