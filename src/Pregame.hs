{-# LANGUAGE BangPatterns #-}
module Pregame
  ( module X
  , ($!)
  , fi
  , io
  ) where

import Pregame.Aeson as X
import Pregame.Array as X
import Pregame.Base as X
import Pregame.Bytestring as X
import Pregame.Containers as X
import Pregame.DataDefault as X
import Pregame.Either as X
import Pregame.Hashable as X
import Pregame.Lens as X
import Pregame.Megaparsec as X
import Pregame.Mtl as X
import Pregame.Pointed as X
import Pregame.Safe as X
import Pregame.Semigroups as X
import Pregame.Stm as X
import Pregame.Text as X
import Pregame.TextConversions as X
import Pregame.Time as X
import Pregame.Tuple as X
import Pregame.UnorderedContainers as X
import Pregame.Vector as X

import Prelude (Num(..) , Integral(..))
infixr 0 $!
($!) :: (a -> b) -> a -> b
f $! x = let !vx = x in f vx

fi :: (Num b, Integral a) => a -> b
fi = fromIntegral
