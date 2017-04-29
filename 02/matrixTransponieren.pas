


program matrix;

const
  GROESSE2 = 5;
  type
  tMatrix = array [1..GROESSE2,1..GROESSE2] of integer;

  var
  X, A ,B,C,D,E: tMatrix;
  
  i,
  j,k : integer;
  
  function MatrixAusgabe(Matrix : tMatrix; GROESSE : integer) : boolean;
  { Gibt die Matrix auf der Konsole aus }
  var i,
  j : integer;
  begin
	MatrixAusgabe := true;
	for i := 1 to GROESSE do
	begin
		for j := 1 to GROESSE do
			write( Matrix[i,j]: 3,' ');
		
		writeln();
	end
  end;
  
  
    function TransponierenA(A: tMatrix; GROESSE : integer) : tMatrix;
  { Transponiert die Matrix, vielleicht ... }
  var
  tauschPuffer,
  i,
  j : integer;
  begin
  for i := 1 to GROESSE-1 do
    for j := i+1 to GROESSE do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
    TransponierenA := A;
    writeln('TransponierenA=');
    MatrixAusgabe(A, GROESSE)
  end;
  
  function TransponierenB(A: tMatrix; GROESSE : integer) : tMatrix;
  { Transponiert die Matrix, vielleicht ... }
  var
  tauschPuffer,
  i,
  j : integer;
  begin
  for i := 1 to GROESSE do
    for j := 1 to i do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
    TransponierenB := A;
    writeln('TransponierenB=');
    MatrixAusgabe(A, GROESSE)
  end;
  
    function TransponierenC(A: tMatrix; GROESSE : integer) : tMatrix;
  { Transponiert die Matrix, vielleicht ... }
  var
  tauschPuffer,
  i,
  j : integer;
  begin
  for i := 1 to GROESSE do
    for j := 1 to GROESSE do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
    TransponierenC := A;
    writeln('TransponierenC=');
    MatrixAusgabe(A, GROESSE)
  end;

function TransponierenD(A: tMatrix; GROESSE : integer) : tMatrix;
  { Transponiert die Matrix, vielleicht ... }
  var
  tauschPuffer,
  i,
  j : integer;
  begin
  for i := 1 to GROESSE do
    for j := 1 to GROESSE-i do
    begin
      tauschPuffer := A[i,j];
      A[i,j] := A[j,i];
      A[j,i] := tauschPuffer
    end;
    TransponierenD := A;
    writeln('TransponierenD=');
    MatrixAusgabe(A, GROESSE)
  end;

    function TransponierenE(A: tMatrix; GROESSE : integer) : tMatrix;
  { Transponiert die Matrix, vielleicht ... }
  var
  tauschPuffer,
  i,
  j : integer;
  begin
  for i := 1 to GROESSE-1 do
    for j := i+1 to GROESSE do
    begin
      tauschPuffer := A[i,j];
      A[j,i] := A[i,j];
      A[j,i] := tauschPuffer
    end;
    TransponierenE := A;
    writeln('TransponierenE=');
    MatrixAusgabe(A, GROESSE)
  end;

BEGIN
	k := 1;
	for i := 1 to GROESSE2 do
		for j := 1 to GROESSE2 do
		begin
			X[i,j] := k;
			k := k+1;
		
			{if i=j then
				A[i,j] := i;
			
			if i>j then
				A[i,j] := i+j;
			
			if(i<j) then
				A[i,j] := i*j;}
		end;
	
	writeln('X=');
	MatrixAusgabe(X, GROESSE2);
	
	A := TransponierenA(X, GROESSE2);
	
	B := TransponierenB(X, GROESSE2);
	
	C := TransponierenC(X, GROESSE2);
	
	D := TransponierenD(X, GROESSE2);
	
	E := TransponierenE(X, GROESSE2);
	
END.

