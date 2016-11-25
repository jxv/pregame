module Pregame.Containers
  ( module X
  ) where

import Data.Graph as X
  ( Graph
  , Table
  , Bounds
  , Edge
  , Vertex
  )
import Data.Map as X
  ( Map
  )
import Data.Sequence as X
  ( Seq
  )
import Data.IntSet as X
  ( IntSet
  )
import Data.Set as X
  ( Set
  )
import Data.Tree as X
  ( Tree
  , Forest
  )
import qualified Data.Map.Strict as Strict (Map)
import qualified Data.IntMap.Strict as Strict (IntMap)

type StrictMap = Strict.Map
type StrictIntMap = Strict.IntMap
