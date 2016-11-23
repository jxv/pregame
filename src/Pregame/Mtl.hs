module Pregame.Mtl
  ( module X
  , io
  ) where

import Control.Monad.Reader as X
  ( MonadReader(ask)
  , ReaderT(runReaderT)
  , Reader
  , runReader
  , asks
  )
import Control.Monad.State as X
  ( MonadState(get, put)
  , StateT(runStateT)
  , State
  , runState
  , gets
  )
import Control.Monad.Writer as X
  ( MonadWriter(tell)
  , WriterT(runWriterT)
  , Writer
  , runWriter
  )
import Control.Monad.Writer as X
  ( MonadRWS
  , RWST(runRWST)
  , RWS
  , runRWS
  )
import Control.Monad.Trans as X
  ( MonadTrans(lift)
  , MonadIO(liftIO)
  )

io :: MonadIO m => IO a -> m a
io = liftIO
