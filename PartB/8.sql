SET SERVEROUTPUT ON

CREATE OR REPLACE TRIGGER tri_employee
BEFORE insert or update
ON employee
FOR EACH ROW
DECLARE
	rec varchar(20);

BEGIN 
	SELECT TO_Char(sysdate,'Dy') INTO rec FROM dual;
	IF rec = 'Thu' OR rec = 'Wed' THEN
		dbms_output.put_line(rec);
		raise_application_error(-20343,"Not allowed to enter");
	END IF;
END;
/
