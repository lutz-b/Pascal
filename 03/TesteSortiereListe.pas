program TesteSortiereListe(input, output);

  type
  tNatZahl = 0..maxint;
  tRefListe = ^tListe;
  tListe = record
             info : tNatZahl;
             next : tRefListe;
           end;

  var
  RefListe : tRefListe;
  
  procedure GibListeAus(inListe : tRefListe);
{ Gibt die Elemente von inListe aus }
  var Zeiger : tRefListe;
begin
  Zeiger := inListe;
  while Zeiger <> nil do
  begin
    writeln(Zeiger^.info);
    Zeiger := Zeiger^.next;
  end; { while }
end; { GibListeAus }

  procedure SortiereListe (var ioRefListe : tRefListe);
  { sortiert eine lineare Liste aufsteigend }
  var Zeiger, ZeigerEinfuegen, HilfsZeiger : tRefListe;
  GroessteZahl : tNatZahl;
  begin
	Zeiger := ioRefListe;
	
	if Zeiger <> nil then
	begin
		while Zeiger^.next <> nil do
		begin
			GroessteZahl := Zeiger^.info;
			{writeln('1.while: ' , Zeiger^.info , ' - ', GroessteZahl);}
			
			if GroessteZahl < Zeiger^.next^.info then	{bereits sortiert}
			begin
				Zeiger := Zeiger^.next;
				GroessteZahl := Zeiger^.info;
			end
			else {if GroessteZahl < Zeiger^.next^.info}
			begin
				ZeigerEinfuegen := ioRefListe;
				HilfsZeiger  := ioRefListe;
				{finde stelle zum einfuegen}
				while HilfsZeiger^.info < Zeiger^.next^.info do
				begin
					{writeln('2.while: ' , HilfsZeiger^.info);}
					{readln();}
					ZeigerEinfuegen := HilfsZeiger; {ZeigerEinfuegen ist immer auf dem vorherigen Element vor Hilfsteiger}
					HilfsZeiger := HilfsZeiger^.next;
				end; {while HilfsZeiger^.info < GroessteZahl}
				
				{writeln('Umhaengen: ' , ZeigerEinfuegen^.info, ' - ',HilfsZeiger^.info, ' - ', Zeiger^.next^.info);}
				{readln();}
				
				if HilfsZeiger = ZeigerEinfuegen then {falls am Anfang eingefügt wird}
				begin
					ioRefListe := Zeiger^.next;
					{setze inout Parameter auf den neuen Start }
					
					Zeiger^.next := Zeiger^.next^.next;
					ioRefListe^.next := HilfsZeiger;
				end
				else
				begin
					{fuege zwischen den Elementen ein}
					ZeigerEinfuegen^.next := Zeiger^.next;
					Zeiger^.next := Zeiger^.next^.next;
					ZeigerEinfuegen^.next^.next := HilfsZeiger;
				end;
				
				
				{writeln('Umhaengen ende!');}
				{GibListeAus(ioRefListe);}
				
			end; {if GroessteZahl < Zeiger^.next^.info}
		end {while Zeiger^.next <> nil}
	end {if Zeiger <> nil}
  end;
  
  procedure Anhaengen(var ioListe : tRefListe;
                        inZahl : tNatZahl);
{ Haengt inZahl an ioListe an }
  var Zeiger : tRefListe;
begin
  Zeiger := ioListe;
  if Zeiger = nil then
  begin
    new(ioListe);
    ioListe^.info := inZahl;
    ioListe^.next := nil;
  end
  else
  begin
    while Zeiger^.next <> nil do
      Zeiger := Zeiger^.next;
    { Jetzt zeigt Zeiger auf das letzte Element }
    new(Zeiger^.next);
    Zeiger := Zeiger^.next;
    Zeiger^.info := inZahl;
    Zeiger^.next := nil;
  end;
end;

procedure ListeEinlesen(var outListe:tRefListe);
{ liest eine durch Leerzeile abgeschlossene Folge von Integer-
  Zahlen ein und speichert diese in der linearen Liste RefListe. }
  var
  Liste : tRefListe;
  Zeile : string;
  Zahl, Code : integer;
begin
  writeln('Bitte geben Sie die zu sortierenden Zahlen ein.');
  writeln('Beenden Sie Ihre Eingabe mit einer Leerzeile.');
  Liste := nil;
  readln(Zeile);
  val(Zeile, Zahl, Code); { val konvertiert String nach Integer }
  while Code=0 do
  begin
    Anhaengen(Liste, Zahl);
    readln(Zeile);
    val(Zeile, Zahl, Code);
  end; { while }
  outListe := Liste;
end; { ListeEinlesen }



begin
  ListeEinlesen(RefListe);
  SortiereListe(RefListe);
  writeln('Ergebnis!');
  GibListeAus(RefListe)
end.
