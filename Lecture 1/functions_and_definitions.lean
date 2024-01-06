def hello := "hello"


def lean : String := "lean"

#eval String.append hello (String.append " " lean)


-- Let's make some meaningful functions
def add1 (n : Nat) : Nat := n + 1

#eval add1 7


def maximum (n : Nat) (k : Nat) : Nat := if n > k then n else k

#eval maximum (7+8) (2*7)

-- you can also check the function tye using #check
#check maximum

-- if you put the function in parantheses, you can see full type

#check (maximum)

-- Exercise 1:
-- define a function joinStringsWith with type Strings -> String -> String ->String
-- that creates a new string by placing its first argument between its second and third arguments
-- e.g. joinStringsWith ", " "hello" "lean" = "hello, lean"

def joinStringsWith (s : String) (s1 : String) (s2 : String) : String := s1 ++ s ++ s2

#eval joinStringsWith ", " "hello" "lean"

-- Exercise 2:
-- what is the type of joinStringsWith ": "?
-- check it with lean

#check (joinStringsWith ": ")

-- Exercise 3:
-- define a function volume with type Nat -> Nat -> Nat -> Nat that computes the volume of a rectangular prism
-- with the give height, width, and depth

def volume (h : Nat) (w : Nat) (d : Nat) : Nat := h * w * d

#eval volume 3 4 5

def Str : Type := String

def aStr : Str := "Jerry Hello"


-- Errors you may encounter
def NaturalNumber : Type := Nat

def thirtyEight : NaturalNumber := 38

-- this will give you an error because 38 is a Nat, not a NaturalNumber
-- work around this by using
def thirtyEight' : NaturalNumber := (38 : Nat)
