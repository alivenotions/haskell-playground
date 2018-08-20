module PatternMatching where

norm :: [Double] -> Double
norm lst = sqrt (squares lst)

squares :: [Double] -> Double
squares [] = 0.0
squares (x : xs) = x * x + squares xs

decimate :: [a] -> [a]
decimate (x : _ : xs) = x : decimate xs
decimate (x : _) = x : []
decimate _ = []

zipLst :: ([a], [b]) -> [(a, b)]
zipLst ((x : xs), (y : ys)) = (x, y) : zipLst (xs, ys)
zipLst (_, _) = []

main :: IO ()
-- main = print (norm [1.1, 2.2, 3.3])
-- main = print $ decimate [1, 2, 3, 4, 5]
main = print $ zipLst ([1, 2, 3, 4], "Hello")
