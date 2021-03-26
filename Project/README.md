## CC Spring 2021: Project Phase 1 ##

## PROJECT MEMBERS ##
StdID | Name
------------ | -------------
**63372** | **Rabbiya Mehmood** 
62765 | Ayesha Aman


## Language Selected ##

Teeny Tiny Language

## Example of main constructs ##
```


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
