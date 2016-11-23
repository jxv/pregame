{-# LANGUAGE BangPatterns #-}
module Pregame.Base
  ( module X
  , done
  , ($!)
  , fi
  ) where

import Data.Function as X
  ( (.)
  , ($)
  , (&)
  , const
  , flip
  , fix
  )
import Data.Bool as X
  ( Bool(..)
  , (&&)
  , (||)
  )
import Data.Bits as X
  ( Bits
  )
import Data.Char as X
  ( Char
  )
import Data.Int as X
  ( Int
  , Int8
  , Int16
  , Int32
  , Int64
  )
import GHC.Float as X
  ( Float
  , Double
  )
import GHC.Enum as X
  ( Enum
  )
import GHC.Num as X
  ( Num
  )
import GHC.Real as X
  ( Integral
  , fromIntegral
  )
import Data.Eq as X
  ( Eq((==))
  )
import Data.Monoid as X
  ( Monoid(mempty, mappend, mconcat)
  , (<>)
  )
import Data.Functor as X
  ( Functor(fmap)
  , ($>)
  , (<$>)
  , void
  )
import Data.Foldable
  ( Foldable
  , foldr
  , foldl'
  )
import Data.List as X
  ( or
  , and
  )
import Control.Applicative as X
  ( Applicative(pure, (<*>))
  , Alternative((<|>), some, many)
  )
import Data.Maybe as X
  ( Maybe(Just, Nothing)
  , maybe
  , fromMaybe
  , isJust
  , isNothing
  , catMaybes
  )
import Data.Either as X
  ( Either(Left, Right)
  )
import Control.Monad as X
  ( Monad(return, (>>=))
  )
import System.IO as X
  ( IO
  )
import Control.Concurrent.Chan as X
  ( Chan
  , newChan
  , readChan
  , writeChan
  , dupChan
  )
import Control.Concurrent.MVar as X
  ( MVar
  , newMVar
  , newEmptyMVar
  , readMVar
  , putMVar
  , takeMVar
  , modifyMVar
  )

done :: Monad m => m ()
done = return ()

infixr 0 $!
($!) :: (a -> b) -> a -> b
f $! x = let !vx = x in f vx

fi :: (Num b, Integral a) => a -> b
fi = fromIntegral
