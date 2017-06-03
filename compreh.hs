-- concat can be defined using list comprehension
-- this function concatenate together all the sub-lists
-- into a single list 
concat' :: [[a]] -> [a]

concat' xss = [x | xs <- xss, x <- xs]

-- wildcard patterns can be useful in generators to discard
-- certain elements from the list

firsts :: [(a,b)] -> [a]
firsts ps = [x | (x,_) <- ps]

lungh :: [a] -> Int
lungh xs = sum [1 | _ <- xs]

-- List comprehensions can also use logical expressions 
-- to filters values produce from generators, 
-- these are called _guards_

fattori :: Int -> [Int]
fattori n = [x | x <- [1..n], n `mod` x == 0]

-- check if it's prime
primo :: Int -> Bool
primo n = fattori n == [1,n]

-- now we can define a function that gives us the
-- list of prime numbers up to a defined limit
numPrimi :: Int -> [Int]
numPrimi n = [x | x <- [2..n], primo x]

-- trova is a function that returns all the values that are
-- associated with a given key in a table

trova :: Eq a => a -> [(a,b)] -> [b]
trova k ts = [v | (k',v) <- ts, k == k'] -- I can't call k the first elem in ts

-- accoppia creates a list of pairs from adjacent elements in a list
accoppia :: [a] -> [(a,a)]
accoppia xs =  zip xs (tail xs)

-- ordinato checks if a a list is ordered looking at all pairs 
-- of adjacent elements 
ordinato :: Ord a => [a] -> Bool
ordinato xs = and [x <= y | (x,y) <- accoppia xs]

-- posizioni returns the list of all positions at which a value occurs
-- ina list
posizioni :: Eq a => a -> [a] -> [Int]
posizioni x xs = [i | (x',i) <- zip xs [0..], x == x']



