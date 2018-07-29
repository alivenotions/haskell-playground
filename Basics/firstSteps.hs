-- getting familiar with the syntax

sayHello :: String -> IO ()
sayHello x = putStrLn("Hello, " ++ x  ++ "!")

triple :: Integer -> Integer
triple x = x * 3

square :: Integer -> Integer
square x = x ^ 2

add :: Integer -> Integer -> Integer
add x y = x + y

adderMultiplier :: 
  (Integer -> Integer) ->
      (Integer -> Integer -> Integer) ->
        Integer ->
          Integer ->
            Integer
adderMultiplier f g x y = f $ g x y

areaOfCircle :: Float -> Float
areaOfCircle r = 3.14 * r * r
