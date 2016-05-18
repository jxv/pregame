{-# LANGUAGE BangPatterns #-}
module Pregame 
    ( module Control.Applicative 
    , module Control.Concurrent 
    , module Control.Concurrent.Chan 
    , module Control.Concurrent.STM 
    , module Control.Exception 
    , module Control.Parallel 
    , module Control.Parallel.Strategies 
    , module Control.Monad
    , module Control.Monad.IO.Class 
    , module Control.Lens 
    , module Data.Char
    , module Data.Default 
    , module Data.Functor 
    , module Data.Either 
    , module Data.Function 
    , module Data.Maybe 
    , module Data.Monoid
    , module Data.List
    , module Data.String
    , module Data.Tuple 
    , module Data.Tuple.All
    , module GHC.Base
    , module GHC.Enum 
    , module GHC.Num 
    , module GHC.Real 
    , module GHC.Float 
    , module GHC.Show 
    , module System.IO 
    , module System.IO.Error 
    , module Safe 
    , module Safe.Exact 
    , module System.Console.CmdArgs
    , Cont, ContT
    --
    , Error, ErrorT
    , IdentityT
    , State, StateT
    , ListT
    , MaybeT
    , Reader, ReaderT
    , RWS, RWST
    , Writer, WriterT
    , Map
    , Seq
    , Set
    , Text
    , Tree(..), Forest(..)
    , ByteString
    , Vector
    --
    , ($!)
    , fi
    , io
    , done
    , eq
    , ne
    , lt
    , lte
    , gt
    , gte
    ) where

import Control.Applicative 
import Control.Concurrent 
import Control.Concurrent.Chan 
import Control.Concurrent.STM 
import Control.Exception 
import Control.Parallel 
import Control.Parallel.Strategies 
import Control.Monad
import Control.Monad.IO.Class 
import Control.Lens 
import Data.Char
import Data.Default
import Data.Functor 
import Data.Either 
import Data.Function 
import Data.Maybe 
import Data.Monoid
import Data.List
import Data.String
import Data.Tuple 
import Data.Tuple.All hiding (only)
import GHC.Base hiding (coerce, lazy, Any)
import GHC.Enum 
import GHC.Num 
import GHC.Real 
import GHC.Float 
import GHC.Show 
import System.IO 
import System.IO.Error 
import Safe hiding (at)
import Safe.Exact
import System.Console.CmdArgs hiding (Default(..), enum, (+=))

import Control.Monad.Trans.Cont (Cont, ContT)
import Control.Monad.Trans.Error (Error, ErrorT)
import Control.Monad.Trans.Identity (IdentityT)
import Control.Monad.Trans.State (State, StateT)
import Control.Monad.Trans.List (ListT)
import Control.Monad.Trans.Maybe (MaybeT)
import Control.Monad.Trans.Reader (Reader, ReaderT)
import Control.Monad.Trans.RWS (RWS, RWST)
import Control.Monad.Trans.Writer (Writer, WriterT)
import Data.Map (Map)
import Data.Sequence (Seq)
import Data.Set (Set)
import Data.Text (Text)
import Data.Tree (Tree(..), Forest(..))
import Data.ByteString (ByteString)
import Data.Vector (Vector)


infixr 0 $!
($!) :: (a -> b) -> a -> b
f $! x = let !vx = x in f vx

done :: Monad m => m ()
done = return ()

fi :: (Num b, Integral a) => a -> b
fi = fromIntegral

io :: MonadIO m => IO a -> m a
io = liftIO

eq :: Eq a => a -> a -> Bool
eq = (==)

ne :: Eq a => a -> a -> Bool
ne = (/=)

lt :: Ord a => a -> a -> Bool
lt = (<)

lte :: Ord a => a -> a -> Bool
lte = (<=)

gt :: Ord a => a -> a -> Bool
gt = (>)

gte :: Ord a => a -> a -> Bool
gte = (>=)
