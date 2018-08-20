module Exercise where
import Data.Char

fib :: Integer -> Integer
fib n | n == 1    = 1
      | n == 2    = 1
      | otherwise = fib (n - 1) + fib (n - 2)

cat :: [a] -> [a] -> [a]
cat [] ys = ys
cat (x : xs) ys = x : cat xs ys

pig :: String -> String
pig = cat "pig"

toInts :: String -> [Int]
toInts [] = []
toInts (x : xs) = digitToInt x : toInts xs

acc :: [Int] -> Int
acc [] = 0
acc (x : xs) = x + acc xs

sumDig :: String -> Int
sumDig = acc . toInts

main :: IO ()
-- main = print $ fib 10
-- main = putStrLn $ show $ cat [1, 2, 3] [11, 2, 34]
-- main = putStrLn $ pig "sty"
main = print $ sumDig "2013"
