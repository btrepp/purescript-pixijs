module Graphics.Pixi.FFI.BaseTexture where
import Effect (Effect)
import Data.Function.Uncurried(Fn1,runFn1)
foreign import data Image :: Type


foreign import fromImageImpl :: Fn1 String (Effect Image)
fromImage :: String -> Effect Image
fromImage a = runFn1 fromImageImpl a