module Graphics.Pixi.FF.Texture 
        (Texture,newTexture) where
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)
import Graphics.PIXI.FFI.Rectangle (Rectangle)
import Graphics.Pixi.FFI.BaseTexture (Image)
foreign import data Texture :: Type

foreign import newTextureImpl :: Fn2 Image Rectangle (Effect Texture)
newTexture :: Image -> Rectangle -> Effect Texture
newTexture image rect = runFn2 newTextureImpl image rect