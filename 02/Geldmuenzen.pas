program Geldmuenzen (input, output) ;

var 
eingabe, wert,
 cent50, cent20, cent10, cent5, cent2, cent1 : integer;
leerZeichen: char;

BEGIN
cent50 :=0;
cent20 :=0;
cent10 :=0;
cent5 :=0;
cent2 :=0;
cent1 :=0;
leerZeichen := ' ';




readln(eingabe);
if(eingabe <= 99) and (eingabe >= 1)then
	while eingabe > 0
	do
	begin
		wert  := 50;
		if(eingabe >= wert)then
		begin
			eingabe := eingabe - wert;
			cent50 := cent50 + 1;
			continue
		end;
		wert  := 20;
		if(eingabe >= wert)then
		begin
			eingabe := eingabe - wert;
			cent20 := cent20 + 1;
			continue
		end;
		wert  := 10;
		if(eingabe >= wert)then
		begin
			eingabe := eingabe - wert;
			cent10 := cent10 + 1;
			continue
		end;
		wert  := 5;
		if(eingabe >= wert)then
		begin
			eingabe := eingabe - wert;
			cent5 := cent5 + 1;
			continue
		end;
		wert  := 2;
		if(eingabe >= wert)then
		begin
			eingabe := eingabe - wert;
			cent2 := cent2 + 1;
			continue
		end;
		wert  := 1;
		if(eingabe >= wert)then
		begin
			eingabe := eingabe - wert;
			cent1 := cent1 + 1;
			continue
		end;
	end;

	writeln (cent50, leerZeichen, cent20, leerZeichen, cent10, leerZeichen, cent5, leerZeichen,cent2, leerZeichen, cent1)
END.

