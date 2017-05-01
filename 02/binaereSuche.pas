

program binaereSuche;
const
	FELDGROESSE = 1;
	
TYPE
	vektor = ARRAY[1..FELDGROESSE] OF INTEGER;
	
var
    Feld2 : vektor;
    Suchwert2,i : integer;

function SucheA(Feld : vektor; Suchwert : integer) : boolean;
var
    unten, oben, Mitte : integer;
    gefunden : boolean;
begin
	writeln('SucheA');
	unten := 1;
	oben := FELDGROESSE;
	repeat
	  Mitte := (oben + unten) div 2;
	  writeln('Grenzen: ', unten:4,  Mitte:4, oben:4);
	  if Suchwert > Feld[Mitte] then
		unten := Mitte + 1;
	  if Suchwert < Feld[Mitte] then
		oben := Mitte - 1;
	  gefunden := (Suchwert = Feld[Mitte]) ;
	  
	until gefunden or (unten > oben);
	
	writeln('gefunden=' , gefunden);
	writeln('Grenzen: ', unten:4, Mitte:4, oben:4);
	
	SucheA := gefunden ;
end;

function SucheB(Feld : vektor; Suchwert : integer) : boolean;
var
    unten, oben, Mitte : integer;
    gefunden : boolean;
begin
	writeln('SucheB');
	unten := 1;
	oben := FELDGROESSE;
	repeat
	  Mitte := (oben + unten) div 2;
	  writeln('Grenzen: ', unten:4,  Mitte:4, oben:4);
	  if Suchwert > Feld[Mitte] then
		unten := Mitte
	  else
		oben := Mitte;
	  gefunden := (Feld[Mitte] = Suchwert) 
	until gefunden or (unten >= oben);
	
	writeln('gefunden=' , gefunden);
	writeln('Grenzen: ', unten:4, Mitte:4, oben:4);
	
	SucheB := gefunden ;
end;


function SucheC(Feld : vektor; Suchwert : integer) : boolean;
var
    unten, oben, Mitte : integer;
    gefunden : boolean;
begin
	writeln('SucheC');
	gefunden := false;
	unten := 1;
	oben := FELDGROESSE;
	while (unten < oben) and not gefunden do
	begin
	  Mitte := (oben + unten) div 2;
	  writeln('Grenzen: ', unten:4,  Mitte:4, oben:4);
	  if Suchwert = Feld[Mitte] then
		gefunden := true
	  else
		if Suchwert < Feld[Mitte] then
		  oben := Mitte - 1
		else
		  unten := Mitte + 1
	end; 
	
	writeln('gefunden=' , gefunden);
	writeln('Grenzen: ', unten:4, Mitte:4, oben:4);
	
	SucheC := gefunden ;
end;



function SucheD(Feld : vektor; Suchwert : integer) : boolean;
var
    unten, oben, Mitte : integer;
    gefunden : boolean;
begin
	writeln('SucheD');
	gefunden := false;
	unten := 1;
	oben := FELDGROESSE;
	while (unten <= oben) and not gefunden do
	begin
	  Mitte := (oben + unten) div 2;
	  writeln('Grenzen: ', unten:4,  Mitte:4, oben:4);
	  if Suchwert = Feld[Mitte] then
		gefunden := true
	  else
		if Suchwert < Feld[Mitte] then
		  oben := Mitte - 1
		else
		  unten := Mitte + 1
	end; 
	
	writeln('gefunden=' , gefunden);
	writeln('Grenzen: ', unten:4, Mitte:4, oben:4);
	
	SucheD := gefunden ;
end;



function SucheE(Feld : vektor; Suchwert : integer) : boolean;
var
    unten, oben, Mitte : integer;
    gefunden : boolean;
begin
	writeln('SucheE');
	unten := 1;
	oben := FELDGROESSE;
	repeat
	  Mitte := (oben + unten) div 2;
	  writeln('Grenzen: ', unten:4,  Mitte:4, oben:4);
	  if Suchwert <= Feld[Mitte] then
		oben := Mitte - 1;
	  if Feld[Mitte] <= Suchwert then
		unten := Mitte + 1;
	until (unten > oben);
	gefunden := (Feld[Mitte] = Suchwert);
	
	writeln('gefunden=' , gefunden);
	writeln('Grenzen: ', unten:4, Mitte:4, oben:4);
	
	SucheE := gefunden ;
end;




BEGIN
	Suchwert2 := 0;
	
	for i:= 1 to FELDGROESSE do
		Feld2[i] := i;
	
	SucheA(Feld2, Suchwert2);
	writeln();
{
	SucheB(Feld2, Suchwert2);
	writeln();
	
	SucheC(Feld2, Suchwert2);
	writeln();
}	
	SucheD(Feld2, Suchwert2);
	writeln();
	
	SucheE(Feld2, Suchwert2);
	writeln();


	
END.
