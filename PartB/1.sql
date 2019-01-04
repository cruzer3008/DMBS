SET SERVEROUTPUT ON

BEGIN
	FOR rec IN (SELECT * FROM EMPLOYEE)
	LOOP
		dbms_output.put_line("Name: "||rec.name||"Age: "||rec.age||"Sex: "||rec.sex);
	END LOOP


UPDATE EMPLOYEE
SET BALANCE = 120000
WHERE SSN = 1;
dbms_output.put_line("Some entries changed");

END;
/
