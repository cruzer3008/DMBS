SET SERVEROUTPUT ON

DECLARE
	str1 varchar(20):='&n'
	str2 varchar(20);
	i number;
	len number;
BEGIN
	len = length(str1);
	FOR i in 1..len
	LOOP
		str2:= str2||substr(str1,i,1);
	END LOOP;

	IF str1==str2 THEN
		dbms_output.put_line("Its a palindrome");
	ELSE
		dbms_output.put_line("Its not a palindrome");
	END IF;
END;
/
