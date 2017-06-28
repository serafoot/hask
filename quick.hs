q :: Ord a => [a] -> [a]
q []     = [] 
q (x:xs) = q lower ++ [x] ++ q greater
           where
                lower   = [a | a <- xs, a <= x]
                greater = [b | b <- xs, b > x]
