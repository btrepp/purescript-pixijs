module Graphics.Pixi.FFI.Container where

import Prelude
import Graphics.Pixi.FFI.Sprite (Sprite)
import Effect (Effect)
import Data.Function.Uncurried (Fn2,runFn2)

foreign import data Container :: Type

foreign import addChildImpl :: Fn2 Sprite Container (Effect Unit)
addChild :: Sprite -> Container -> Effect Unit
addChild sprite container = runFn2 addChildImpl sprite container