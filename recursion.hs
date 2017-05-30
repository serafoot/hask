product' :: [Int] -> Int
product' [] = 1
product' (n:ns) = n * product' ns

drop' :: Int -> [a] -> [a]
drop' 0 []         = []
drop' 0 (x:xs)     = x:xs
drop' n []     = []
drop' n (x:xs) = drop' (n-1) xs

init' :: [a] -> [a]
init' [_]    = []
init' (x:xs) = x:init' xs
