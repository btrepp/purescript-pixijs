module Graphics.Pixi.FFI.Sprite
    (Sprite,newSprite,setPositionX,setPositionY) where
import Prelude
import Data.Function.Uncurried (Fn1,Fn2, runFn1,runFn2)
import Effect (Effect)
import Graphics.Pixi.FF.Texture(Texture)

foreign import data Sprite ::Type    
foreign import newSpriteImpl :: Fn1 Texture (Effect Sprite)
newSprite :: Texture -> Effect Sprite
newSprite t = runFn1 newSpriteImpl t

foreign import setPositionXImpl :: Fn2 Sprite Number (Effect Unit)
setPositionX :: Sprite -> Number -> Effect Unit
setPositionX s n = runFn2 setPositionXImpl s n

foreign import setPositionYImpl :: Fn2 Sprite Number (Effect Unit) 
setPositionY :: Sprite -> Number -> Effect Unit
setPositionY s n = runFn2 setPositionYImpl s n