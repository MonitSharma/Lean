-- Simple expressions
#eval 1+ 2 * 5

-- Getting started with strings
#eval String.append "Hello," "Lean"

-- Using multiple strings in a row

#eval String.append "great " (String.append "oak " "Tree")

-- Using if-then-else or conditional expressions

#eval String.append "it is " (if 1 > 2 then "yes" else "no")

-- Using strings

#eval String.append "it, " " is"

-- Simple Addition

#eval 42+19

-- Trying Exercise question to see what the output will be:

#eval String.append "A" (String.append "B" "C")

-- Correcting the question to see what the output will be:

#eval  String.append "C" (String.append "A" "B")

-- Trying to see what the output will be:

#eval if 3 ==3 then 5 else 7

-- Trying to see what the output will be:

#eval if 3 == 4 then "equal" else "not equal"
