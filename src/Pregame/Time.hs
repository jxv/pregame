module Pregame.Time
  ( module X
  ) where

import Data.Time.Clock.POSIX as X
  ( POSIXTime
  , getPOSIXTime
  )
import Data.Time.Clock as X
  ( UTCTime
  , getCurrentTime
  )
