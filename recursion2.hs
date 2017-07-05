-- factorial using the product function
fac :: Int -> Int
fac n = product[1..n]

-- factorial using a recursive definition
facR :: Int -> Int
facR 0 = 1 -- BASE CASE
facR n = n * facR (n-1)


multip :: Int -> Int -> Int
multip m  0 = 0
multip m n  = m + (multip m (n-1))
