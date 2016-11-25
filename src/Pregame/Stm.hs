module Pregame.Stm
  ( module X
  , writeTVarIO
  , modifyTVarIO
  , modifyTVarIO'
  ) where

import Control.Concurrent.STM as X
  ( STM
  , TVar
  , atomically
  , newTVar
  , newTVarIO
  , readTVar
  , readTVarIO
  , writeTVar
  , modifyTVar
  , modifyTVar'
  , swapTVar
  )

import Pregame.GhcPrim

writeTVarIO :: TVar a -> a -> IO ()
writeTVarIO tvar a = atomically (writeTVar tvar a)

modifyTVarIO :: TVar a -> (a -> a) -> IO ()
modifyTVarIO tvar f = atomically (modifyTVar tvar f)

modifyTVarIO' :: TVar a -> (a -> a) -> IO ()
modifyTVarIO' tvar f = atomically (modifyTVar' tvar f)
