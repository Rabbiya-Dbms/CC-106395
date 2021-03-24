## CC Spring 2021: Project Phase 1 ##

## PROJECT MEMBERS ##
StdID | Name
------------ | -------------
**63372** | **Rabbiya Mehmood** 
62765 | Ayesha Aman


## Language Selected ##

PYTHON

## Example of main constructs ##
```
int main(){

}
```

## Lexical Specification ##
The lexical structure of computer languages is similar to that of human languages. Tokens make up the source code of a Python programme. Tokens are components of atomic code. We have comments, variables, literals, operators, delimiters, and keywords in Python.

Python Comments:
We use comments to help them understand the source code. The # character is followed by all comments in Python.
_____________________________
def main():
    print("python comment")

main()
_____________________________
Python Variables:
A variable is a name for something that has a value. A number cannot be the first character in a variable. This makes it easier for the Python interpreter to tell the difference between a number and a variable.
_____________________
num = 10
Num = 11
NUMB = 12

print(num, Num, NUM)
_____________________
variables are case sensitive this means that num. Num and NUM are three different identifiers.

Python literal:
In Python source code, a literal is any notation for expressing a value. A literal is given a value at compile time, while a variable is given a value at runtime.
_____________________________
name1 = "Bob"
age1 = 20

print(name1, age1)
_____________________________
Bob and 21 are literals

Python Operators:
An operator is a symbol which is used to do something with a value.
_____________________________________
+    -    ~    *    **    /    //
%    <<    >>    &    |    ^
and    or    not    in    not in
is    is not    <   >    !=
==    <=    >=
_____________________________________
Python Indentation:
In Python, indentation is used to separate blocks. Python uses white space instead of curly brackets or keywords like begin and end, Certain statements are followed by an increase in indentation, while the existing block is ended by a decrease in indentation. Indentation levels should be separated by four spaces.
________________________
if age > 20:
    print("adult")

for i in range(5):
    print(i)
________________________  
A code block is expected after the if keyword. On a new line, a new declaration is written, indented by four space characters. The indentation for the following keyword is returned to its original level. The for keyword creates a new code block with indented statements.

Python Keywords:
In the Python programming language, a keyword is a reserved word. In a computer programme, keywords are used to perform a particular task. Import other code, for example, or execute repetitive tasks or logical operations. A keyword cannot be used as a regular variable by a programmer.
______________________________________________
and       del       global      not      with
as        elif      if          or       yield
assert    else      import      pass     False
break     except    in          raise    None
class     finally   is          return   True
continue  for       lambda      try
def       from      nonlocal    while
______________________________________________


## Language CFG ##
expr:   ID | STR | NUM | list
list:   ( seq )  
seq:       | expr seq


**Example**:
________________________________________________
Start symbol: S
S → ID | STR | NUM | l
l → ( s)
s → ɛ | expr | s
Some strings from the language of this grammar:
   NUM TR
  ( expr ) 
    ( ) TRTR
   ( expr ) TR
  ID TR
 ID 
    NUM TRTR
     ID TRTRTRTR
    ID TRTRTR
   ID TRTR
   __________________________________________________


PARSE CFG RE 

(\s*                # leading whitespace
                              (\w+(?:/\w+)?)\s*    # lhs
                              (?:[-=]+>)\s*        # arrow
                              (?:(                 # rhs:
                                   "[^"]+"         # doubled-quoted terminal
                                 | '[^']+'         # single-quoted terminal
                                 | \w+(?:/\w+)?    # non-terminal
                                 | \|              # disjunction
                                 )
                                 \s*)              # trailing space
                                 *$)            # zero or more copies
                          
SPLIT CFG RE (\w+(?:/\w+)?|[-=]+>|"[^"]+"|'[^']+'|\|)
