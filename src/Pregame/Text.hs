module Pregame.Text
  ( module X
  , LazyText
  ) where

import Data.Text as X
  ( Text
  , pack
  , unpack
  , lines
  , words
  , unlines
  , unwords
  )
import Data.Text.IO as X
  ( hGetContents
  , hGetLine
  , hPutStr
  , hPutStrLn
  , readFile
  , writeFile
  , appendFile
  , interact
  , getContents
  , getLine
  , putStr
  , putStrLn
  )
import qualified Data.Text.Lazy as Lazy (Text)

type LazyText = Lazy.Text
