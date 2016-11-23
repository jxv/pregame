module Pregame.Either
  ( module X
  , maybeToLeft
  , maybeToRight
  ) where

import Data.Either.Combinators as X
  ( isLeft
  , isRight
  , leftToMaybe
  , rightToMaybe
  )

import Pregame.Base

maybeToLeft :: b -> Maybe a -> Either a b
maybeToLeft _ (Just x) = Left x
maybeToLeft y Nothing  = Right y

maybeToRight :: b -> Maybe a -> Either b a
maybeToRight _ (Just x) = Right x
maybeToRight y Nothing  = Left y
