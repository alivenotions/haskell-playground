data Token
data Expression

tokenize :: String -> [Token]
tokenize = undefined

parse :: [Token] -> Expression
parse = undefined

evaluate :: Expression -> Double
evaluate = undefined

loop :: Int -> IO ()
loop n = do
  if n < 11
  then do
    putStrLn $ show (n * n)
    loop $ n + 1
  else 
    return ()

fact :: Int -> Int
fact n = if n > 0 then n * fact (n - 1) else 1

fullFact :: Integer -> Integer
fullFact n = if n > 0 then n * fullFact (n - 1) else 1

main :: IO ()
main = print $ fullFact 23
