module Pregame.UnorderedContainers
  ( module X
  , LazyHashMap
  , StrictHashMap
  ) where

import Data.HashSet as X
  ( HashSet
  )
import qualified Data.HashMap.Lazy as Lazy (HashMap)
import qualified Data.HashMap.Strict as Strict (HashMap)

type LazyHashMap = Lazy.HashMap
type StrictHashMap = Strict.HashMap
