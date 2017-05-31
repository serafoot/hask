addLambda = \x -> (\y -> x + y)

const' :: a -> b -> a
const' x = \_ -> x

odds' :: Int -> [Int]
odds' n = map f [0..n-1]
          where f x = x*2 + 1

oddsLambda n = map (\x -> x*2 + 1) [0..n-1]
