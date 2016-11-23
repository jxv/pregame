module Pregame.Bytestring
  ( module X
  , LazyByteString
  ) where

import Data.ByteString as X
  ( ByteString
  )

import qualified Data.ByteString.Lazy as Lazy (ByteString)

type LazyByteString = Lazy.ByteString
