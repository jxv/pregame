module Pregame.Beware
  ( error
  , undefined
  ) where

import qualified Prelude as P (error, undefined)

import Pregame.Base
import Pregame.Text

{-# WARNING error "Remove 'error' usage" #-}
error :: Text -> a
error = P.error . unpack

undefined :: a
undefined = P.undefined
