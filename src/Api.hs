{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeOperators #-}

module Api where

import Control.Monad.IO.Class
import Data.Kind

-- client api
-- call :: a -> (TMVar b, Channel a) -> m b
-- cast :: a -> Channel a -> m ()

-- outputTMVar :: TMVar b

-- input channel :: Channel a
-- data Wrap = OnlyVal a | ValAndTMVar a (TMVar b)

-- server api
-- handleCall :: (a, TMVar b) -> state -> m state

-- handleCast :: a -> state -> m state

-- Inc Int
-- Dec Int

-- call (Inc 1)

-- Input [Int, Bool, String]
-- Output [String, Result]

data Command

data Command1

data Command2

data Command3

data Command4

data Command5

-- data IOI (call :: [(Type, Type)]) (cast :: [Type])
data IOI (call :: [(Type, Type)])

data f :+: g
  = L f
  | R g

infixr 4 :+:

class MonadIO m => Api t (m :: Type -> Type)

callCommand ::
  Api
    ( (Command, Int)
        :+: (Command1, Int)
        :+: (Command2, Int)
    )
    m =>
  Command ->
  m ()
callCommand = undefined
