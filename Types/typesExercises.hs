module TypesExercises where

functionH :: [a] -> a
functionH (x:_) = x

functionC :: (Ord a) => a -> a -> Bool
functionC x y = if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y

i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

c' :: a -> b -> b
c' x y = y

-- due to alpha equivalence c and c'' are same
c'' :: b -> a -> b
c'' s t = s

r :: [a] -> [a]
r (x:xs) = xs

co :: (b -> c) -> (a -> b) -> (a -> c)
-- co f g = f . g
co = (.)

a :: (a -> c) -> a -> c
-- a f x = f x
a = ($)

a' :: (a -> c) -> a -> a
a' f x = x

fstString :: [Char] -> [Char]
fstString x = x ++ " rains!"

sndString :: [Char] -> [Char]
sndString x = x ++ " boo!"

sing :: [Char]
sing = if (x < y) then fstString x else sndString y
  where x = "Singing"
        y = "Shoo"

main :: IO()
main = do
  print $ 1 + 2
  putStrLn "10"
  print (negate $ -1)
  print ((+) 0 blah)
    where blah = negate 1
