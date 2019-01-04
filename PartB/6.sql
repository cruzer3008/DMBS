SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE findFactorial
AS
	n number;
	fac number:=1;
	i number;

	BEGIN
		n:='&n'
		FOR i in 1..n LOOP
			fac = fac*i;
		END LOOP

		dbms_output.put_line("Factorial is: ",fac);
END;
/
EXECUTE findFactorial;

