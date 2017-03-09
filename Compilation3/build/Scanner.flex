/*
 * analyseur lexical du langage exemple-expr:
 * (voir support de cours CUP)
 *
 * auteurs : GHARNATI & KELLER
 * (c) 2017
 */

package fr.ul.miage.timestamp.generated;
import java_cup.runtime.Symbol;

%%

/* options */
%line
%public
%cup

/* macros */
ADD     = "+"
SUB		= "-"
MUL		= "*"
DIV		= "/"
SUP		= ">"
SUPEG	= ">="
INF		= "<"
INFEG	= "<="
EGL		= "="
DIFF	= "!="
PO		= "("
PF		= ")"
AO		= "{"
AF		= "}"
VIR		= ","
PVIR	= ";"
NUM		= [0-9]+
ENT		= "ent"
AFFECT	=
VAR		=
RD		=
PRT		=
SI		=
SINON	=
TQ		=
MAIN	=
RETURN	=
ENDL    =  	\n

%%

/* regles */
"Jan"		{ return new Symbol(sym.JAN);}
"Feb"		{ return new Symbol(sym.FEV);}
"Mar"		{ return new Symbol(sym.MAR);}
"Apr"		{ return new Symbol(sym.AVR);}
"May"		{ return new Symbol(sym.MAI);}
"Jun"		{ return new Symbol(sym.JUIN);}
"Jul"		{ return new Symbol(sym.JUIL);}
"Aug"		{ return new Symbol(sym.AOU);}
"Sep"		{ return new Symbol(sym.SEP);}
"Oct"		{ return new Symbol(sym.OCT);}
"Nov"		{ return new Symbol(sym.NOV);}
"Dec"		{ return new Symbol(sym.DEC);}
":"         { return new Symbol(sym.DP);}
"/"         { return new Symbol(sym.SL);}
"["         { return new Symbol(sym.CO);}
"]"         { return new Symbol(sym.CF);}
{DECAL}     { return new Symbol(sym.DECAL);}
{NUM}       { return new Symbol(sym.NUM);}
{STR}       { return new Symbol(sym.STR);}
{TIR}       { return new Symbol(sym.TIR);}
{ENDL}       { return new Symbol(sym.ENDL);}
{IP}       { return new Symbol(sym.IP,yytext());}
{SEP}       { ; }
{FIN}		{ return new Symbol(sym.EOF);}
.			{ return null;}

