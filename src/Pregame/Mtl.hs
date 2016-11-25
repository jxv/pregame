module Pregame.Mtl
  ( module X
  , io
  ) where

import Control.Monad.Reader as X
  ( MonadReader
  , ask
  , reader
  , asks
  , ReaderT
  , runReaderT
  , mapReaderT
  , withReaderT
  , Reader
  , runReader
  , mapReader
  , withReader
  )
import Control.Monad.State as X
  ( MonadState
  , get
  , put
  , state
  , modify
  , modify'
  , gets
  , StateT
  , runStateT
  , evalStateT
  , execStateT
  , mapStateT
  , withStateT
  , State
  , runState
  , evalState
  , execState
  , mapState
  , withState
  )
import Control.Monad.Writer as X
  ( MonadWriter
  , writer
  , tell
  , WriterT
  , runWriterT
  , execWriterT
  , mapWriterT
  , Writer
  , runWriter
  , execWriter
  , mapWriter
  )
import Control.Monad.RWS as X
  ( MonadRWS
  , RWST
  , runRWST
  , evalRWST
  , execRWST
  , mapRWST
  , withRWST
  , RWS
  , rws
  , runRWS
  , evalRWS
  , execRWS
  , mapRWS
  , withRWS
  )
import Control.Monad.Trans as X
  ( MonadTrans
  , lift
  , MonadIO
  , liftIO
  )
import Control.Monad.List as X
  ( ListT
  , runListT
  , mapListT
  )
import Control.Monad.Except as X
  ( MonadError
  , throwError
  , catchError
  , ExceptT
  , runExceptT
  , mapExceptT
  , withExceptT
  , Except
  , runExcept
  , mapExcept
  , withExcept
  )
import Control.Monad.Cont as X
  ( MonadCont
  , callCC
  , ContT
  , runContT
  , mapContT
  , withContT
  , Cont
  , cont
  , runCont
  , mapCont
  , withCont
  )
import Pregame.GhcPrim

io :: MonadIO m => IO a -> m a
io = liftIO
