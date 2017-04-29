{
   unbenannt2.pas
   
   Copyright 2017 lbran <lbran@DESKTOP-LIOPMH6>
   
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
   MA 02110-1301, USA.
   
   
}


program untitled;

uses crt;

var
b : boolean;
i : integer;
resultb : boolean;
resulti : integer;
resultr : real;





BEGIN

	b:= true;
	i := 5;
	
	
	resultb	:= b;

	resultb := b and (i > 0);
	resultb := i > 0 and b;
	resultr := i / 3;
	resultb := (i > 0) or b = false;
	resulti := i div 3.0;
	
	
	
END.

