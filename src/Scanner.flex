/*
 * analyseur lexical du langage exemple-expr:
 * (voir support de cours CUP)
 *
 * auteurs : DESSI, GASIOROWSKI, GHARNATI & KELLER
 * (c) 2017
 */

package fr.ul.miage.timestamp.generated;
import java_cup.runtime.Symbol;

%%

/* options */
%line
%public
%cup
%debug

/* macros */
NUM		= [0-9]+
IDF		= [a-zA-Z]+
ENDL    =  	\n
COMMENTAIRE = "%".*"\n"

%%

/* regles */
"+"		{ return new Symbol(sym.ADD);}
"-"		{ return new Symbol(sym.SUB);}
"*"		{ return new Symbol(sym.MUL);}
"/"		{ return new Symbol(sym.DIV);}
">"		{ return new Symbol(sym.SUP);}
">="		{ return new Symbol(sym.SUPEG);}
"=="		{ return new Symbol(sym.EGL);}
"<"		{ return new Symbol(sym.INF);}
"<="		{ return new Symbol(sym.INFEG);}
"!="		{ return new Symbol(sym.DIFF);}
"ent"		{ return new Symbol(sym.ENT);}
"("		{ return new Symbol(sym.PO);}
")"         { return new Symbol(sym.PF);}
"{"         { return new Symbol(sym.AO);}
"}"         { return new Symbol(sym.AF);}
","         { return new Symbol(sym.VIR);}
";"         { return new Symbol(sym.PVIR);}
"return"         { return new Symbol(sym.RETURN);}
"print"         { return new Symbol(sym.PRT);}
"main"         { return new Symbol(sym.MAIN);}
"si"         { return new Symbol(sym.SI);}
"sinon"         { return new Symbol(sym.SINON);}
"tq"         { return new Symbol(sym.TQ);}
"read()"         { return new Symbol(sym.RD);}
{NUM}       { return new Symbol(sym.NUM);}
{STR}       { return new Symbol(sym.STR);}
{ENDL}         { return new Symbol(sym.ENDL);}
{COMMENTAIRE}  {;}
.			{;}

