module Pregame.Aeson
  ( module X
  , noPrefixDeriveOptions
  , tailDeriveOptions
  ) where

import Data.Aeson as X
  ( ToJSON
  , FromJSON
  )
import Data.Aeson.TH as X
  ( deriveJSON
  )

import Data.Aeson.Types
  ( defaultOptions
  , Options(fieldLabelModifier)
  )
import Pregame.Base

noPrefixDeriveOptions :: String -> Options
noPrefixDeriveOptions prefix = defaultOptions
  { fieldLabelModifier = lowerFirstChar . drop (length prefix)
  }
  where
    lowerFirstChar :: String -> String
    lowerFirstChar [] = []
    lowerFirstChar (x:xs) = toLower x : xs

tailDeriveOptions :: Options
tailDeriveOptions = defaultOptions { fieldLabelModifier = drop 1 }
