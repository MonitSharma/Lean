#check 1.2


-- What does it say for the negative numbers?

#check -454.189735


-- With decimal it is float, without it you have to specity the type

#check 0.0
-- this is a float

#check 0
-- this is an nat

#check (0 : Float)
-- this is a float


-- Cartesian point in structure

structure Point where
  x : Float
  y : Float
deriving Repr


def origin : Point := { x := 0, y := 0 }


#eval origin

#eval origin.x

#eval origin.y

-- write a function to add two points
def addPoints (p1 : Point) (p2 : Point) : Point :=
  { x := p1.x + p2.x, y := p1.y + p2.y}

-- let's test it
#eval addPoints origin origin


#eval addPoints { x := 1, y := 2} { x := 3, y := 4}


-- Let's write a function that finds the distance between two points
def distance (p1: Point) (p2: Point) : Float :=
  Float.sqrt ((p1.x - p2.x)^2.0 + (p1.y - p2.y)^2.0)


-- Let's test it
#eval distance { x := 1, y := 2} { x := 3, y := 4}  -- should be 2.828427
