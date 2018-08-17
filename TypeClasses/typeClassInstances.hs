data Trivial =
  Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True

instance Show Trivial where
  show _ = "Trivial!"
