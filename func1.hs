isDigit :: Char -> Bool
isDigit c = c >= '0' &&  c <= '9'

evenr' :: Integral a => a -> Bool
even' n = n `mod` 2 == 0
