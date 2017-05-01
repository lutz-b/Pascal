

program maxGueltig;

const
    GRENZE = 10;
    type      
    tIndex = 1..GRENZE;
    tFeld = array [tIndex] of integer;
    var
    Feld : tFeld;
    w,
    w1,
    w2 : integer;

function max (ParFeld: tFeld; von, bis: tIndex): integer;
    { bestimmt das Maximum im Teilfeld von ParFeld[von] 
      bis ParFeld[bis] }
    var
      Wert : integer;
      i : tIndex;
    begin
      Wert := ParFeld[von];
      for i := von + 1 to bis do
        if ParFeld[i] > Wert then
          Wert := ParFeld[i];
      max := Wert;
      
      
      writeln('von: ', von);
      writeln('bis: ', bis);
      writeln('Wert: ', Wert)
    end; { max }  

BEGIN

	for w1 := 1 to GRENZE do
		Feld[w1] := w1-2;
	
	for w1 := 1 to GRENZE do
		Feld[w1] := 1;
		
	Feld[1] := -2;
	Feld[10] := 12;
	
	{A}
	
	{
	writeln('A: ');
	w := max (Feld, Feld[1], Feld[GRENZE]);
}
	

	{B}
	{
	w := max (Feld, (GRENZE-1) div 2, (GRENZE-1) div 2);
}
	

{C}
{
	if max (Feld, 1, (GRENZE-1) div 2) >
      max (Feld, (GRENZE+1) div 2, GRENZE)
	then
	  w := max (Feld, 1, (GRENZE-1) div 2)
	else
	  w := max (Feld, (GRENZE+1) div 2, GRENZE);
}	 

{D}
{
	w := max (Feld, 1, GRENZE);
	if w <= GRENZE then
	  write (max (Feld, w, w));
}

{E}
	w1 := max (Feld, 1, GRENZE);
	w2 := max (Feld, 4, GRENZE-1);
	writeln(w1);
	writeln(w2);
	if (0 < w2) and (w1 <= GRENZE) then
	begin
	  w := max (Feld, 2, GRENZE);
	  w := max (Feld, 1, w)
	end; 
	  
	 
END.

