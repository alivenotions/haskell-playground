module StringExercise where

customStr :: String
customStr = "Curry is awesome"

exclaim :: String -> String
exclaim a = a ++ "!"

returnFourth :: [Char] -> [Char]
returnFourth a = drop 4 $ take 5 "Curry is awesome"

dropNine :: String -> String
dropNine a = drop 9 a

thirdLetter :: String -> Char
thirdLetter str = str !! 2

letterIndex :: Int -> Char
letterIndex x = str !! x
  where str = customStr

-- reverse function
-- a horrible implementation for the sake of illustration
-- of take and drop
rvrs :: String -> String
rvrs x = concat [
    drop 9 x,
    " ",
    take 2 $ drop 6 x,
    " ",
    take 5 x
  ]

main :: IO ()
main = print $ rvrs "Curry is awesome"
