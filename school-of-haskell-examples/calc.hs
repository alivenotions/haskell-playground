module Calc where
import Data.Char

data Token = TokOp Operator
            | TokIdent String
            | TokNum Int
            | TokSpace
      deriving (Show, Eq)

data Operator = Plus | Minus | Times | Div
  deriving (Show, Eq)

data Expression

operator :: Char -> Operator
operator c  | c == '+' = Plus
            | c == '-' = Minus
            | c == '*' = Times
            | c == '/' = Div

tokenizeChar :: Char -> Token
tokenizeChar c  | elem c "+-*/" = TokOp (operator c)
                | isDigit c = TokNum (digitToInt c)
                | isAlpha c = TokIdent [c]
                | isSpace c = TokSpace
                | otherwise = error $ "Cannot tokenize " ++ [c]

deleteSpace :: [Token] -> [Token]
deleteSpace = filter (\t -> t /= TokSpace)

tokenize :: String -> [Token]
tokenize = map tokenizeChar

parse :: [Token] -> Expression
parse = undefined

evaluate :: Expression -> Double
evaluate = undefined

main :: IO ()
main = print $ deleteSpace $ tokenize " 1 + 4 / x "


-- opToStr :: Operator -> String
-- opToStr Plus = "+"
-- opToStr Minus = "-"
-- opToStr Times = "*"
-- opToStr Div = "/"

-- showContent :: Token -> String
-- showContent (TokOp op) = opToStr op
-- showContent (TokIdent str) = str
-- showContent (TokNum i) = show i
