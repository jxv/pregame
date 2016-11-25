module Pregame.Safe
  ( module X
  ) where

import Safe as X
  ( readMay
  , tailMay
  , headMay
  , initMay
  , lastMay
  , minimumMay
  , maximumMay
  , foldr1May
  , foldl1May'
  , scanl1May
  , scanr1May
  , cycleMay
  , atMay
  , toEnumMay
  )
import Safe.Exact as X
  ( takeExactMay
  , dropExactMay
  , splitAtExactMay
  , zipExactMay
  , zipWithExactMay
  ) 
