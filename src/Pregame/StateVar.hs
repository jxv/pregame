module Pregame.StateVar
  ( module X
  , getStateVar
  , setStateVar
  ) where

import Pregame.Mtl (MonadIO)

import Data.StateVar as X
  ( HasGetter
  , GettableStateVar
  , makeGettableStateVar
  , HasSetter(($=))
  , ($=!)
  , SettableStateVar
  , makeSettableStateVar
  , HasUpdate(($~), ($~!))
  , StateVar
  , makeStateVar
  , mapStateVar
  )
import Data.StateVar (get, ($=))

getStateVar :: (HasGetter t a, MonadIO m) => t -> m a
getStateVar = get

setStateVar :: (HasSetter t a, MonadIO m) => t -> a -> m ()
setStateVar = ($=)
