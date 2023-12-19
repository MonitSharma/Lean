-- Using Natural Numbers as a type
#eval (1+2:Nat)

-- Seeing that natural numbers do not have a limit of unsigned integers, hence no underflow
#eval (1-2)

-- if you want to use signed integers, use Int
#eval (1-2:Int)

-- use #check to check the type of an expression
#check (1-2 : Int)

-- this code will not compile
#check String.append "hello" ["  ","world"]
