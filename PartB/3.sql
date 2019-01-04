SET SERVEROUTPUT ON

DECALRE 
	n number:=12;
	flag number:=1;
	i number:=2
BEGIN
	FOR i in 2..n/2
	LOOP
		IF mod(n,i)=0 THEN
			flag:=0
			exit;
		END IF;
	END LOOP;

	IF flag=1 THEN 
		dbms_output.put_line("Number is prime");
	ELSE
		dbms_output.put_line("Number is not prime");
	END IF;
END;


			
