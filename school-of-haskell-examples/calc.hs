module Calc where
import Data.Char

data Token = TokOp Operator
            | TokIdent String
            | TokNum Int
      deriving (Show, Eq)

data Operator = Plus | Minus | Times | Div
  deriving (Show, Eq)

data Expression

operator :: Char -> Operator
operator c  | c == '+' = Plus
            | c == '-' = Minus
            | c == '*' = Times
            | c == '/' = Div

tokenize :: String -> [Token]
tokenize [] = []
tokenize (c : cs)
  | elem c "+-*/" = TokOp (operator c)  : tokenize cs
  | isDigit c = TokNum (digitToInt c)   : tokenize cs
  | isAlpha c = TokIdent [c]            : tokenize cs
  | isSpace c = tokenize cs
  | otherwise = error $ "Cannot tokenize " ++ [c]

parse :: [Token] -> Expression
parse = undefined

evaluate :: Expression -> Double
evaluate = undefined

main :: IO ()
main = print $ tokenize " 1 + 4 / x "


-- opToStr :: Operator -> String
-- opToStr Plus = "+"
-- opToStr Minus = "-"
-- opToStr Times = "*"
-- opToStr Div = "/"

-- showContent :: Token -> String
-- showContent (TokOp op) = opToStr op
-- showContent (TokIdent str) = str
-- showContent (TokNum i) = show i
