module Practice where

mult      = x * y
  where x = 4
        y = 5

waxOn = x * 5
  where x = y ^ 2
        y = z + 8
        z = 7

triple :: Integer -> Integer
triple x = x * 3

waxOff x = triple x
