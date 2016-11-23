module Pregame.Base
  ( module X
  , done
  ) where

import GHC.Base as X
  ( (.)
  )
import Data.Bool as X
  ( Bool(..)
  )
import Data.Char as X
  ( Char
  )
import Data.Int as X
  ( Int
  , Int8
  , Int16
  , Int32
  , Int64
  )
import Data.Integer as X
  ( Integer
  )
import GHC.Float as X
  ( Float
  )
import GHC.Double as X
  ( Double
  )
import GHC.Enum as X
  ( Enum(..)
  )
import Data.Eq as X
  ( Eq(..)
  )
import Data.Monoid as X
  ( Monoid(..)
  , (<>)
  )
import Data.Functor as X
  ( Functor(..)
  , ($>)
  , (<$>)
  , void
  )
import Data.Foldable
  ( Foldable
  , foldr
  , foldl'
  )
import Data.List as X
  (
  )
import Control.Appliative as X
  ( Applicative(pure, (<*>))
  , Alternative((<|>))
  )
import Prelude (Monad(return))

done :: Monad m => m ()
done = return ()
