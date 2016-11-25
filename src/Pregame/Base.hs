{-# LANGUAGE BangPatterns #-}
module Pregame.Base
  ( module X
  , done
  , ($!)
  ) where

import Control.Category as X
  ( Category(id, (.))
  , (<<<)
  , (>>>)
  )
import Data.Function as X
  ( ($)
  , (&)
  , const
  , flip
  , fix
  )
import Data.Bool as X
  ( Bool(True, False)
  , (&&)
  , (||)
  , not
  , otherwise
  )
import Data.Bifunctor as X
  ( Bifunctor(bimap, first, second)
  )
import Data.Bits as X
  ( Bits
  )
import Data.Int as X
  ( Int8
  , Int16
  , Int32
  , Int64
  )
import Data.Word as X
  ( Word8
  , Word16
  , Word32
  , Word64
  )
import Data.String as X
  ( String
  , IsString
  )
import Foreign.C.Types as X
  ( CChar(CChar)
  , CSChar(CSChar)
  , CUChar(CUChar)
  , CShort(CShort)
  , CUShort(CUShort)
  , CInt(CInt)
  , CUInt(CUInt)
  , CLong(CLong)
  , CULong(CULong)
  , CPtrdiff(CPtrdiff)
  , CSize(CSize)
  , CWchar(CWchar)
  , CSigAtomic(CSigAtomic)
  , CLLong(CLLong)
  , CULLong(CULLong)
  , CIntPtr(CIntPtr)
  , CUIntPtr(CUIntPtr)
  , CIntMax(CIntMax)
  , CUIntMax(CUIntMax)
  , CClock(CClock)
  , CTime(CTime)
  , CUSeconds(CUSeconds)
  , CSUSeconds(CSUSeconds)
  , CFloat(CFloat)
  , CDouble(CDouble)
  , CFile
  , CFpos
  , CJmpBuf
  )
import Foreign.Ptr as X
  ( Ptr
  , nullPtr
  , castPtr
  , plusPtr
  , alignPtr
  , minusPtr
  , FunPtr
  , nullFunPtr
  , castFunPtr
  , castFunPtrToPtr
  , castPtrToFunPtr
  , IntPtr
  , ptrToIntPtr
  , intPtrToPtr
  , WordPtr
  , ptrToWordPtr
  , wordPtrToPtr
  )
import Foreign.Storable as X
  ( Storable
  , sizeOf
  , alignment
  , peekElemOff
  , pokeElemOff
  , peekByteOff
  , pokeByteOff
  , peek
  , poke
  )
import Data.Void as X
  ( Void
  )
import Data.Ord as X
  ( Ord
  , compare
  , (<=)
  , (>=)
  , (<)
  , (>)
  )
import Data.Proxy as X
  ( Proxy(Proxy)
  )
import GHC.Enum as X
  ( Enum
  , Bounded(minBound, maxBound)
  )
import GHC.Num as X
  ( Num(..)
  )
import Data.Fixed as X
  ( div'
  , mod'
  , divMod'
  , Fixed(MkFixed)
  , HasResolution
  )
import GHC.Real as X
  ( Real(..)
  , Integral(..)
  , Fractional(..)
  , Ratio(..)
  , (^)
  , (^^)
  , fromIntegral
  , realToFrac
  )
import Data.Eq as X
  ( Eq((==))
  )
import Data.Monoid as X
  ( Monoid
  , mempty
  , mappend
  , mconcat
  , Dual(Dual)
  , Endo(Endo)
  , All(All)
  , Any(Any)
  , Sum(Sum)
  , Product(Product)
  , First(First)
  , Last(Last)
  , Alt(Alt)
  )
import Data.Semigroup as X
  ( Semigroup
  , (<>)
  , sconcat
  )
import Data.Functor as X
  ( Functor
  , fmap
  , ($>)
  , (<$>)
  , void
  )
import Data.Foldable
  ( Foldable
  , foldMap
  , foldr
  , foldl'
  , null
  , length
  , elem
  , foldrM
  , foldlM
  , traverse_
  , for_
  , sequenceA_
  , asum
  , mapM_
  , forM_
  , sequence_
  , msum
  , concat
  , concatMap
  , and
  , or
  , any
  , all
  , notElem
  , find
  )
import Data.Tuple as X
  ( fst
  , snd
  )
import GHC.List as X
  ( map
  , (++)
  , filter
  , cycle
  , replicate
  , repeat
  , iterate
  )
import Data.List.NonEmpty as X
  ( NonEmpty((:|))
  , nonEmpty
  )
import Control.Applicative as X
  ( Applicative
  , pure
  , (<*>)
  , Alternative
  , (<|>)
  , some
  , many
  )
import Control.Exception as X
  ( SomeException
  , IOException
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
  , either
  , lefts
  , rights
  , isLeft
  , isRight
  , partitionEithers
  )
import Data.Traversable as X
  ( Traversable
  , traverse
  , sequenceA
  , mapM
  , sequence
  , for
  , forM
  , mapAccumL
  , mapAccumR
  )
import Control.Monad as X
  ( Monad
  , return
  , (>>=)
  , MonadPlus
  , mzero
  , mplus
  , join
  , (>>)
  , (=<<)
  , (>=>)
  , (<=<)
  , forever
  , guard
  , when
  , unless
  )
import Control.Monad.Fix as X
  ( MonadFix
  , mfix
  )
import GHC.IORef as X
  ( IORef
  , newIORef
  , readIORef
  , writeIORef
  , atomicModifyIORef
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
import Control.Concurrent.Chan as X
  ( Chan
  , newChan
  , readChan
  , writeChan
  , dupChan
  )
import System.Posix.Types
  ( CDev(CDev)
  , CIno(CIno)
  , CMode(CMode)
  , COff(COff)
  , CPid(CPid)
  , CSsize(CSsize)
  , CGid(CGid)
  , CNlink(CNlink)
  , CUid(CUid)
  , CCc(CCc)
  , CSpeed(CSpeed)
  , CTcflag(CTcflag)
  , CRLim(CRLim)
  , Fd(Fd)
  , LinkCount
  , UserID
  , GroupID
  , ByteCount
  , ClockTick
  , EpochTime
  , FileOffset
  , ProcessID
  , DeviceID
  , FileID
  , FileMode
  , Limit
  )
import System.IO as X
  ( fixIO
  , FilePath
  , Handle
  , stdin
  , stdout
  , stderr
  , withFile
  , openFile
  , IOMode(ReadMode, WriteMode, AppendMode, ReadWriteMode)
  , hClose
  , hIsOpen
  , hIsClosed
  , hIsReadable
  , hIsWritable
  )
import Text.Read as X
  ( Read
  )
import Text.Show as X
  ( Show(show)
  )
import GHC.Generics as X
  ( Generic
  )

done :: Monad m => m ()
done = return ()

infixr 0 $!
($!) :: (a -> b) -> a -> b
x $! y = let !y' = y in x y'
