module Print3 where

-- myGreeting has the type String
myGreeting :: String
myGreeting = "hello" ++ " " ++ "world!"
-- myGreeting = (++) "hello" " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  -- where secondGreeting = concat [hello, " ", world]
  where secondGreeting = (++) hello $ (++) " " world
