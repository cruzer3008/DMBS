DECLARE
	n number:=8;
	first number:=0;
	second number:=1;
	third number;
	i number;
BEGIN
	dbms_output.put_line("First 8 fibonacci numbers are:")
	dbms_output.put_line(first)
	dbms_output.put_line(second)
	FOR i in 2..n 
	LOOP
		third:=second+first;
		first:=second;
		second:=third;
		dbms_output.put_line(third);
	END LOOP;
END;
/
