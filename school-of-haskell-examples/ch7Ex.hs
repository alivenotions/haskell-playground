import Data.Char

type Point = (Double, Double)

toInts :: String -> [Int]
toInts = map digitToInt

squares :: [Int] -> [Int]
squares = map (\x -> x * x)

inCircle2 :: [Point] -> [Point]
inCircle2 = filter (\ (x, y) -> sqrt (x * x + y * y) <= 2.0)

main =
  -- print $ toInts "30750"
  -- print $ squares [1..10]
  print $ inCircle2 [(0, 0), (2, -2), (1, -1), (1.9, 0.1), (10, 1)]
