-- absolute value using conditional expressions
abs' :: Int -> Int
abs' n = if n >= 0 then n else -n

-- sign of a number using conditional expressions
signum' :: Int -> Int
signum' n = if n < 0 then -1 else
               if n == 0 then 0 else 1

-- remember that an else branch is always necessary and note that 
-- identation must refer to the different blocks


-- Guarded Equations
absG :: Int -> Int
absG n | n >= 0    = n
       | otherwise = -n

signumG :: Int -> Int
signumG n | n < 0       = -1 
          | n == 0      = 0
          | n > 0       = 1

-- Pattern matching

notP :: Bool -> Bool
notP False = True
notP True  = False

and' :: Bool -> Bool -> Bool
and' True True   = True
and' True False  = False
and' False True  = False
and' False False = False
-- wildcard pattern can be used  
--   this is better becase if the first argument
--   is false then (thanks to lazyness) the second
--   argument is not evaluated
andW True True    = True
andW _ _          = False 

