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
Equals: a == b
Not Equals: a != b
Less than: a < b
Less than or equal to: a <= b
Greater than: a > b
Greater than or equal to: a >= b


If statement:

a = 33
b = 200
if b > a:
  print("b is greater than a")
  
  
  Elif
The elif keyword is pythons way of saying "if the previous conditions were not true, then try this condition".

Example
a = 33
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")


Else
The else keyword catches anything which isn't caught by the preceding conditions.

Example
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")
  
  
  Short Hand If
If you have only one statement to execute, you can put it on the same line as the if statement.

Example
One line if statement:

if a > b: print("a is greater than b")



Short Hand If ... Else
If you have only one statement to execute, one for if, and one for else, you can put it all on the same line:

Example
One line if else statement:

a = 2
b = 330
print("A") if a > b else print("B")


And
The and keyword is a logical operator, and is used to combine conditional statements:

Example
Test if a is greater than b, AND if c is greater than a:

a = 200
b = 33
c = 500
if a > b and c > a:
  print("Both conditions are True")


Or
The or keyword is a logical operator, and is used to combine conditional statements:

Example
Test if a is greater than b, OR if a is greater than c:

a = 200
b = 33
c = 500
if a > b or a > c:
  print("At least one of the conditions is True")
  
  
  Nested If
You can have if statements inside if statements, this is called nested if statements.

Example
x = 41

if x > 10:
  print("Above ten,")
  if x > 20:
    print("and also above 20!")
  else:
    print("but not above 20.")
    
    
    The pass Statement
if statements cannot be empty, but if you for some reason have an if statement with no content, put in the pass statement to avoid getting an error.

Example
a = 33
b = 200

if b > a:
  pass
  
  
  Python Loops
Python has two primitive loop commands:

while loops
for loops


The while Loop
With the while loop we can execute a set of statements as long as a condition is true.

Example
Print i as long as i is less than 6:

i = 1
while i < 6:
  print(i)
  i += 1
  
  The break Statement
With the break statement we can stop the loop even if the while condition is true:

Example
Exit the loop when i is 3:

i = 1
while i < 6:
  print(i)
  if i == 3:
    break
  i += 1
  
  
  The continue Statement
With the continue statement we can stop the current iteration, and continue with the next:

Example
Continue to the next iteration if i is 3:

i = 0
while i < 6:
  i += 1
  if i == 3:
    continue
  print(i)
  
  
  
  The else Statement
With the else statement we can run a block of code once when the condition no longer is true:

Example
Print a message once the condition is false:

i = 1
while i < 6:
  print(i)
  i += 1
else:
  print("i is no longer less than 6")
  
  
  Python For Loops
A for loop is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).

This is less like the for keyword in other programming languages, and works more like an iterator method as found in other object-orientated programming languages.

With the for loop we can execute a set of statements, once for each item in a list, tuple, set etc.

Example
Print each fruit in a fruit list:

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)
  
  
  Looping Through a String
Even strings are iterable objects, they contain a sequence of characters:

Example
Loop through the letters in the word "banana":

for x in "banana":
  print(x)
  
  
  
  
  The break Statement
With the break statement we can stop the loop before it has looped through all the items:

Example
Exit the loop when x is "banana":

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)
  if x == "banana":
    break



The continue Statement
With the continue statement we can stop the current iteration of the loop, and continue with the next:

Example
Do not print banana:

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    continue
  print(x)
  
  
  
  The range() Function
To loop through a set of code a specified number of times, we can use the range() function,
The range() function returns a sequence of numbers, starting from 0 by default, and increments by 1 (by default), and ends at a specified number.

Example
Using the range() function:

for x in range(6):
  print(x)
  
  
  Else in For Loop
The else keyword in a for loop specifies a block of code to be executed when the loop is finished:

Example
Print all numbers from 0 to 5, and print a message when the loop has ended:

for x in range(6):
  print(x)
else:
  print("Finally finished!")


Nested Loops
A nested loop is a loop inside a loop.

The "inner loop" will be executed one time for each iteration of the "outer loop":

Example
Print each adjective for every fruit:

adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]

for x in adj:
  for y in fruits:
    print(x, y)
    
    
    The pass Statement
for loops cannot be empty, but if you for some reason have a for loop with no content, put in the pass statement to avoid getting an error.

Example
for x in [0, 1, 2]:
  pass
  
  Python Arrays
Note: Python does not have built-in support for Arrays, but Python Lists can be used instead.

Arrays
Note: This page shows you how to use LISTS as ARRAYS, however, to work with arrays in Python you will have to import a library, like the NumPy library.

Arrays are used to store multiple values in one single variable:

Example
Create an array containing car names:

cars = ["Ford", "Volvo", "BMW"]


What is an Array?
An array is a special variable, which can hold more than one value at a time.

If you have a list of items (a list of car names, for example), storing the cars in single variables could look like this:

car1 = "Ford"
car2 = "Volvo"
car3 = "BMW"
However, what if you want to loop through the cars and find a specific one? And what if you had not 3 cars, but 300?

The solution is an array!

An array can hold many values under a single name, and you can access the values by referring to an index number.


Access the Elements of an Array
You refer to an array element by referring to the index number.

Example
Get the value of the first array item:

x = cars[0]


The Length of an Array
Use the len() method to return the length of an array (the number of elements in an array).

Example
Return the number of elements in the cars array:

x = len(cars)

Looping Array Elements
You can use the for in loop to loop through all the elements of an array.

Example
Print each item in the cars array:

for x in cars:
  print(x)
  
  
Adding Array Elements
You can use the append() method to add an element to an array.

Example
Add one more element to the cars array:

cars.append("Honda")


Removing Array Elements
You can use the pop() method to remove an element from the array.

Example
Delete the second element of the cars array:

cars.pop(1)


Array Methods
Python has a set of built-in methods that you can use on lists/arrays.

Method	Description
append()	Adds an element at the end of the list
clear()	Removes all the elements from the list
copy()	Returns a copy of the list
count()	Returns the number of elements with the specified value
extend()	Add the elements of a list (or any iterable), to the end of the current list
index()	Returns the index of the first element with the specified value
insert()	Adds an element at the specified position
pop()	Removes the element at the specified position
remove()	Removes the first item with the specified value
reverse()	Reverses the order of the list
sort()	Sorts the list
Note: Python does not have built-in support for Arrays, but Python Lists can be used instead



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
