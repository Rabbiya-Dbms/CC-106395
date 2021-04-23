# CC-106395: Teeny Tiny Parser #

### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**63372** | **Rabbiya Mehmood** <!--this is the group leader in bold-->
62765 | Ayesha Aman

## Project Description ##

To design a compiler is our project aim we choose the teeny tiny language which is sub language of python as python is a big language 
in this project first, we select the language in which we make our compiler then we design lexer and lastly parser.

- write grammar  in yacc when program runs flex parserize it in tokens streams then give it tw yacc parser to generate an output stream

## Language Selected ##

Teeny Tiny Language

## Example of main constructs ##
```
sample program:

 INT f2(INT x, INT y ) 
 BEGIN 
    INT z;
    z := x*x - y*y;
    RETURN z; 
 END 
 INT MAIN f1() 
 BEGIN
    INT x;
    READ(x, "A41.input");
    INT y;
    READ(y, "A42.input");
    INT z;
    z := f2(x,y) + f2(y,x);
    WRITE (z, "A4.output"); 
 END

While Loop:

PRINT "How many fibonacci numbers do you want?"
INPUT nums

LET a = 0
LET b = 1
WHILE nums > 0 REPEAT
    PRINT a
    LET c = a + b
    LET a = b
    LET b = c
    LET nums = nums - 1
ENDWHILE	

IF,ENDIF Loop:

LET minsofar = 0
LET maxsofar = 0
LET sum = 0

LET num = 0
PRINT "Enter number of inputs: "
INPUT num

LET i = 0
LET c = 0
WHILE i < num REPEAT
    INPUT c
    IF i == 0 THEN
        LET minsofar = c
        LET maxsofar = c
    ENDIF
    IF i != 0 THEN
        IF c < minsofar THEN
            LET minsofar = c
        ENDIF
        IF c > maxsofar THEN
            LET maxsofar = c
        ENDIF
    ENDIF
    LET sum = sum + c
    LET i = i + 1
ENDWHILE

PRINT "Min: "
PRINT minsofar
PRINT "Max: "
PRINT maxsofar
PRINT "Sum: "
PRINT sum
PRINT "Avg: "
PRINT sum / num

--------------------------

rread x ; iif  0 < x 
 thhen   fact := 1 ;
   rpeat     fact = fact * x ; 
    x := x - 1   untl x = 0 ;
     writte x eend


Loop:

read x;
if 0<x then
    fact:=1;
    repeat
        fact:=fact*x;
        x:=x-1
    until x=0;
    write fact
end


```

## Lexical Specification ##
The lexical structure of computer languages is similar to that of human languages. Tokens make up the source code of a Tiny programme. Tokens are components of atomic code. The Teeny Tiny language we're going to use is a BASIC dialect. The syntax is clear and straightforward.


**Keywords**| **Special symbols**| **Other**
--------|-----------------|-------
If |       +       |         Number(1 or more digits)
Then |    -       |
Else  |   *        |
End   |  /        |
Repeat | =         |       Identifier(1 or more letters)
Until  | <        |
Read   | (        |
Write  | )        |
none    |   ;       |
  none    |  :=       |
       
Tiny language tokens are divided into three groups: keywords, special symbols, and other tokens.


Keywords:   WRITE READ IF ELSE RETURN BEGIN END MAIN STRING INT REAL

Single-character separators:   ;  ,  (   )

Single-character operators:    +  -  *   /

Multi-character operators:    :=  ==   !=

Identifier: A letter is preceded by any number of letters or digits to form an identifier. x, x2, xx2, x2x, End, END2 are some examples of identifiers. End is a keyword, while END is an identifier. The following may not count as identifiers:
IF, WRITE, READ, .... (keywords are not counted as identifiers)
2x (identifier can not start with a digit)
Strings in comments are not identifiers.

Number is a sequence of digits, or a sequence of digits followed by a dot, and followed by digits.   
Number -> Digits | Digits '.' Digits
Digits -> Digit | Digit Digits
Digit  -> '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9'

Comments: string between /** and **/. Comments can be longer than one line. 

## CFG for Tiny ##
for program structure, statements and expressions:

Program -> MethodDecl MethodDecl*

Type -> INT | REAL |STRING 

MethodDecl -> Type [MAIN] Id '(' FormalParams ')' Block

FormalParams -> [FormalParam ( ',' FormalParam )* ]

FormalParam -> Type Id

Block -> BEGIN Statement+ END

Statement -> Block
           | LocalVarDecl  
           | AssignStmt   
           | ReturnStmt
           | IfStmt
	   | WriteStmt
	   | ReadStmt
        
LocalVarDecl -> Type Id ';' | Type AssignStmt  

AssignStmt  -> Id := Expression ';'
           |  Id := QString ';'
	   
ReturnStmt -> RETURN Expression ';'

IfStmt    -> IF '(' BoolExpression ')' Statement
            | IF '(' BoolExpression ')' Statement ELSE Statement
	    
WriteStmt -> WRITE '(' Expression ',' QString ')' ';'

ReadStmt  -> READ '(' Id ',' QString ')' ';'

Expression -> MultiplicativeExpr  (( '+' | '-' ) MultiplicativeExpr)*

MultiplicativeExpr -> PrimaryExpr (( '*' | '/' ) PrimaryExpr)*

PrimaryExpr -> Num  // Integer or Real numbers
             | Id            
             | '(' Expression ')'
             | Id '(' ActualParams ')'
	     
BoolExpression -> Expression '==' Expression 
                 |Expression '!=' Expression 
		 
ActualParams -> [Expression ( ',' Expression)*]

## Problems Faced ##
In phase one there is no problem it was very simple and easy same for phase 2 but when we are doing phase 3 we face some problems like in handling and using and in arangement of code according to equirenments.

### Problem 1: I don't know how to Code ###
we stuck sometime when creat logics 

### Problem 2: System Hangs and Windows Crashed ###
after installing ubuntu, windows system got crashed as our fyp is also in progree we face very difficulty whatever we will also discover using ubuntu online

## References ##
[1]Kuznetsov, A. S., et al. "Compiler-compiler of multi syntax programming languages for creating N-version software." Journal of Physics: Conference Series. Vol. 1333. No. 7. IOP Publishing, 2019.
[2]Penev, Ivaylo, and Milena Karova. "Implementation of a Training Parser Using Explicit Abstract Syntax Tree." Proceedings of the 20th International Conference on Computer Systems and Technologies. 2019.
[3]Levine, John. Flex & Bison: Text Processing Tools. " O'Reilly Media, Inc.", 2009.
