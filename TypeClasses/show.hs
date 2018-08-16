module Show where

data Mood = Blah

-- A minimal implementation of an instance of Show only requires that
-- show or showsPrec be implemented
-- If this instance of Show is not there then trying to show Blah
-- throws an error
instance Show Mood where
  show _ = "Blah!"
