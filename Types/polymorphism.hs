module Polymorphism where

-- only two functions can be written with a -> a -> a
true :: a -> a -> a
true x y = x

false :: a -> a -> a
false x y = y

-- if Num a is not provided in the context of add then it fails
-- at compile time
add :: Num a => a -> a -> a
add x y = x + y

second :: a -> b -> b
second x y = y
